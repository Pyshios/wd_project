# aws_cloudfront_distribution.this:
# Mapping of resources
# aws_cloudfront_distribution.this2 E1SI19OZWH36KR
# aws_cloudfront_distribution.this3  EIK34J8Z2E654
# aws_cloudfront_distribution.this4 E1UT99X713YE0Q
# aws_cloudfront_distribution.this5 E3VOAIN4UAONVA
# aws_cloudfront_distribution.this6 E3S1TNPDD6Q89N
# aws_cloudfront_distribution.this7 E1V8OLH77X6Y34
# aws_cloudfront_distribution.this8 ESP55YF3TAGWY
# aws_cloudfront_distribution.this9 E2SGNZX6EAJE5W
# aws_cloudfront_distribution.this10 E2W2PIQA0OWI2G
# aws_cloudfront_distribution.this11 E1UI95FQK3BUJ9



resource "aws_cloudfront_distribution" "this" {
  aliases = [
    "api.staging.wisdo.com",
    "staging.wisdo.com",
    "www.staging.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/ERQM5KBDGNVYA"
  caller_reference               = "ae854e3b-6544-49bd-902c-565b73c2b8e6"
  default_root_object            = "index.html"
  domain_name                    = "d1hhhvkipy1aqu.cloudfront.net"
  enabled                        = true
  etag                           = "E2S31K9VP8JFW7"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "ERQM5KBDGNVYA"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2022-01-16 11:58:56.62 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/backoffice/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 86400
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "CloudFront-Is-Desktop-Viewer",
        "CloudFront-Is-Mobile-Viewer",
        "Host",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

  logging_config {
    bucket          = "staging.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/backoffice*"
    smooth_streaming       = false
    target_origin_id       = "s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/highered*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/reports*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/work-with-us*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/coaching*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "staging-loadbalancer-mu-1328424261.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "webflow.wisdo.com"
    origin_id           = "webflow"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "staging.backoffice.mu.s3.amazonaws.com"
    origin_id           = "s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E243P720Y100Q8"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/f3e4c7a7-6bc4-4b74-80b0-4230287d1b46"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.1_2016"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this10:
resource "aws_cloudfront_distribution" "this10" {
  aliases = [
    "api.scotts.wisdo.com",
    "scotts.wisdo.com",
    "www.scotts.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E2W2PIQA0OWI2G"
  caller_reference               = "e61e7178-2144-451b-9357-b5ab67b46941"
  default_root_object            = "index.html"
  domain_name                    = "d3930y8l35v3is.cloudfront.net"
  enabled                        = true
  etag                           = "EZPOLJWSFM3Q2"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E2W2PIQA0OWI2G"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-02-21 10:14:29.281 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "scotts-prod"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "56cda9c"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "scotts-prod"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "56cda9c"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/backoffice/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "CloudFront-Is-Desktop-Viewer",
        "CloudFront-Is-Mobile-Viewer",
        "Host",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  logging_config {
    bucket          = "scotts-prod.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/backoffice*"
    smooth_streaming       = false
    target_origin_id       = "s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/highered*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/work-with-us*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "scotts-prod-loadbalancer-mu-627229055.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "webflow.wisdo.com"
    origin_id           = "webflow"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "scotts-prod.backoffice.mu.s3.amazonaws.com"
    origin_id           = "s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E2V0YDAG7TEIPM"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/2e441f8a-ede5-46db-aef9-19488cdc8b4b"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.1_2016"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this11:
resource "aws_cloudfront_distribution" "this11" {
  aliases = [
    "api.staging.scotts.wisdo.com",
    "staging.scotts.wisdo.com",
    "www.staging.scotts.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E1UI95FQK3BUJ9"
  caller_reference               = "4f388140-d00c-4a5b-b892-9ed8cc65b009"
  default_root_object            = "index.html"
  domain_name                    = "d1o3unqbpkqfyf.cloudfront.net"
  enabled                        = true
  etag                           = "E2GO5AE2KHWVUO"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E1UI95FQK3BUJ9"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-01-16 11:56:25.144 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "scotts-staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "47fc620"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "scotts-staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "47fc620"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/backoffice/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "CloudFront-Is-Desktop-Viewer",
        "CloudFront-Is-Mobile-Viewer",
        "Host",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  logging_config {
    bucket          = "scotts-staging.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/backoffice*"
    smooth_streaming       = false
    target_origin_id       = "s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/highered*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/work-with-us*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "scotts-staging-loadbalancer-mu-1128882799.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "webflow.wisdo.com"
    origin_id           = "webflow"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "scotts-staging.backoffice.mu.s3.amazonaws.com"
    origin_id           = "s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/EKG0Y5I3FYZT1"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/3a8dd1b7-4910-4212-a999-7e762405285c"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.1_2016"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this2:
resource "aws_cloudfront_distribution" "this2" {
  aliases = [
    "api.wisdo.com",
    "wisdo.com",
    "www.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E1SI19OZWH36KR"
  caller_reference               = "4a3ef304-7c9b-4c6b-b2b7-8641754ffb3a"
  default_root_object            = "index.html"
  domain_name                    = "d17dp8ln11pzzx.cloudfront.net"
  enabled                        = true
  etag                           = "E1ZEAHOOLKKZKB"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E1SI19OZWH36KR"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-12-29 20:01:48.665 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "production"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "production"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/backoffice/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cache_policy_id = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress                 = true
    default_ttl              = 0
    max_ttl                  = 0
    min_ttl                  = 0
    origin_request_policy_id = "216adef6-5c7f-47e4-b989-5492eafa07d3"
    smooth_streaming         = false
    target_origin_id         = "ecs-alb"
    trusted_key_groups       = []
    trusted_signers          = []
    viewer_protocol_policy   = "redirect-to-https"
  }

  logging_config {
    bucket          = "production.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/backoffice*"
    smooth_streaming       = false
    target_origin_id       = "s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/highered*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/reports*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/work-with-us*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/coaching*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "production-loadbalancer-mu-1916350859.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "webflow.wisdo.com"
    origin_id           = "webflow"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "production.backoffice.mu.s3.amazonaws.com"
    origin_id           = "s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/ETHZKGVOVK3HR"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/6aa8ca21-921c-4a30-b9dc-b4378b625af6"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.1_2016"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this3:
resource "aws_cloudfront_distribution" "this3" {
  aliases = [
    "payment.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/EIK34J8Z2E654"
  caller_reference               = "66b575e0-55f1-4bc2-a358-b4654f756781"
  default_root_object            = "index.html"
  domain_name                    = "d3oo3s1m81tqyo.cloudfront.net"
  enabled                        = true
  etag                           = "E37E680IKHLWSY"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "EIK34J8Z2E654"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-12-29 14:17:16.636 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "production"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "production"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "payment-s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }

    lambda_function_association {
      event_type   = "origin-response"
      include_body = false
      lambda_arn   = "arn:aws:lambda:us-east-1:535371163540:function:production-HSTSLambdaEdgeFunction-mu:1"
    }
  }

  logging_config {
    bucket          = "production.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "payment-cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api/payment*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "production-loadbalancer-mu-1916350859.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "production.payment-website.mu.s3.amazonaws.com"
    origin_id           = "payment-s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/ETHZKGVOVK3HR"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/6aa8ca21-921c-4a30-b9dc-b4378b625af6"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2018"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this4:
resource "aws_cloudfront_distribution" "this4" {
  aliases = [
    "1800flowers.wisdo.com",
    "communities.1800flowers.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E1UT99X713YE0Q"
  caller_reference               = "ec39b197-451e-4959-9630-b0b9385708b8"
  default_root_object            = "index.html"
  domain_name                    = "d1u4kd2kgvi3cw.cloudfront.net"
  enabled                        = true
  etag                           = "E1XZHD1JJEQ42Z"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E1UT99X713YE0Q"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-12-29 14:17:15.695 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "production"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "production"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "flowers-s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }

    lambda_function_association {
      event_type   = "origin-response"
      include_body = false
      lambda_arn   = "arn:aws:lambda:us-east-1:535371163540:function:production-HSTSLambdaEdgeFunction-mu:1"
    }
  }

  logging_config {
    bucket          = "production.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "flowers-cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api/flowers*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "production-loadbalancer-mu-1916350859.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "production.flowers.mu.s3.amazonaws.com"
    origin_id           = "flowers-s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/ETHZKGVOVK3HR"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/b172a840-b635-4b62-87c5-5516e6da4d8f"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2018"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this5:
resource "aws_cloudfront_distribution" "this5" {
  aliases = [
    "payment.staging.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E3VOAIN4UAONVA"
  caller_reference               = "f667545e-1bb1-46d6-b0c6-134cbea3b63c"
  default_root_object            = "index.html"
  domain_name                    = "d39q4x9iwnwf24.cloudfront.net"
  enabled                        = true
  etag                           = "E2SSK52GRJ16QK"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E3VOAIN4UAONVA"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-12-29 11:45:52.011 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "payment-s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }

    lambda_function_association {
      event_type   = "origin-response"
      include_body = false
      lambda_arn   = "arn:aws:lambda:us-east-1:535371163540:function:staging-HSTSLambdaEdgeFunction-mu:1"
    }
  }

  logging_config {
    bucket          = "staging.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "payment-cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api/payment*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "staging-loadbalancer-mu-1328424261.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "staging.payment-website.mu.s3.amazonaws.com"
    origin_id           = "payment-s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E243P720Y100Q8"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/f3e4c7a7-6bc4-4b74-80b0-4230287d1b46"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2018"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this6:
resource "aws_cloudfront_distribution" "this6" {
  aliases = [
    "1800flowers.staging.wisdo.com",
    "communities.1800flowers-uat.net",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E3S1TNPDD6Q89N"
  caller_reference               = "e77b6259-918e-4a8e-ba4d-bbac0c6668ca"
  default_root_object            = "index.html"
  domain_name                    = "d2ps7glexwz1bh.cloudfront.net"
  enabled                        = true
  etag                           = "E318FPNY7Z4T58"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E3S1TNPDD6Q89N"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-12-29 11:45:51.61 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "staging"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "d9748fc"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "flowers-s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }

    lambda_function_association {
      event_type   = "origin-response"
      include_body = false
      lambda_arn   = "arn:aws:lambda:us-east-1:535371163540:function:staging-HSTSLambdaEdgeFunction-mu:1"
    }
  }

  logging_config {
    bucket          = "staging.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "flowers-cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api/flowers*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "staging-loadbalancer-mu-1328424261.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "staging.flowers.mu.s3.amazonaws.com"
    origin_id           = "flowers-s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E243P720Y100Q8"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/9e1c7f9f-0a17-4746-a2d8-3b55ad55bde9"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2018"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this7:
resource "aws_cloudfront_distribution" "this7" {
  aliases = [
    "api.dev1.wisdo.com",
    "dev1.wisdo.com",
    "www.dev1.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E1V8OLH77X6Y34"
  caller_reference               = "fac845be-2b19-49a2-b79d-f2bd5e2848b1"
  default_root_object            = "index.html"
  domain_name                    = "dc5i11tz96ul4.cloudfront.net"
  enabled                        = true
  etag                           = "E25UBJJHSL16XR"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E1V8OLH77X6Y34"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-05-13 08:29:49.085 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "dev1"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "8ac8c43"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "dev1"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "8ac8c43"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/backoffice/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "CloudFront-Is-Desktop-Viewer",
        "CloudFront-Is-Mobile-Viewer",
        "Host",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  logging_config {
    bucket          = "dev1.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/backoffice*"
    smooth_streaming       = false
    target_origin_id       = "s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/highered*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }
  ordered_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/work-with-us*"
    smooth_streaming       = false
    target_origin_id       = "webflow"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = false
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "dev1-loadbalancer-mu-87022537.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "webflow.wisdo.com"
    origin_id           = "webflow"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "dev1.backoffice.mu.s3.amazonaws.com"
    origin_id           = "s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E1ZTSUPMP3E7KJ"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/70a8abe6-0f2b-41cd-b342-16ffd720fe03"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.1_2016"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this8:
resource "aws_cloudfront_distribution" "this8" {
  aliases = [
    "1800flowers.dev1.wisdo.com",
    "dummy-not-needed-for-dev1-flowers.dev1.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/ESP55YF3TAGWY"
  caller_reference               = "b8da2fd0-838f-4195-9076-6c83c6507b10"
  default_root_object            = "index.html"
  domain_name                    = "d24ljieqs1s1cy.cloudfront.net"
  enabled                        = true
  etag                           = "E3CSV1CZAZZFNX"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "ESP55YF3TAGWY"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-05-13 08:29:48.237 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "dev1"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "8ac8c43"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "dev1"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "8ac8c43"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "flowers-s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }

    lambda_function_association {
      event_type   = "origin-response"
      include_body = false
      lambda_arn   = "arn:aws:lambda:us-east-1:535371163540:function:dev1-HSTSLambdaEdgeFunction-mu:5"
    }
  }

  logging_config {
    bucket          = "dev1.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "flowers-cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api/flowers*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "dev1-loadbalancer-mu-87022537.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "dev1.flowers.mu.s3.amazonaws.com"
    origin_id           = "flowers-s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E1ZTSUPMP3E7KJ"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/70a8abe6-0f2b-41cd-b342-16ffd720fe03"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2018"
    ssl_support_method             = "sni-only"
  }
}

# aws_cloudfront_distribution.this9:
resource "aws_cloudfront_distribution" "this9" {
  aliases = [
    "payment.dev1.wisdo.com",
  ]
  arn                            = "arn:aws:cloudfront::535371163540:distribution/E2SGNZX6EAJE5W"
  caller_reference               = "3905ca28-8099-4f64-9c6d-412d3385aad9"
  default_root_object            = "index.html"
  domain_name                    = "d32df2awdc0fb9.cloudfront.net"
  enabled                        = true
  etag                           = "E1JO6JBYTOL26O"
  hosted_zone_id                 = "Z2FDTNDATAQYW2"
  http_version                   = "http2"
  id                             = "E2SGNZX6EAJE5W"
  in_progress_validation_batches = 0
  is_ipv6_enabled                = true
  last_modified_time             = "2021-05-13 08:29:47.905 +0000 UTC"
  price_class                    = "PriceClass_All"
  retain_on_delete               = false
  status                         = "Deployed"
  tags = {
    "mu:environment" = "dev1"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "8ac8c43"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  tags_all = {
    "mu:environment" = "dev1"
    "mu:provider"    = "ecs-fargate"
    "mu:repo"        = "wisdo/server"
    "mu:revision"    = "8ac8c43"
    "mu:type"        = "loadbalancer"
    "mu:version"     = "1.5.10"
  }
  trusted_key_groups = [
    {
      enabled = false
      items   = []
    },
  ]
  trusted_signers = [
    {
      enabled = false
      items   = []
    },
  ]
  wait_for_deployment = true

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods = [
      "GET",
      "HEAD",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    smooth_streaming       = false
    target_origin_id       = "payment-s3-bucket"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers                 = []
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "none"
        whitelisted_names = []
      }
    }

    lambda_function_association {
      event_type   = "origin-response"
      include_body = false
      lambda_arn   = "arn:aws:lambda:us-east-1:535371163540:function:dev1-HSTSLambdaEdgeFunction-mu:5"
    }
  }

  logging_config {
    bucket          = "dev1.cloudfront-logs.mu.s3.amazonaws.com"
    include_cookies = false
    prefix          = "payment-cloudfront"
  }

  ordered_cache_behavior {
    allowed_methods = [
      "DELETE",
      "GET",
      "HEAD",
      "OPTIONS",
      "PATCH",
      "POST",
      "PUT",
    ]
    cached_methods = [
      "GET",
      "HEAD",
    ]
    compress               = false
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/api/payment*"
    smooth_streaming       = false
    target_origin_id       = "ecs-alb"
    trusted_key_groups     = []
    trusted_signers        = []
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values {
      headers = [
        "*",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "dev1-loadbalancer-mu-87022537.us-east-1.elb.amazonaws.com"
    origin_id           = "ecs-alb"

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  }
  origin {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "dev1.payment-website.mu.s3.amazonaws.com"
    origin_id           = "payment-s3-bucket"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/E1ZTSUPMP3E7KJ"
    }
  }

  restrictions {
    geo_restriction {
      locations        = []
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/70a8abe6-0f2b-41cd-b342-16ffd720fe03"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2018"
    ssl_support_method             = "sni-only"
  }
}
