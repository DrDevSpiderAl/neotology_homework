###cloud vars


variable "cloud_id" {
  type        = string
  default = "b1g5hhbdfkqbp990bgss"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gqf1t2te6grq09o1fo"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"

}

variable "default_zone_db" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vpc_name_db" {
  type        = string
  default     = "db_net"
  description = "VPC network & subnet name"
}

/*
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

###ssh vars

variable "vms_ssh_public_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3Nz.."
  description = "ssh-keygen -t ssh-rsa"
}
*/