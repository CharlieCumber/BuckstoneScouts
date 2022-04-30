resource "aws_s3_bucket" "remote_state" {
  bucket = "buckstone-scouts-terraform-state"
  acl    = "private"
}