provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10 # 10 GB 
  instance_class      = "db.t2.micro"
  skip_final_snapshot = true
  db_name             = var.db_name

  username = var.db_username
  password = var.db_password
}

terraform {
  backend "s3" {
    bucket         = "casvil-terraform-up-and-running-state"
    key            = "stage/data-stores/mysql/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "casvil-terraform-up-and-running-locks"
    encrypt        = true
  }
}
