resource "aws_s3_bucket" "example" {
  bucket = "hello-bucket-by-kumar-using-tf5"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}