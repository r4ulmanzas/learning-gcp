resource "google_compute_network" "vm_vpc" {
  name                    = "vm-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vm_subnet" {
  name          = "vm-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vm_vpc.id
}

resource "google_compute_address" "public_static_ip_address" {
  name         = "publicforvminstance" # can't have a dash
  address_type = "EXTERNAL"
  region       = "us-central1"
}
