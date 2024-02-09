snowflake_account   = "acc"
snowflake_user      = "usr"
snowflake_password  = "pwd@94"
snowflake_role      = "ACCOUNTADMIN"
snowflake_warehouse = "COMPUTE_WH"
snowflake_region    =  "us-west-2"
warehouse_size = "small"
database_name = "snowflakedb"
schema_name = "schema1"
table_name = "firsttable"

columns = [
  {
    name     = "name"
    type     = "VARCHAR(50)"
    nullable = true
  },
  {
    name     = "id"
    type     = "INT"
    nullable = true
  },
  {
    name     = "days"
    type     = "INT"
    nullable = true
  },
  {
    name     = "percentage"
    type     = "INT"
    nullable = true
  }
]
