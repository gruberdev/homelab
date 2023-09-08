resource "b2_bucket" "standard" {
  bucket_name = var.bucket_name
  bucket_type = var.bucket_type
}

data "b2_bucket" "standard" {
  bucket_name = b2_bucket.standard.bucket_name
}