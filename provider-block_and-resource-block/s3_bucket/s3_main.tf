resource "aws_s3_bucket" "my_bucket" {
  bucket = "iamakashbanda"

  tags = {
    Name = "My bucket"
  }
}
