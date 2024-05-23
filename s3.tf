resource "aws_s3_bucket" "static-assets" {
  bucket = "terraform-static-assets"

  tags = {
    Name = "Static Assets"
  }
}