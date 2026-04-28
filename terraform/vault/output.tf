output "vms_ip" {
	value = { for data in proxmox_vm_qemu.create_vms: data.name => data.default_ipv4_address }
} 
