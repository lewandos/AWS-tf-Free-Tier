variable "aws_region" {
  default = "eu-central-1"
  type = string
}

variable "environment" {
  default = "development"
  type = string
}

variable "name" {
  default = "lewandos"
  type = string
}

variable "tags" {
  default = "development"
  type = string
}

variable "access_key" {
  default = ""
  type    = string
  sensitive = true
}

variable "access_secret" {
  default = ""
  type    = string
  sensitive = true
}

variable "notification_email" {
  default = ""
  description = "Email for notifications"
  type = string
}

# activate notifications

variable "create_notification" {
  default = false
  description = "activate notifications"
  type = bool
}

variable "create_glue_notification" {
  type    = bool
  default = false
}

variable "create_dataexchange_notification" {
  type    = bool
  default = false
}

# AWS types
variable "always_free" {
  description = "Activate the type"
  default = false
  type = bool
}

variable "trials" {
  description = "Activate the type"
  default = false
  type = bool
}

# AWS categories
variable "category-analytics" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-application_integration" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-artificial_intelligence" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-business_productivity" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-compute" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-containers" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-customer_engagement" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-databases" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-developer_tools" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-end_user_computing" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-frontend_web_mobile" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-game_tech" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-internet_of_things" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-machine_learning" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-management_governance" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-media_services" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-migration_transfer" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-networking_content_delivery" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-robotics" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-security_identity_compliance" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-serverless" {
  description = "Activate the category"
  default = false
  type = bool
}

variable "category-storage" {
  description = "Activate the category"
  default = false
  type = bool
}