
provider "aws" {
   region = "us-east-1"
   profile = "configs"
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}
