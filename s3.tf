module "s3-bucket" {
  for_each = var.cf_bucket_name

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.13.0"

  bucket_prefix = "${var.env}-${each.value}-"
  acl    = var.acl

  # Allow deletion of non-empty bucket
  force_destroy = var.force_destroy

}
#additonal bucket for origin_id
resource "aws_s3_bucket" "alb_s3" {
  bucket_prefix = var.bucket_prefix
  acl    = var.acl

}