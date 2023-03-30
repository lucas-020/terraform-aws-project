terraform {
  backend "s3" {
    bucket = "test-to-delete-1231"
    key    = "path/to/my/s3"
    region = "us-east-1"
  }
}