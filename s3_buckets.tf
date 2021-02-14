/* Resource not in use anymore */
/*
resource "aws_s3_bucket" "s3-bucket-dev4" {
  bucket                    = "mesquitalabs-bucket"
  acl                       = "private"

  tags = {
    Name                    = "s3-bucket-dev4"
  }
}
*/

resource "aws_s3_bucket" "s3-bucket-mesquitalabs-cloud" {
  bucket                    = "bucket-mesquitalabs-cloud"
  acl                       = "private"

  tags = {
    Name                    = "bucket-mesquitalabs-cloud"
  }
}