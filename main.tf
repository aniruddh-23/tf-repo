provider "google"{
        project="excellent-zoo-323604"
        # credentials = "keys.json"
        region = "us-central1"
}
resource "google_compute_instance" "myvm"{
        name = "myfirstvm"
        machine_type = "f1-micro"
        zone = "us-central1-a"
        network_interface{
                network = "default"
                access_config{}
        }
        boot_disk {
                initialize_params{
                        image = "debian-cloud/debian-10"
                }
        }
}