resource "aws_s3_bucket" "my_bucket" {
  bucket = "iamironman"

  tags = {
    Name = "My-bucket"
  }
}
