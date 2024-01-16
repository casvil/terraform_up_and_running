resource "aws_instance" "example" {
  ami = "ami-0fb653ca2d3203ac1"

  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "casvil-example-state"
    key    = "workspaces/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "casvil-example-locks"
    encrypt        = true
  }
}

