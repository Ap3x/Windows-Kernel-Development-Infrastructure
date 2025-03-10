terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }
}

provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "https://${var.proxmox_domain}/api2/json"
    pm_api_token_id = "${var.proxmox_user}@pve!${var.proxmox_token_name}"
    pm_api_token_secret = var.proxmox_token_secret
}