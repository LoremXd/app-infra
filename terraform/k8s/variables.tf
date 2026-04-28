variable "proxmox_api_url" {
	type = string
}

variable "vault_url" {
	type = string
}

variable "vault_access_token" {
	type = string
}

variable "vm_configs" {
	type = map(object({
                vm_id = number
                name = string
                cores = number
		sockets = number
                memory = number
		balloon = number
		disk_size = string
		clone_img = string
                vm_state = string
	}))
}
