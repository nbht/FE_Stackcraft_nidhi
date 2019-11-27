"locals" = {
  "tags_cycloid" = {
    "cycloid.io" = true

    "env" = "${var.env}"
  }

  "tags_stack" = {}
}

"provider" "flexibleengine" {
  "auth_url" = "https://iam.eu-west-0.prod-cloud-ocb.orange-business.com/v3"
}

"provider" "vault" {
  "address" = "test"

  "token" = "test"
}

"resource" "flexibleengine_s3_bucket" "nidhi-stack-test" {
  "bucket" = "nidhi-test-bucket"
}

"resource" "flexibleengine_s3_bucket_object" "bucket-nidhi-object" {
  "bucket" = "${flexibleengine_s3_bucket.nidhi-stack-test.bucket}"

  "key" = "test"
}

"resource" "flexibleengine_s3_bucket_policy" "nidhi-bucket-policy" {
  "bucket" = "${flexibleengine_s3_bucket.nidhi-stack-test.id}"

  "policy" = "test"
}

"variable" "env" {
  "default" = "staging"

  "type" = "string"
}

"variable" "network_id" {
  "description" = "The ID of the network to attach the port resources to"

  "type" = "string"
}

"variable" "subnet_id" {
  "description" = "Subnet in which to allocate an IP address"

  "type" = "string"
}
