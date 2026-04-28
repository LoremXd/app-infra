vm_configs = {
        harbor = {
                vm_id = 104
                name = "harbor-1"
                cores = 2
                sockets = 1
                memory = 4096
		balloon = 2048
                disk_size = "100G"
                clone_img = "alse-1.8.5-base"
                vm_state = "running"
        }
}
