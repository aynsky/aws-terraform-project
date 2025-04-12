terraform {
  backend "s3" {
    bucket = "devops-directive-tf-state-pathum"
    region = "ap-south-1"
    key    = "terraform/state/dev.tfstate"
  }
}
