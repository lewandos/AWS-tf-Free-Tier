# Create the policy
# free tier services source: https://aws.amazon.com/free

###############################################################################
# Add policies of different categories
###############################################################################
# default deny
resource "aws_iam_policy" "free_tier_policy" {
  name        = "free-tier-policy"
  description = "deny except free tier policy"
  policy      = jsonencode(local.overall_config_items)
}
# Attach the policy
resource "aws_iam_role_policy_attachment" "deny_attachment" {
  policy_arn = aws_iam_policy.free_tier_policy.arn
  role       = aws_iam_role.free_tier.name
}

resource "aws_iam_group_policy_attachment" "free_tier_attach" {
  group = aws_iam_group.group.name
  policy_arn = aws_iam_policy.free_tier_policy.arn
}

###############################################################################
# Create the IAM User
###############################################################################
resource "aws_iam_user" "user" {
  name = var.user_name
}

resource "aws_iam_group" "group" {
  name = var.group_name
}

resource "aws_iam_user_group_membership" "testuser" {
  groups = [aws_iam_group.group.name]
  user = aws_iam_user.user.name
}

###############################################################################
# Create a trust policy for the role that trusts the user
###############################################################################
data "aws_iam_policy_document" "assume_role_trust_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    # Principal is the user we want to allow to assume the role
    principals {
      type        = "AWS"
      identifiers = [
        aws_iam_user.user.arn
      ]
    }

    # Optional: You could add a condition if you want extra restrictions (e.g., MFA)
    # condition {
    #   test     = "Bool"
    #   variable = "aws:MultiFactorAuthPresent"
    #   values   = ["true"]
    # }
  }
}

###############################################################################
# Create the IAM Role, referencing the trust policy
###############################################################################
resource "aws_iam_role" "free_tier" {
  name               = "free-tier-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_trust_policy.json
}

###############################################################################
# Attach a permission policy to the Role (e.g., ReadOnlyAccess)
###############################################################################
resource "aws_iam_role_policy_attachment" "test_role_attachment" {
  role       = aws_iam_role.free_tier.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

###############################################################################
# Give the user the ability to assume the Role
#    - We create a policy that allows "sts:AssumeRole" on the test_role
###############################################################################
data "aws_iam_policy_document" "user_assume_test_role" {
  statement {
    effect    = "Allow"
    actions   = ["sts:AssumeRole"]
    resources = [
      aws_iam_role.free_tier.arn
    ]
  }
}

resource "aws_iam_policy" "assume_test_role_policy" {
  name        = "allow-user-to-assume-test-role"
  description = "Policy that allows user to sts:AssumeRole on test_role"
  policy      = data.aws_iam_policy_document.user_assume_test_role.json
}

###############################################################################
# Attach the assume-role policy to the user
###############################################################################
resource "aws_iam_user_policy_attachment" "user_assume_test_role_attachment" {
  user = aws_iam_user.user.name
  policy_arn = aws_iam_policy.assume_test_role_policy.arn
}
