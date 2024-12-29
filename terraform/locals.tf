locals {
  availability_zones = ["${var.aws_region}a", "${var.aws_region}b"]

  tags = {
    Environment = var.environment
    CostCentre  = "1234"
    Project     = "TerraformTest"
    Department  = "IT"
  }

  ##### always free ######
  # Read the file contents as a string
  raw_json_deny = file("policies/iam_deny_all.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_deny = jsondecode(local.raw_json_deny)

  # Read the file contents as a string
  raw_json_analytics = file("policies/iam_analytics.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_analytics = jsondecode(local.raw_json_analytics)

  # add into one policy
  analytics_items = concat(
    local.decoded_deny["Statement"],
    [ local.decoded_analytics ]
  )

  # recreate proper policy
  analytics_config = {
    // Merge all other keys from the original JSON
    for k, v in local.decoded_deny :
    k => v
  }
  // Override the "items" key with the updated list
  analytics_config_items = merge(
    local.analytics_config,
    { "Statement" = local.analytics_items }
  )

  # Read the file contents as a string
  raw_json_application_integration = file("policies/iam_application_integration.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_application_integration = jsondecode(local.raw_json_application_integration)

  # add into one policy
  application_integration_items = concat(
    local.analytics_config_items["Statement"],
    [ local.decoded_application_integration ]
  )

  # recreate proper policy
  application_integration_config = {
    // Merge all other keys from the original JSON
    for k, v in local.application_integration_items :
    k => v
  }
  // Override the "items" key with the updated list
  application_integration_config_items = merge(
    local.application_integration_config,
    { "Statement" = local.application_integration_items }
  )

  # Read the file contents as a string
  raw_json_artificial_intelligence = file("policies/iam_artificial_intelligence.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_artificial_intelligence = jsondecode(local.raw_json_artificial_intelligence)

  # add into one policy
  artificial_intelligence_items = concat(
    local.application_integration_config_items["Statement"],
    [ local.decoded_artificial_intelligence ]
  )

  # recreate proper policy
  artificial_intelligence_config = {
    // Merge all other keys from the original JSON
    for k, v in local.artificial_intelligence_items :
    k => v
  }
  // Override the "items" key with the updated list
  artificial_intelligence_config_items = merge(
    local.artificial_intelligence_config,
    { "Statement" = local.artificial_intelligence_items }
  )

  # Read the file contents as a string
  raw_json_business_productivity = file("policies/iam_business_productivity.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_business_productivity = jsondecode(local.raw_json_business_productivity)

  # add into one policy
  business_productivity_items = concat(
    local.artificial_intelligence_config_items["Statement"],
    [ local.decoded_business_productivity ]
  )

  # recreate proper policy
  business_productivity_config = {
    // Merge all other keys from the original JSON
    for k, v in local.business_productivity_items :
    k => v
  }
  // Override the "items" key with the updated list
  business_productivity_config_items = merge(
    local.business_productivity_config,
    { "Statement" = local.business_productivity_items }
  )

  # Read the file contents as a string
  raw_json_compute = file("policies/iam_compute.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_compute = jsondecode(local.raw_json_compute)

  # add into one policy
  compute_items = concat(
    local.business_productivity_config_items["Statement"],
    [ local.decoded_compute ]
  )

  # recreate proper policy
  compute_config = {
    // Merge all other keys from the original JSON
    for k, v in local.compute_items :
    k => v
  }
  // Override the "items" key with the updated list
  compute_config_items = merge(
    local.compute_config,
    { "Statement" = local.compute_items }
  )

  # Read the file contents as a string
  raw_json_customer_engagement = file("policies/iam_customer_engagement.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_customer_engagement = jsondecode(local.raw_json_customer_engagement)

  # add into one policy
  customer_engagement_items = concat(
    local.compute_config_items["Statement"],
    [ local.decoded_customer_engagement ]
  )

  # recreate proper policy
  customer_engagement_config = {
    // Merge all other keys from the original JSON
    for k, v in local.customer_engagement_items :
    k => v
  }
  // Override the "items" key with the updated list
  customer_engagement_config_items = merge(
    local.customer_engagement_config,
    { "Statement" = local.customer_engagement_items }
  )

  # Read the file contents as a string
  raw_json_databases = file("policies/iam_databases.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_databases = jsondecode(local.raw_json_databases)

  # add into one policy
  databases_items = concat(
    local.customer_engagement_config_items["Statement"],
    [ local.decoded_databases ]
  )

  # recreate proper policy
  databases_config = {
    // Merge all other keys from the original JSON
    for k, v in local.databases_items :
    k => v
  }
  // Override the "items" key with the updated list
  databases_config_items = merge(
    local.databases_config,
    { "Statement" = local.databases_items }
  )

  # Read the file contents as a string
  raw_json_developer_tools = file("policies/iam_developer_tools.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_developer_tools = jsondecode(local.raw_json_developer_tools)

  # add into one policy
  developer_tools_items = concat(
    local.databases_config_items["Statement"],
    [ local.decoded_developer_tools ]
  )

  # recreate proper policy
  developer_tools_config = {
    // Merge all other keys from the original JSON
    for k, v in local.developer_tools_items :
    k => v
  }
  // Override the "items" key with the updated list
  developer_tools_config_items = merge(
    local.developer_tools_config,
    { "Statement" = local.developer_tools_items }
  )

  # Read the file contents as a string
  raw_json_frontend_web_mobile = file("policies/iam_frontend_web_mobile.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_frontend_web_mobile = jsondecode(local.raw_json_frontend_web_mobile)

  # add into one policy
  frontend_web_mobile_items = concat(
    local.developer_tools_config_items["Statement"],
    [ local.decoded_frontend_web_mobile ]
  )

  # recreate proper policy
  frontend_web_mobile_config = {
    // Merge all other keys from the original JSON
    for k, v in local.frontend_web_mobile_items :
    k => v
  }
  // Override the "items" key with the updated list
  frontend_web_mobile_config_items = merge(
    local.frontend_web_mobile_config,
    { "Statement" = local.frontend_web_mobile_items }
  )

  # Read the file contents as a string
  raw_json_game_tech = file("policies/iam_game_tech.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_game_tech = jsondecode(local.raw_json_game_tech)

  # add into one policy
  game_tech_items = concat(
    local.frontend_web_mobile_config_items["Statement"],
    [ local.decoded_game_tech ]
  )

  # recreate proper policy
  game_tech_config = {
    // Merge all other keys from the original JSON
    for k, v in local.game_tech_items :
    k => v
  }
  // Override the "items" key with the updated list
  game_tech_config_items = merge(
    local.game_tech_config,
    { "Statement" = local.game_tech_items }
  )

  # Read the file contents as a string
  raw_json_internet_of_things = file("policies/iam_internet_of_things.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_internet_of_things = jsondecode(local.raw_json_internet_of_things)

  # add into one policy
  internet_of_things_items = concat(
    local.game_tech_config_items["Statement"],
    [ local.decoded_internet_of_things ]
  )

  # recreate proper policy
  internet_of_things_config = {
    // Merge all other keys from the original JSON
    for k, v in local.internet_of_things_items :
    k => v
  }
  // Override the "items" key with the updated list
  internet_of_things_config_items = merge(
    local.internet_of_things_config,
    { "Statement" = local.internet_of_things_items }
  )

  # Read the file contents as a string
  raw_json_management_governance = file("policies/iam_management_governance.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_management_governance = jsondecode(local.raw_json_management_governance)

  # add into one policy
  management_governance_items = concat(
    local.internet_of_things_config_items["Statement"],
    [ local.decoded_management_governance ]
  )

  # recreate proper policy
  management_governance_config = {
    // Merge all other keys from the original JSON
    for k, v in local.management_governance_items :
    k => v
  }
  // Override the "items" key with the updated list
  management_governance_config_items = merge(
    local.management_governance_config,
    { "Statement" = local.management_governance_items }
  )

  # Read the file contents as a string
  raw_json_media_services = file("policies/iam_media_services.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_media_services = jsondecode(local.raw_json_media_services)

  # add into one policy
  media_services_items = concat(
    local.management_governance_config_items["Statement"],
    [ local.decoded_media_services ]
  )

  # recreate proper policy
  media_services_config = {
    // Merge all other keys from the original JSON
    for k, v in local.media_services_items :
    k => v
  }
  // Override the "items" key with the updated list
  media_services_config_items = merge(
    local.media_services_config,
    { "Statement" = local.media_services_items }
  )

  # Read the file contents as a string
  raw_json_migration_transfer = file("policies/iam_migration_transfer.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_migration_transfer = jsondecode(local.raw_json_migration_transfer)

  # add into one policy
  migration_transfer_items = concat(
    local.media_services_config_items["Statement"],
    [ local.decoded_migration_transfer ]
  )

  # recreate proper policy
  migration_transfer_config = {
    // Merge all other keys from the original JSON
    for k, v in local.migration_transfer_items :
    k => v
  }
  // Override the "items" key with the updated list
  migration_transfer_config_items = merge(
    local.migration_transfer_config,
    { "Statement" = local.migration_transfer_items }
  )

  # Read the file contents as a string
  raw_json_networking_content_delivery = file("policies/iam_networking_content_delivery.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_networking_content_delivery = jsondecode(local.raw_json_networking_content_delivery)

  # add into one policy
  networking_content_delivery_items = concat(
    local.migration_transfer_config_items["Statement"],
    [ local.decoded_networking_content_delivery ]
  )

  # recreate proper policy
  networking_content_delivery_config = {
    // Merge all other keys from the original JSON
    for k, v in local.networking_content_delivery_items :
    k => v
  }
  // Override the "items" key with the updated list
  networking_content_delivery_config_items = merge(
    local.networking_content_delivery_config,
    { "Statement" = local.networking_content_delivery_items }
  )

  # Read the file contents as a string
  raw_json_security_identity_compliance = file("policies/iam_security_identity_compliance.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_security_identity_compliance = jsondecode(local.raw_json_security_identity_compliance)

  # add into one policy
 security_identity_compliance_items = concat(
    local.networking_content_delivery_config_items["Statement"],
    [ local.decoded_security_identity_compliance ]
  )

  # recreate proper policy
 security_identity_compliance_config = {
    // Merge all other keys from the original JSON
    for k, v in local.security_identity_compliance_items :
    k => v
  }
  // Override the "items" key with the updated list
 security_identity_compliance_config_items = merge(
    local.security_identity_compliance_config,
    { "Statement" = local.security_identity_compliance_items }
  )

  # Read the file contents as a string
  raw_json_serverless = file("policies/iam_serverless.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_serverless = jsondecode(local.raw_json_serverless)

  # add into one policy
  serverless_items = concat(
    local.security_identity_compliance_config_items["Statement"],
    [ local.decoded_serverless ]
  )

  # recreate proper policy
  serverless_config = {
    // Merge all other keys from the original JSON
    for k, v in local.serverless_items :
    k => v
  }
  // Override the "items" key with the updated list
  serverless_config_items = merge(
    local.serverless_config,
    { "Statement" = local.serverless_items }
  )

  # Read the file contents as a string
  raw_json_storage = file("policies/iam_storage.json")
  # Decode the JSON string into a Terraform object (map, list, etc.)
  decoded_storage = jsondecode(local.raw_json_storage)

  # add into one policy
  overall_items = concat(
    local.serverless_config_items["Statement"],
    [ local.decoded_storage ]
  )

  # recreate proper policy
  storage_config = {
    // Merge all other keys from the original JSON
    for k, v in local.overall_items :
    k => v
  }
  // Override the "items" key with the updated list
  overall_config_items = merge(
    local.decoded_deny,
    { "Statement" = local.overall_items }
  )

  final_json = jsonencode(local.overall_config_items)


}








