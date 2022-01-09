
variable "project_id" {
  type        = string
  description = "The project ID to create the cluster"
}

variable "region" {
  type        = string
  description = "The region to create the cluster"
}

variable "subnet" {
  description = "VPC network subnet"
}

# variable "zone" {
#   type        = string
#   description = "The zone to create the cluster"
# }

# variable "cluster_version" {
#   type        = string
#   description = "Version of the cluster to be created"
# }

# variable "cluster_name" {
#   type        = string
#   description = "Name of the cluster to be created"
# }

# variable "network" {
#   type        = string
#   description = "VPC network"
# }

# variable "subnet" {
#   type        = string
#   description = "VPC network subnet"
# }

# variable "subnet_ip_range" {
#   type        = string
#   description = "VPC network subnet's ip range"
# }

# variable "ip_range_pods" {
#   type        = string
#   description = "The secondary ip range to use for pods"
# }

# variable "ip_range_services" {
#   type        = string
#   description = "The secondary ip range to use for services"
# }

# variable "machine_type" {
#   type        = string
#   description = "Type of the node compute engins"
# }

# variable "min_count" {
#   type        = number
#   description = "Minimum number of nodes in the NodePool. Must be >=0 and <= max_node_count."
# }

# variable "max_count" {
#   type        = number
#   description = "Maximum number of nodes in the NodePool. Must be >= min_node_count."
# }

# variable "disk_size_gb" {
#   type        = number
#   description = "Size of the node's disk."
# }

# variable "service_account" {
#   type        = string
#   description = "The service account to run nodes as if not overridden in `node_pools`. The create_service_account variable default value (true) will cause a cluster-specific service account to be created."
# }
