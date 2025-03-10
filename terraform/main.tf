resource "proxmox_vm_qemu" "win_server" {
  name = var.vm_name
  target_node = var.node_name
  clone = var.vm_template_name
  full_clone = true
  memory = "16384"
  cores = 4

  network {
    bridge = "vmbr0"
    model  = "e1000"
  }

  disk {
    slot = "ide0"
    size    = "100G"
    storage = "local-lvm"
    type    = "disk"
  }

  provisioner "local-exec" {
    command = "echo 'nmap ${var.ip_range_cidr} -sP | grep -A1 ${proxmox_vm_qemu.win_server.network[0].macaddr}'"
  }
}