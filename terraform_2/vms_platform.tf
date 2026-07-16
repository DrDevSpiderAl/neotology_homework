variable "vm_web_image" {
  type = string
  default = "ubuntu-2004-lts"
  description = "Image VPC"
}

variable "vm_web_computer_name" {
  type = string
  default = "netology-develop-platform-web"
  description = "VPC name"
}

variable "vm_web_platform_id" {
  type = string
  default = "standard-v3"
  description = "VPC platform id yandex cloud"
}
/*
variable "vm_web_cores" {
  type = number
  default = 2
  description = "VPC core"
}


variable "vm_web_memory" {
  type = number
  default = 1
  description = "VPC memory"
}

variable "vm_web_core_fraction" {
  type = number
  default = 20
  description = "VPC core fraction"
}
*/
variable "vm_web_preemptible" {
  type = bool
  default = true
  description = "VPC value preemptible"
}

variable "vm_web_interface_nat" {
  type = bool
  default = true
  description = "interface VPC NAT"
}


# vm_db vars

variable "vm_db_image" {
  type = string
  default = "ubuntu-2004-lts"
  description = "Image VPC"
}

variable "vm_db_computer_name" {
  type = string
  default = "netology-develop-platform-db"
  description = "VPC name"
}

variable "vm_db_platform_id" {
  type = string
  default = "standard-v3"
  description = "VPC platform id yandex cloud"
}

/*
variable "vm_db_cores" {
  type = number
  default = 2
  description = "VPC core"
}


variable "vm_db_memory" {
  type = number
  default = 2
  description = "VPC memory"
}

variable "vm_db_core_fraction" {
  type = number
  default = 20
  description = "VPC core fraction"
}
*/
variable "vm_db_preemptible" {
  type = bool
  default = true
  description = "VPC value preemptible"
}

variable "vm_db_interface_nat" {
  type = bool
  default = true
  description = "interface VPC NAT"
}

variable "vm_db_zone" {
  type    = string
  default = "ru-central1-b"
}

variable "vms_resources" {
    type = map(object({
      cores = number
      memory = number
      core_fraction = number
    }))
    default = {
      web = {
        cores = 2
        memory = 1
        core_fraction = 20
      }
      db = {
        cores = 2
        memory = 2
        core_fraction = 20
      }

    }
  
}
variable "vms_metadata" {
  type = map(object({
    serial-port-enable = number
    ssh-keys = string
  }))
  default = {
    default = {
      serial-port-enable = 1
      ssh-keys = "ubuntu:ssh-rsa AAAAB3NzaC1.."
    }
  }
  description = "Metadata for all VMs"
}