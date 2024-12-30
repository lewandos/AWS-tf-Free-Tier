# AWS Terraform Free Tier Restriction Policy

This repository provides a base IAM policy and a Terraform configuration that aims to restrict an AWS user (or role) to only Free Tier–eligible services. By attaching this policy to an IAM entity, you can reduce the risk of accidentally using services outside the Free Tier.

> **Disclaimer**  
> While this policy attempts to restrict usage to Free Tier–eligible services, it **cannot guarantee** zero costs. AWS often charges when usage exceeds free thresholds, and some services do not have granular IAM permissions that distinguish free vs. paid tiers. Always monitor your AWS billing to avoid unexpected charges.

## Table of Contents

- [Overview](#overview)  
- [Security Notice](#security-notice)  
- [Repository Structure](#repository-structure)  
- [Prerequisites](#prerequisites)  
- [Usage](#usage)  
  - [Cloning the Repository](#cloning-the-repository)  
  - [Initialize and Apply Terraform](#initialize-and-apply-terraform)  
- [Policy Overview](#policy-overview)  
- [Customizing the Policy](#customizing-the-policy)  
- [Limitations](#limitations)  
- [Future Features](#future-features)  
- [License](#license)

---

## Overview

**Goal**: Provide a strict IAM policy that allows usage of AWS services generally within the Free Tier scope, preventing access to services or actions that are typically outside the free offering.

**Why?**:
- **Cost Control**: Ideal for personal projects or demos where you want to keep costs at zero.  
- **Learning**: Allows new users to experiment with Terraform on AWS without fear of incurring large bills.

## Security Notice

When you sign up for a free AWS account, you initially have **root account credentials**. Best practice is **never** to use your root account for day-to-day tasks. Instead, create a dedicated IAM user with limited privileges—and attach the “Free Tier Restriction” policy to that user. Doing so helps protect your environment, avoid misconfigurations, and mitigate accidental charges. More information can be found in the [AWS Docs on root account usage](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials).

## Repository Structure

```
AWS-tf-Free-Tier/
├── terraform               # terraform folder
      ├── config            # Terraform config for creating/attaching the policy
      ├── policies          # Folder with all the policies by AWS category
      ├── locals.tf         # policy file read and transfer
      ├── outputs.tf        # outputs for verification
      ├── policy.tf         # Policy mapping file
      ├── providers.tf      # tf provider for AWS
      ├── variables.tf      # Terraform variable decleration
      └── README.md         # Terraform readme
├── license.md              # license file
└── README.md               # You're reading it now!
```

## Prerequisites

1. **AWS Account**: With [AWS credentials](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html) configured locally.  
2. **Terraform**: Use [tfenv](https://github.com/tfutils/tfenv) or download directly from [terraform.io](https://www.terraform.io/downloads).  
3. **IAM Permissions**: You must have privileges to create or manage IAM policies in your AWS account.

## Usage

### Cloning the Repository

```bash
git clone https://github.com/lewandos/AWS-tf-Free-Tier.git
cd AWS-tf-Free-Tier/terraform
```

### Initialize and Apply Terraform

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```
2. **Review Changes**:
   ```bash
   terraform plan
   ```
   Examine the output to see which IAM resources will be created or modified.
3. **Apply Configuration**:
   ```bash
   terraform apply
   ```
   When prompted, type `yes`. This will:
   - Create an IAM policy based on the setting used.
   - (Optionally) Attach the policy to a user, group, or role specified in `policy.tf`.

## Policy Overview

- **Policy**: Defined in the `policy` folder.  
- **Scope**: Targets commonly used AWS services that are known to have Free Tier offerings (e.g., S3, Lambda, EC2 micro instances) as well as 12 month free tier offers.  
- **Actions**: Denies (or does not grant) actions related to AWS services that are not included in the Free Tier or that could easily incur costs.

## Customizing the Policy

1. **Edit the JSON**: Modify any file in the `policy` folder to add, remove, or refine permissions.  
2. **Re-apply**: After edits, run:
   ```bash
   terraform plan
   terraform apply
   ```
   Terraform will update the policy accordingly.

> **Tip**  
> Check AWS documentation for the latest Free Tier details, as offerings and thresholds may change over time.

## Limitations

- **Not a Billing Guardrail**: Even if access is restricted to typically Free Tier–eligible services, exceeding free usage thresholds can still incur charges.  
- **AWS Limitations**: Some actions and services do not neatly separate Free Tier operations from paid operations at the IAM policy level.  
- **Shared Responsibility**: Users must still monitor their usage in the [AWS Billing console](https://console.aws.amazon.com/billing/home) to ensure they remain within the Free Tier.

## Future Features

1. **On/Off Policy by Category**  
   - Implement a mechanism to toggle policy statements for specific AWS service categories (e.g., compute, storage, database) without editing the JSON directly. This would allow quick deactivation or activation of permissions for entire categories.

2. **Notifications on Usage Threshold**  
   - Integrate with AWS Budgets or CloudWatch to send alerts (e.g., via SNS or email) when you approach your Free Tier limits. This makes it easier to prevent unexpected charges by staying aware of usage spikes. Actually tricky because of free tier limitations. 

3. **Cleanup**  
   - Provide a cleanup and test structure for the terraform script

## License

This project is licensed under the [MIT License](LICENSE). Feel free to modify and distribute as needed.

---

**Feedback**  
If you have any suggestions or discover ways to improve this policy, please open an issue or submit a pull request!
