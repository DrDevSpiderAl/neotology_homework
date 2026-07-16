locals {
  vm_web_ins_name = "${var.vm_web_computer_name}-${var.vm_web_platform_id}-${var.default_zone}"
  vm_db_ins_name  = "${var.vm_db_computer_name}-${var.vm_db_platform_id}-${var.default_zone_db}"
}