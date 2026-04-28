terraform {
	required_providers {
		proxmox = {
			source = "telmate/proxmox"
			version = "3.0.2-rc07"
		}
		vault = {
			source = "hashicorp/vault"
			version = "5.8.0"
		}
	}
}

provider "proxmox" {
	pm_api_url = var.proxmox_api_url
	pm_api_token_id = data.vault_kv_secret_v2.proxmox_creds.data["token_id"]
	pm_api_token_secret = data.vault_kv_secret_v2.proxmox_creds.data["token"]
}

provider "vault" {
	address = var.vault_url
	token = var.vault_access_token
}
