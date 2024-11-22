# profile.tf
provider "aws" {
  region  = "us-east-1"              # Replace with your desired region
  profile = "config"   # Replace with the AWS CLI profile name you want to use
}
