resource "proxmox_vm_qemu" "create_vms" {
	for_each = var.vm_configs
	vmid = each.value.vm_id
	name = each.value.name
	target_node = "pve"
	scsihw = "virtio-scsi-single"
	boot = "order=scsi0"
	vm_state = each.value.vm_state
	agent = 1
	clone = each.value.clone_img
	clone_wait = 30
	full_clone = true
	memory = each.value.memory
	balloon = each.value.balloon
	skip_ipv6 = true
	cicustom = "vendor=data:snippets/qemu-guest-agent.yml"
        ciuser = var.ciuser
        cipassword = var.cipassword
        sshkeys = var.ssh_keys

	cpu { 
		cores = each.value.cores
		sockets = each.value.sockets
	}

	serial {
		id = 0
	}

	ipconfig0 = "ip=192.168.80.${each.value.vm_id}/24,gw=192.168.80.147"
	nameserver = "192.168.80.146"
	network {
		id     = 0
		bridge = "vmbr0"
		model  = "virtio"
	}

	disks {
		scsi {
			scsi0 {
				disk {
					storage = "data"
					size    = each.value.disk_size
				}
			}
		}
		ide {
			ide2 {
				cloudinit {
					storage = "data"
				}
			}
		}
	}
}

resource "local_file" "inventory" {
	content = templatefile("./templates/vault-inventory.tftpl", { content = tomap({
		for vm in proxmox_vm_qemu.create_vms:
		vm.name => vm.default_ipv4_address
		})
	})
	filename = "../../ansible/inventory/vault.yml"
	file_permission = "664"
}
