terraform {
  backend "s3" {
    bucket         = "my-s3-bucket"                # Replace with your S3 bucket name
    key            = "vpc/terraform.tfstate"       # Path to store the state file in S3
    region         = "us-east-1"                   # Replace with your AWS region
    encrypt        = true       
  }
}
