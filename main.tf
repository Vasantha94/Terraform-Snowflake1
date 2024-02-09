terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 0.73.0"
    }
  }
}

provider "snowflake" {
  account   = var.snowflake_account
  username  = var.snowflake_user
  password  = var.snowflake_password
  role      = var.snowflake_role
  warehouse = var.snowflake_warehouse
  region    = var.snowflake_region
}

resource "snowflake_warehouse" "myfirstwar1" {
  name           = "myfirstwar1_wh_s"
  comment        = "good"
  warehouse_size = var.warehouse_size
}

resource "snowflake_database" "myfirstdb1" {
  name    = var.database_name
  comment = "DB1"
}

resource "snowflake_schema" "myfirstsc1" {
  name     = "my_first_schema"
  database = snowflake_database.myfirstdb1.name
}

resource "snowflake_table" "vasantha_tf_table" {
  name     = var.table_name
  database = snowflake_database.myfirstdb1.name
  schema   = snowflake_schema.myfirstsc1.name

  dynamic "column" {
    for_each = var.columns
    content {
      name     = column.value.name
      type     = column.value.type
      nullable = column.value.nullable
    }
  }
}