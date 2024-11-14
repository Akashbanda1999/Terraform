provider "aws" {
   profile = "configs"
   region  = "ap-northeast-2"
    default_tags {
                tags = {
                    name = "aws"
                }
    }
}
