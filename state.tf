terraform {
  backend "s3" {
    bucket  = "terraform-b26"
    key     = "parameter-store/terraform.tfstate"
    region  = "us-east-1"
  }
}