
provider "aws" {
   region = "us-east-1"
   profile = "config"
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}