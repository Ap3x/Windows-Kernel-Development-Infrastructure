variable "proxmox_domain" {
    type = string
    nullable = false
}

variable "proxmox_user" {
    default = "root"
    type = string
    nullable = false
}

variable "proxmox_token_name" {
    type = string
    nullable = false
}

variable "proxmox_token_secret" {
    type = string
    nullable = false
}

variable "vm_template_name" {
    default = "Windows10"
    type = string
}

variable "node_name" {
    type = string
}

variable "vm_name" {
    default = "Windows10"
    type = string
}

variable "ip_range_cidr" {
    default = "192.168.1.1/24"
    type = string
}
