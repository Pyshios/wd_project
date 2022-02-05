### global

env = "staging"


### VPC variables ###
cidr            = "10.0.0.0/16"
azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
dns_support     = true
dns_hostnames   = false


##########
### CF ###
##########

#####Aliases######
cf_payments_aliases = [

  ]

cf_flowers_aliases = [

  ]

cf_env_aliases = [
  "api.staging.wisdo.com",
  "staging.wisdo.com",
  "www.staging.wisdo.com",
]


########Loging_config########

cf_env_logging_config = {
  bucket          = "staging.cloudfront-logs.mu.s3.amazonaws.com"
  include_cookies = false
  prefix          = "cloudfront"
}

cf_payments_logging_config = {
  bucket          = "staging.cloudfront-logs.mu.s3.amazonaws.com"
  include_cookies = false
  prefix          = "cloudfront"
}

cf_flowers_logging_config = {
  bucket          = "staging.cloudfront-logs.mu.s3.amazonaws.com"
  include_cookies = false
  prefix          = "cloudfront"
}

######default_cache_behavior#######


cf_env_default_cache_behavior = {
  staging = {
    allowed_methods        = [
      "GET",
      "HEAD",
    ]
    cached_methods         = [
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

    forwarded_values = {
      headers                 = [
        "CloudFront-Is-Desktop-Viewer",
        "CloudFront-Is-Mobile-Viewer",
        "Host",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies = {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

}

cf_payments_default_cache_behavior = {
  staging = {
    allowed_methods        = [
      "GET",
      "HEAD",
    ]
    cached_methods         = [
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

    forwarded_values = {
      headers                 = [
        "CloudFront-Is-Desktop-Viewer",
        "CloudFront-Is-Mobile-Viewer",
        "Host",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies = {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

}

cf_flowers_default_cache_behavior = {
  staging = {
    allowed_methods        = [
      "GET",
      "HEAD",
    ]
    cached_methods         = [
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

    forwarded_values = {
      headers                 = [
        "CloudFront-Is-Desktop-Viewer",
        "CloudFront-Is-Mobile-Viewer",
        "Host",
      ]
      query_string            = true
      query_string_cache_keys = []

      cookies = {
        forward           = "all"
        whitelisted_names = []
      }
    }
  }

}


##### viewer_certificate #####

cf_env_viewer_certificate = {
  acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/f3e4c7a7-6bc4-4b74-80b0-4230287d1b46"
  cloudfront_default_certificate = false
  minimum_protocol_version       = "TLSv1.1_2016"
  ssl_support_method             = "sni-only"
}

cf_payments_viewer_certificate = {
  acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/f3e4c7a7-6bc4-4b74-80b0-4230287d1b46"
  cloudfront_default_certificate = false
  minimum_protocol_version       = "TLSv1.1_2016"
  ssl_support_method             = "sni-only"
}

cf_flowers_viewer_certificate = {
  acm_certificate_arn            = "arn:aws:acm:us-east-1:535371163540:certificate/f3e4c7a7-6bc4-4b74-80b0-4230287d1b46"
  cloudfront_default_certificate = false
  minimum_protocol_version       = "TLSv1.1_2016"
  ssl_support_method             = "sni-only"
}


##### custom_error_response #####


cf_env_custom_error_response = {
  error_caching_min_ttl = 0
  error_code            = 403
  response_code         = 200
  response_page_path    = "/backoffice/index.html"
}

cf_payments_custom_error_response = {
  error_caching_min_ttl = 0
  error_code            = 403
  response_code         = 200
  response_page_path    = "/backoffice/index.html"
}

cf_flowers_custom_error_response = {
  error_caching_min_ttl = 0
  error_code            = 403
  response_code         = 200
  response_page_path    = "/backoffice/index.html"
}


##### ordered_cache_behavior #####

# If this match if what is needed than
#i will keep the other blocks on this section
cf_env_ordered_cache_behavior = {

  backoffice = {
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

    forwarded_values = {
    headers                 = []
    query_string            = false
    query_string_cache_keys = []

    cookies= {
    forward           = "none"
    whitelisted_names = []
    }
    }
  }
  api = {
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

    forwarded_values = {
    headers = [
    "*",
    ]
    query_string            = true
    query_string_cache_keys = []

    cookies = {
    forward           = "all"
    whitelisted_names = []
    }
    }
  }
  highered = {
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

    forwarded_values = {
    headers                 = []
    query_string            = false
    query_string_cache_keys = []

    cookies = {
    forward           = "none"
    whitelisted_names = []
    }
    }
  }
  reports = {
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

    forwarded_values  = {
    headers                 = []
    query_string            = false
    query_string_cache_keys = []

    cookies = {
    forward           = "none"
    whitelisted_names = []
    }
    }
  }
  work = {
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

    forwarded_values = {
    headers                 = []
    query_string            = false
    query_string_cache_keys = []

    cookies = {
    forward           = "none"
    whitelisted_names = []
    }
    }
  }
  coaching = {
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

    forwarded_values = {
    headers                 = []
    query_string            = false
    query_string_cache_keys = []

    cookies = {
    forward           = "none"
    whitelisted_names = []
    }
    }
  }
}

cf_payments_ordered_cache_behavior = {
  backoffice = {
    allowed_methods        = ["GET", "HEAD"]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/backoffice*"
    smooth_streaming       = false
    target_origin_id       = var.cf_origin["s3-bucket"]
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values = {
      query_string = false
      cookies = {
        forward = "none"
      }
    }
  }
}

cf_flowers_ordered_cache_behavior = {
  backoffice = {
    allowed_methods        = ["GET", "HEAD"]
    compress               = true
    default_ttl            = 0
    max_ttl                = 31536000
    min_ttl                = 0
    path_pattern           = "/backoffice*"
    smooth_streaming       = false
    target_origin_id       = var.cf_origin["s3-bucket"]
    viewer_protocol_policy = "redirect-to-https"

    forwarded_values = {
      query_string = false
      cookies = {
        forward = "none"
      }
    }
  }
}



cf_bucket_name = [
  "backoffice"
]

##### origin #####


cf_env_origin = {
  ecs-alb = {
    connection_attempts = 3
    domain_name         = "staging-loadbalancer-mu-1328424261.us-east-1.elb.amazonaws.com"


    custom_origin_config = {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1",
      ]
    }
  } ,

  webflow = {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = "webflow.wisdo.com"


    custom_origin_config = {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols = [
        "TLSv1.1",
      ]
    }
  },

  s3-bucket = {
    connection_attempts = 3
    connection_timeout  = 10
    domain_name         = module.s3-bucket.s3_bucket_bucket_regional_domain_name[backoffice]


    s3_origin_config = {
      origin_access_identity = aws_cloudfront_origin_access_identity.alb.id
    }
  }
}





#cf_ordered_cache_path = [
#  "/highered*",
#  "/reports*",
#  "	/work-with-us*",
#  "/coaching*"
#]


###########
### ALB ###
###########

#
#lb_target_groups = [
#  {
#    name_prefix      = "pref-"
#    backend_protocol = "HTTPS"
#    backend_port     = 443
#    target_type      = "instance"
#  }
#]
#
#lb_https_listeners = [
#  {
#    port               = 443
#    protocol           = "HTTPS"
#    certificate_arn    = "arn:aws:iam::123456789012:server-certificate/test_cert-123456789012"
#    target_group_index = 0
#  }
#]
#
#
#lb_http_tcp_listeners = [
#  {
#    port        = 80
#    protocol    = "HTTP"
#    action_type = "redirect"
#    redirect = {
#      port        = "443"
#      protocol    = "HTTPS"
#      status_code = "HTTP_301"
#    }
#  }
#]
#
#lb_security_groups = []
#
#lb_access_logs = {
#  bucket = "my-alb-logs"
#}


###########
### ECS ###
###########
name = "staging"