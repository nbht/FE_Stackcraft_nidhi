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

"resource" "flexibleengine_cce_cluster_v3" "cce-fe" {
  "cluster_type" = "VM Cluster"

  "container_network_type" = "Tunnel network"

  "flavor_id" = "cce.s2.small"

  "name" = "nbcluster"

  "subnet_id" = "1d622324-30f9-44dc-ab9b-4c17bf88f8dc"

  "vpc_id" = "1fd7a904-2367-4a43-ae49-1351588387d6"
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
