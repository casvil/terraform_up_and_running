resource "aws_instance" "example" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"
}

terraform {
  backend "s3" {
    bucket         = "casvil-terraform-up-and-running-state"
    key            = "workspaces-example/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "casvil-terraform-up-and-running-locks"
    encrypt        = true
  }
}
