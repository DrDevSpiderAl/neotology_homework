resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name = var.vpc_name
  zone = var.default_zone
  network_id = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image #"ubuntu-2004-lts"
}
resource "yandex_compute_instance" "platform" {
  name = local.vm_web_ins_name #"netology-develop-platform-web"
  platform_id = var.vm_web_platform_id #"standard-v3"
  resources {
    cores = var.vms_resources.web.cores
    memory = var.vms_resources.web.memory 
    core_fraction = var.vms_resources.web.core_fraction
    
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_preemptible #true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat = var.vm_web_interface_nat #true
  }

  metadata = var.vms_metadata["default"]

}


resource "yandex_vpc_network" "db_net" {
  name = var.vpc_name_db
}
resource "yandex_vpc_subnet" "db_sub" {
  name = var.vpc_name_db
  zone = var.default_zone_db
  network_id = yandex_vpc_network.db_net.id
  v4_cidr_blocks = var.vm_db_cidr
}


resource "yandex_compute_instance" "platform_db" {
  name = local.vm_web_ins_name 
  platform_id = var.vm_db_platform_id
  zone = var.default_zone_db
  resources {
    cores = var.vms_resources.db.cores
    memory = var.vms_resources.db.memory 
    core_fraction = var.vms_resources.db.core_fraction
    
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_db_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.db_sub.id
    nat = var.vm_db_interface_nat
  }

  metadata = var.vms_metadata["default"]

}
