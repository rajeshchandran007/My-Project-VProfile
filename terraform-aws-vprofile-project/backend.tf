terraform {
  backend "s3" {
    bucket = "vprofile-015904251830"
    key    = "prd/terraform.tfstate"
    region = "ap-south-1"
  }
}