# Terraform-Snowflake1

This repository contains Terraform scripts and modules for provisioning Snowflake resources, including warehouses, databases, schemas, and tables.

## Overview

The Terraform scripts/modules provided here aim to automate the provisioning of Snowflake resources in an Infrastructure as Code (IaC) manner. The scripts follow best practices for modularity, reusability, and parameterization.

## Prerequisites

Before using these Terraform scripts, ensure you have the following:

1. **Terraform Installed**: Make sure you have Terraform installed on your local machine. 

2. **Snowflake Account**: Access to a Snowflake account with appropriate permissions to create and manage resources.

3. **Snowflake Provider Credentials**: Snowflake provider configured with valid credentials including account, username, password, role, warehouse, and region.

## Usage

Follow these steps to use the provided Terraform scripts:

1. **Clone Repository**: Clone this repository to your local machine.

2. **Configuration**:
    - Navigate to the directory containing the Terraform scripts.
    - Create a `terraform.tfvars` file and provide values for the required variables. An example `terraform.tfvars.example` is provided as a reference.
    - Customize the values in `terraform.tfvars` according to your Snowflake environment and resource requirements.

3. **Initialize Terraform**: Run `terraform init` to initialize the Terraform configuration.

4. **Preview Changes**: Run `terraform plan` to preview the changes that Terraform will make.

5. **Apply Changes**: If the plan looks good, apply the changes using `terraform apply`.


6. **Verification**: After applying the changes, verify that the Snowflake resources have been provisioned correctly in your Snowflake account.

## Cleanup

To clean up and destroy the resources created by Terraform, run:


terraform destroy
