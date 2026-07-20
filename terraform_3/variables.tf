###cloud vars
variable "service_key_file" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "instance_names" {
  type    = list(string)
  default = ["web-1", "web-2"]
  description = "Name VPC"
}

variable "vm_web_image" {
  type = string
  default = "ubuntu-2004-lts"
  description = "Name image"
}

variable "platform_id" {
  type = string
  default = "standard-v3"
  description = "Platform vms yandex cloud"
}

variable "disk_size" {
  type = number
  default = 10
  description = "Disk vms count"
}

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
  default = 5
  description = "VPC core fraction"
}

variable "vm_web_preemptible" {
  type = bool
  default = true
  description = "VPC value preemptible"
}

variable "vm_web_interface_nat" {
  type = bool
  default = true
  description = "nat interface vm"
}

/*
variable "vms_metadata" {
  type = string
  default = "Acc"
  description = "ssh-key vm"
  
}
*/

variable "vms_resources" {
  type = object({
    web = object({
      cores         = number
      memory        = number
      core_fraction = number
    })
  })
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
    }
  }
}

variable "each_vm" {
  type = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    disk_volume = number
    core_fraction = number
    platform_id = string
  }))
  default = [
    {
      vm_name     = "main"
      cpu         = 4
      ram         = 4
      disk_volume = 12
      core_fraction = 20
      platform_id = "standard-v3"
    },
    {
      vm_name     = "replica"
      cpu         = 2
      ram         = 2
      disk_volume = 10
      core_fraction = 20
      platform_id = "standard-v3"
    }
  ]
}

variable "extend_disk_storage" {
  type = number
  default = 1
  description = "Disk ext stor vms count"
}

variable "vm_storage_cores" {
  type = number
  default = 2
  description = "VPC core"
}

variable "vm_storage_memory" {
  type = number
  default = 1
  description = "VPC memory"
}

variable "vm_storage_core_fraction" {
  type = number
  default = 20
  description = "VPC memory"
}

variable "vm_storage_boot_disk" {
  type = number
  default = 10
  description = "VPC memory"
}