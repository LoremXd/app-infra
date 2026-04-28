output "vms_ip" {
	value = { for ip in proxmox_vm_qemu.create_vms: ip.name => ip.default_ipv4_address }
}
