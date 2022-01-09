
module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 3.0"
  
  project_id   = "${var.project_id}"
  network_name = "gke-nw-${var.env}"

  subnets = [
    {
      subnet_name      = "${var.env}-subnet-01"
      subnet_ip        = "${var.subnet}"
      subnet_region    = "${var.region}"
      subnet_flow_logs = "false"
      description      = "This is subnet for GKE cluster network"
    }
  ]
}
