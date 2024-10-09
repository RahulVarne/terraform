module "s3_bucket" {
source = "/mnt/f/s3.tf/s3_bucket.tf"
 bucket_name = "my-1-bucket-rahul-2024" 
region = "us-east-1"
tags = {
Environment = "dev"
Team = "DevOps"
}

}