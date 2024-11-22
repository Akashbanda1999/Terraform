provider "aws" {
   profile = "akash"
   region  = "us-east-1"
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}
