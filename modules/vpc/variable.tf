variable "project_id" {
  description = "The project ID to create the cluster"
}

variable "region" {
  description = "The region to create the cluster"
}

variable "subnet" {
  description = "VPC network subnet"
}

variable "env" {
  description = "select a branch(prod/dev) "
}
