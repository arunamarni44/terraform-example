resource "aws_s3_bucket" "a" {

  bucket = var.bucket_name
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  } 
}
