variable "vpc_id" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for the public subnets"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for the private subnets"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "alb_listener_port" {
  description = "Port for the ALB listener"
  default     = 80
}

variable "alb_target_port" {
  description = "Port for the ALB target group"
  default     = 80
}

variable "wordpress_env_vars" {
  description = "Map of environment variables to set for the WordPress instances"
  default     = {
    DB_NAME     = "wordpress",
    DB_USER     = "wordpress",
    DB_PASSWORD = "password",
    DB_HOST     = "mysql",
    WP_HOME     = "http://wordpress.yourdomain.com",
    WP_SITEURL  = "http://wordpress.yourdomain.com",
  }
}
