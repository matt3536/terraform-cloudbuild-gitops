locals {
  env = "dev"
}


module "vpc" {
  source = "../modules/vpc"
  project = "${var.project_id}"
  env = "${local.env}"
}

module "bastion" {
  source = "../modules/bastion"
  project = "${var.project_id}"
  subnet = "${module.vpc.subnet}"
}
