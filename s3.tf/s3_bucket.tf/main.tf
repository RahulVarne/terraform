provider "aws" {
  region     = var.region
  
}

resource "aws_s3_bucket" "s3" {
  bucket = var.bucket_name  
  tags   = var.tags
}
