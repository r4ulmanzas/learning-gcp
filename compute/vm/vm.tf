data "google_compute_image" "instance_image" {
  family  = "ubuntu-2204-lts"
  project = "ubuntu-os-cloud"
}

resource "google_compute_instance" "instance" {
  name         = "first-instance"
  machine_type = "e2-micro" # see https://cloud.google.com/dataproc/docs/concepts/compute/supported-machine-types
  zone         = "us-central1-c"

  boot_disk {
    initialize_params {
      image = data.google_compute_image.instance_image.self_link
    }
  }

  network_interface {
    network    = google_compute_network.vm_vpc.self_link
    subnetwork = google_compute_subnetwork.vm_subnet.self_link
  }
}
