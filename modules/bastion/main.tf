
resource "google_compute_instance" "bastion" {
  project      = ${var.project_id}
  zone         = ${var.region}
  name         = "bastion"
  machine_type = "f1-micro"
  tags         = ["bastion-tag", "allow-ssh"]

  metadata_startup_script = "sudo apt-get update"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network    = "${module.vpc.network}"
    subnetwork = "${module.vpc.subnet}"
  }
  
  scheduling {
    # 料金を抑えるためにプリエンティブル
    preemptible       = true
    # プリエンティブルにするために下記も設定
    automatic_restart = false    
  }

  metadata = {
    enable-oslogin = "TRUE"
  }
  
}
