# A bucket name is immutable in AWS so we'll have to create a new bucket
aws s3 mb s3://my-new-bucket-east1-0606
# Sync old bucket to new bucket
aws s3 sync s3://prasathdv-s3-bucket-updated s3://my-new-bucket-east1-0606
# Remove the old bucket from Terraform's state
terraform state rm aws_s3_bucket.s3bucket_new
# Import new bucket to Terraform's state
terraform import aws_s3_bucket.s3bucket_new my-new-bucket-east1-0606
# Modify the Terraform definition to include the new name
# resource "aws_s3_bucket" "s3bucket_new" {
#    bucket = "my-new-bucket-east1-0606"
# }

# Remove old bucket
aws s3 rm s3://prasathdv-s3-bucket-updated --recursive
aws s3 rb s3://prasathdv-s3-bucket-updated
