provider "aws" {
   profile = "configs"
   region  = "us-east-1"
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}
