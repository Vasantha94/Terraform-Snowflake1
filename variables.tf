variable "snowflake_account" {
  description = "Snowflake account name"
}

variable "snowflake_user" {
  description = "Snowflake user name"
}
variable "snowflake_warehouse" {
  description = "Snowflake user name"
}
variable "snowflake_role" {
  description = "Snowflake user name"
}

variable "snowflake_password" {
  description = "Snowflake user password"
}
variable "snowflake_region" {
  description = "Name of the Snowflake role"
}
variable "warehouse_size" {
  description = "The size of the Snowflake warehouse"
  default     = "X-Small"  
}

variable "database_name" {
  description = "Name of the Snowflake database"
  default     = "my_database"  # Default name, change as needed
}

variable "schema_name" {
  description = "Name of the schema within the database"
  default     = "my_schema"  # Default name, change as needed
}

variable "table_name" {
  description = "Name of the table"
}
variable "columns" {
  description = "List of columns for the table"
  type        = list(object({
    name     = string
    type     = string
    nullable = bool
  }))
}
