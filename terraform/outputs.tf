output "server_mac_address" {
 value = proxmox_vm_qemu.win_server.network[0].macaddr 
}