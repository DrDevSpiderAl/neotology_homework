resource "yandex_compute_disk" "disk" {
  count = 3

  name = "disk-${count.index + 1}"
  type = "network-hdd"
  zone = var.default_zone
  size = var.extend_disk_storage
}


resource "yandex_compute_instance" "storage" {
  name        = "storage"
  platform_id = var.platform_id
  zone        = var.default_zone

  resources {
    cores         = var.vm_storage_cores
    memory        = var.vm_storage_memory
    core_fraction = var.vm_storage_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size     = var.vm_storage_boot_disk
    }
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.example.id]
  }

  metadata = {
    ssh-keys = "ubuntu:${local.ssh_key}"
  }

  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.disk
    content {
      disk_id = secondary_disk.value.id
    }
  }
}