## Requirements

| Name                                                    | Version |
|---------------------------------------------------------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0  |

## Providers

| Name                                              | Version |
|---------------------------------------------------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.82.2  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                      | Type        |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|
| [aws_cloudwatch_event_rule.daily_dataexchange_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule)                    | resource    |
| [aws_cloudwatch_event_rule.daily_glue_counter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule)                         | resource    |
| [aws_cloudwatch_event_target.daily_dataexchange_lambda_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target)       | resource    |
| [aws_cloudwatch_event_target.daily_glue_counter_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target)              | resource    |
| [aws_cloudwatch_metric_alarm.dataexchange_subscription_count_alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm)  | resource    |
| [aws_cloudwatch_metric_alarm.glue_object_alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm)                      | resource    |
| [aws_cloudwatch_metric_alarm.s3_object_count_alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm)                  | resource    |
| [aws_iam_group.test_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group)                                                         | resource    |
| [aws_iam_group_policy_attachment.free_tier_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment)               | resource    |
| [aws_iam_policy.assume_test_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                          | resource    |
| [aws_iam_policy.dataexchange_lambda_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                       | resource    |
| [aws_iam_policy.free_tier_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                                 | resource    |
| [aws_iam_policy.glue_lambda_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                               | resource    |
| [aws_iam_policy.lambda_logging_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)                                            | resource    |
| [aws_iam_role.dataexchange_lambda_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                             | resource    |
| [aws_iam_role.free_tier](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                            | resource    |
| [aws_iam_role.glue_lambda_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role)                                                     | resource    |
| [aws_iam_role_policy_attachment.attach_glue_lambda_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)        | resource    |
| [aws_iam_role_policy_attachment.attach_lambda_logging_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)     | resource    |
| [aws_iam_role_policy_attachment.deny_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)                  | resource    |
| [aws_iam_role_policy_attachment.lambda_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)         | resource    |
| [aws_iam_role_policy_attachment.test_role_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment)             | resource    |
| [aws_iam_user.test_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user)                                                            | resource    |
| [aws_iam_user_group_membership.add_testuser](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership)                       | resource    |
| [aws_iam_user_policy_attachment.user_assume_test_role_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource    |
| [aws_lambda_function.dataexchange_counter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function)                                   | resource    |
| [aws_lambda_function.glue_object_counter](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function)                                    | resource    |
| [aws_lambda_permission.allow_eventbridge_dataexchange](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission)                     | resource    |
| [aws_lambda_permission.allow_eventbridge_glue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission)                             | resource    |
| [aws_sns_topic.usage_notification_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic)                                           | resource    |
| [aws_sns_topic_subscription.email_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription)                       | resource    |
| [aws_iam_policy_document.assume_role_trust_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                    | data source |
| [aws_iam_policy_document.lambda_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                          | data source |
| [aws_iam_policy_document.lambda_logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                              | data source |
| [aws_iam_policy_document.lambda_policy_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                           | data source |
| [aws_iam_policy_document.lambda_trust](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                                | data source |
| [aws_iam_policy_document.user_assume_test_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document)                       | data source |

## Inputs

| Name                                                                                                                                                  | Description             | Type     | Default          | Required |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|----------|------------------|:--------:|
| <a name="input_always_free"></a> [always\_free](#input\_always\_free)                                                                                 | Activate the type       | `bool`   | `false`          |    no    |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region)                                                                                    | n/a                     | `string` | `"eu-central-1"` |    no    |
| <a name="input_category-analytics"></a> [category-analytics](#input\_category-analytics)                                                              | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-application_integration"></a> [category-application\_integration](#input\_category-application\_integration)                  | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-artificial_intelligence"></a> [category-artificial\_intelligence](#input\_category-artificial\_intelligence)                  | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-business_productivity"></a> [category-business\_productivity](#input\_category-business\_productivity)                        | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-compute"></a> [category-compute](#input\_category-compute)                                                                    | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-containers"></a> [category-containers](#input\_category-containers)                                                           | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-customer_engagement"></a> [category-customer\_engagement](#input\_category-customer\_engagement)                              | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-databases"></a> [category-databases](#input\_category-databases)                                                              | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-developer_tools"></a> [category-developer\_tools](#input\_category-developer\_tools)                                          | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-end_user_computing"></a> [category-end\_user\_computing](#input\_category-end\_user\_computing)                               | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-frontend_web_mobile"></a> [category-frontend\_web\_mobile](#input\_category-frontend\_web\_mobile)                            | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-game_tech"></a> [category-game\_tech](#input\_category-game\_tech)                                                            | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-internet_of_things"></a> [category-internet\_of\_things](#input\_category-internet\_of\_things)                               | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-machine_learning"></a> [category-machine\_learning](#input\_category-machine\_learning)                                       | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-management_governance"></a> [category-management\_governance](#input\_category-management\_governance)                        | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-media_services"></a> [category-media\_services](#input\_category-media\_services)                                             | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-migration_transfer"></a> [category-migration\_transfer](#input\_category-migration\_transfer)                                 | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-networking_content_delivery"></a> [category-networking\_content\_delivery](#input\_category-networking\_content\_delivery)    | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-robotics"></a> [category-robotics](#input\_category-robotics)                                                                 | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-security_identity_compliance"></a> [category-security\_identity\_compliance](#input\_category-security\_identity\_compliance) | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-serverless"></a> [category-serverless](#input\_category-serverless)                                                           | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_category-storage"></a> [category-storage](#input\_category-storage)                                                                    | Activate the category   | `bool`   | `false`          |    no    |
| <a name="input_create_dataexchange_notification"></a> [create\_dataexchange\_notification](#input\_create\_dataexchange\_notification)                | n/a                     | `bool`   | `false`          |    no    |
| <a name="input_create_glue_notification"></a> [create\_glue\_notification](#input\_create\_glue\_notification)                                        | n/a                     | `bool`   | `false`          |    no    |
| <a name="input_create_notification"></a> [create\_notification](#input\_create\_notification)                                                         | activate notifications  | `bool`   | `false`          |    no    |
| <a name="input_environment"></a> [environment](#input\_environment)                                                                                   | n/a                     | `string` | `"development"`  |    no    |
| <a name="input_name"></a> [name](#input\_name)                                                                                                        | n/a                     | `string` | `"lewandos"`     |    no    |
| <a name="input_notification_email"></a> [notification\_email](#input\_notification\_email)                                                            | Email for notifications | `string` | `""`             |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                                        | n/a                     | `string` | `"development"`  |    no    |
| <a name="input_trials"></a> [trials](#input\_trials)                                                                                                  | Activate the type       | `bool`   | `false`          |    no    |

## Outputs

| Name                                                                 | Description |
|----------------------------------------------------------------------|-------------|
| <a name="output_final_json"></a> [final\_json](#output\_final\_json) | n/a         |