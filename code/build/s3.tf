provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "3839e9ca-bbc8-4812-812a-b34f8598a0d6"
    git_commit           = "4fd9425957b23b547d78a1542c3d3aab8dcb7b44"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-03-12 18:06:53"
    git_last_modified_by = "jhenao@entel.cl"
    git_modifiers        = "jhenao"
    git_org              = "jhenao-entel"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
