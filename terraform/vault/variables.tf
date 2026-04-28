variable "proxmox_api_url" {
	type = string
}

variable "proxmox_api_token_id" {
	type = string
}

variable "proxmox_api_token_secret" {
	type = string
}

variable "ciuser" {
	type = string
}

variable "cipassword" {
	type = string
}

variable "ssh_keys" {
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
