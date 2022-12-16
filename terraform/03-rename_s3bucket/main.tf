#  Create a S3 bucket
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3bucket_new" {
  bucket = "my-new-bucket-east1-0606"
  tags = {
    "Name" = "S3-Bucket-Updated"
  }
}