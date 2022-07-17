resource "google_compute_instance" "compute_instance" {
  count=length(var.subnet_first)
  name                      = var.subnet_first[count.index] # name your instance
  machine_type              = var.machine_type            # enter machine type
  zone                      = var.zone                    # enter zone of instance
  allow_stopping_for_update = true                        # no version update

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network     = google_compute_network.network.name # enter if there is any vpc
    subnetwork = google_compute_subnetwork.subnetwork.subnets[0]
    access_config {
      # ephemeral ip or if there's any static ip provide here
    }
  }
}