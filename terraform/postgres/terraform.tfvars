vm_configs = {
        pg-1 = {
                vm_id = 105
                name = "pg-1"
                cores = 2
                sockets = 1
                memory = 2048
		balloon = 2048
                disk_size = "15G"
                clone_img = "CentOS-GenericCloud-9"
                vm_state = "running"
        }
        pg-2 = {
                vm_id = 106
                name = "pg-2"
                cores = 2
                sockets = 1
                memory = 2048
		balloon = 2048
                disk_size = "15G"
                clone_img = "Ubuntu24.04-minimal-cloud"
                vm_state = "running"
        }
}
