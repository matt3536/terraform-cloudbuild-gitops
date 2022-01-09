output "network" {
  value = "${module.vpc.network_name}"
}

output "subnet" {
  value = "${module.vpc.subnets_name}"
}
