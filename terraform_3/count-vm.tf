data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image 
}
resource "yandex_compute_instance" "web" {
    count = length(var.instance_names)

    name = var.instance_names[count.index]
    platform_id = var.platform_id
    zone = var.default_zone

    depends_on = [yandex_compute_instance.db]

    resources {
        cores = var.vms_resources.web.cores
        memory = var.vms_resources.web.memory 
        core_fraction = var.vms_resources.web.core_fraction
        }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = var.disk_size
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat = var.vm_web_interface_nat 
    security_group_ids = [yandex_vpc_security_group.example.id]
  }


  metadata = {
    ssh-keys = "ubuntu:${local.ssh_key}"
  }
}