module "env" {
  source  = "modules/cloudfront"

  aliases                = var.cf_env_aliases
  logging_config         = var.cf_env_logging_config
  default_cache_behavior = var.cf_env_default_cache_behavior
  viewer_certificate     = var.cf_env_viewer_certificate
  custom_error_response  = var.cf_env_custom_error_response
  ordered_cache_behavior = var.cf_env_ordered_cache_behavior
  origin                 = var.cf_env_origin
}

module "payments" {
  source  = "modules/cloudfront"

  aliases                = var.cf_payments_aliases
  logging_config         = var.cf_payments_logging_config
  default_cache_behavior = var.cf_payments_default_cache_behavior
  viewer_certificate     = var.cf_payments_viewer_certificate
  custom_error_response  = var.cf_payments_custom_error_response
  ordered_cache_behavior = var.cf_payments_ordered_cache_behavior
  origin                 = var.cf_payments_origin
}

module "flowers" {
  source  = "modules/cloudfront"

  aliases                = var.cf_flowers_aliases
  logging_config         = var.cf_flowers_logging_config
  default_cache_behavior = var.cf_flowers_default_cache_behavior
  viewer_certificate     = var.cf_flowers_viewer_certificate
  custom_error_response  = var.cf_flowers_custom_error_response
  ordered_cache_behavior = var.cf_flowers_ordered_cache_behavior
  origin                 = var.cf_flowers_origin
}

resource "aws_cloudfront_origin_access_identity" "alb" {
  comment = "${var.env}-s3-bucket-${var.cf_oai_comment}"
}

