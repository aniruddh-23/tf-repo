variable "project"{
        type=string
}
provider "google"{
        project="${var.project}"
        # credentials = "keys.json"
        region = "us-central1"
}


resource "google_compute_instance" "myvm2"{
        name = "myvm-one"
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
