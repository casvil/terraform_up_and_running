
# To use the partial configuration from this file run:
# terraform init -backend-config=backend.hcl

bucket         = "casvil-terraform-up-and-running-state"
region         = "us-east-2"
dynamodb_table = "casvil-terraform-up-and-running-locks"
encrypt        = true

# In the s3 backend config
# terraform {
#   backend "s3" {
#     key = "global/s3/terraform.tfstate" 
#   }
# }