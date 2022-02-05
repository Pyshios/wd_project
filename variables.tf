########################
### global variables ###
########################
variable "env" {
  type = string
}

#variable "region" {
#  description = "Region on AWS"
#  type        = string
#}


###########
### VPC ###
###########

variable "cidr" {
  description = "CIDR block associated with the VPC to extend the IP Address pool"
  type        = string
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
}

variable "dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
}

variable "dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
}


#######
##ECS##
#######


variable "create_ecs" {
  description = "Controls if ECS should be created"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name to be used on all the resources as identifier, also the name of the ECS cluster"
  type        = string
}

variable "capacity_providers" {
  description = "List of short names of one or more capacity providers to associate with the cluster. Valid values also include FARGATE and FARGATE_SPOT."
  type        = list(string)
  default     = []
}

variable "default_capacity_provider_strategy" {
  description = "The capacity provider strategy to use by default for the cluster. Can be one or more."
  type        = list(map(any))
  default     = []
}

variable "container_insights" {
  description = "Controls if ECS Cluster has container insights enabled"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to ECS Cluster"
  type        = string
  default     = ""

}

################
###CLOUDFRONT###
################

variable "cf_aliases" {
  description = "Extra CNAMEs (alternate domain names), if any, for this distribution."
  type        = list(string)
}

variable "http_version" {
  description = "The maximum HTTP version to support on the distribution. Allowed values are http1.1 and http2. The default is http2."
  type        = string
  default     = "http2"
}

variable "is_ipv6_enabled" {
  description = "Whether the IPv6 is enabled for the distribution."
  type        = bool
  default     = null
}

variable "default_root_object" {
  description = "The object that you want CloudFront to return (for example, index.html) when an end user requests the root URL."
  type        = string
  default     = null
}

variable"cf_env_logging_config" {
 description = "The logging configuration that controls how logs are written to your distribution (maximum one)."
type = list(object({
   include_cookies = bool
    bucket          = string
   prefix          = string
 }))
}

variable "cf_env_default_cache_behavior" {
  description = "The default cache behavior for this distribution"
  type        = any
  default     = null
}

variable "cf_env_viewer_certificate" {
  description = "The SSL configuration for this distribution"
  type        = any

}

variable "cf_env_custom_error_response" {
  description = "One or more custom error response elements"
  type        = any
  default     = {}
}

variable "cf_compress" {
  default = ""
}

variable "cf_env_ordered_cache_path" {
  type = list(string)
}

variable "cf_env_aliases" {
  type = map(list(string))
}

variable "cf_env_origin" {
  type = list(any)
}

variable "cf_geo_restriction" {
  description = "The restriction configuration for this distribution (geo_restrictions)"
  type        = any
  default     = {}
}

variable "cf_env_ordered_cache_behavior" {
  description = "An ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0."
  type        = any
  default     = []
}

variable "cf_price_class" {
  default = "PriceClass_All"
}

variable "cf_oai_comment" {
  description = "An Origin Access Identity for the load balancer"
  default     = "oai"
}



######### PAYMENTS ###########



variable"cf_payments_logging_config" {
  description = "The logging configuration that controls how logs are written to your distribution (maximum one)."
  type = list(object({
    include_cookies = bool
    bucket          = string
    prefix          = string
  }))
}

variable "cf_payments_default_cache_behavior" {
  description = "The default cache behavior for this distribution"
  type        = any
  default     = null
}

variable "cf_payments_viewer_certificate" {
  description = "The SSL configuration for this distribution"
  type        = any

}

variable "cf_payments_custom_error_response" {
  description = "One or more custom error response elements"
  type        = any
  default     = {}
}


variable "cf_payments_aliases" {
  type = map(list(string))
}

variable "cf_payments_origin" {
  type = list(any)
}



variable "cf_payments_ordered_cache_behavior" {
  description = "An ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0."
  type        = any
  default     = []
}

######### FLOWERS ###########




variable"cf_flowers_logging_config" {
  description = "The logging configuration that controls how logs are written to your distribution (maximum one)."
  type = list(object({
    include_cookies = bool
    bucket          = string
    prefix          = string
  }))
}

variable "cf_flowers_default_cache_behavior" {
  description = "The default cache behavior for this distribution"
  type        = any
  default     = null
}

variable "cf_flowers_viewer_certificate" {
  description = "The SSL configuration for this distribution"
  type        = any

}

variable "cf_flowers_custom_error_response" {
  description = "One or more custom error response elements"
  type        = any
  default     = {}
}


variable "cf_flowers_aliases" {
  type = map(list(string))
}

variable "cf_flowers_origin" {
  type = list(any)
}



variable "cf_flowers_ordered_cache_behavior" {
  description = "An ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0."
  type        = any
  default     = []
}




########
###S3###
########


variable "acl" {
  type        = string
  default     = "private"
  description = "The [canned ACL](https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl) to apply. We recommend `private` to avoid exposing sensitive information. Conflicts with `grants`."
}


variable "bucket_name" {
  type        = string
  default     = null
  description = "Bucket name. If provided, the bucket will be created with this name instead of generating the name from the context"
}

variable "cf_bucket_name" {
  type        = list(string)
  default     = null
  description = "Cloudfront bucket names. If provided, the bucket will be created with this name instead of generating the name from the context"
}

variable "force_destroy" {
  description = "(Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  type        = bool
  default     = false
}

variable "attach_elb_log_delivery_policy" {
  description = "Controls if S3 bucket should have ELB log delivery policy attached"
  type        = bool
  default     = false
}

variable "bucket_prefix" {
  description = "(Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
  type        = string
  default     = null
}

#########
###SSM###
#########


variable "parameter_write" {
  type        = list(map(string))
  description = "List of maps with the parameter values to write to SSM Parameter Store"
  default     = []
}


variable "parameter_read" {
  type        = list(string)
  description = "List of parameters to read from SSM. These must already exist otherwise an error is returned. Can be used with `parameter_write` as long as the parameters are different."
  default     = []
}


#########
###SQS###
#########


variable "create" {
  description = "Whether to create SQS queue"
  type        = bool
  default     = true
}


##########
#ALB





variable "lb_http_tcp_listeners" {
  description = "A list of maps describing the HTTP listeners or TCP ports for this ALB. Required key/values: port, protocol. Optional key/values: target_group_index (defaults to http_tcp_listeners[count.index])"
  type        = any
  default     = []
}

variable "lb_https_listeners" {
  description = "A list of maps describing the HTTPS listeners for this ALB. Required key/values: port, certificate_arn. Optional key/values: ssl_policy (defaults to ELBSecurityPolicy-2016-08), target_group_index (defaults to https_listeners[count.index])"
  type        = any
  default     = []
}

variable "lb_access_logs" {
  description = "Map containing access logging configuration for load balancer."
  type        = map(string)
  default     = {}
}

variable "lb_security_groups" {
  description = "The security groups to attach to the load balancer. e.g. [\"sg-edcd9784\",\"sg-edcd9785\"]"
  type        = list(string)
  default     = []
}

variable "lb_target_groups" {
  description = "A list of maps containing key/value pairs that define the target groups to be created. Order of these maps is important and the index of these are to be referenced in listener definitions. Required key/values: name, backend_protocol, backend_port"
  type        = any
  default     = []
}