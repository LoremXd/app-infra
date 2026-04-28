vm_configs = {
        kube-master-1 = {
                vm_id = 100
                name = "kube-master-1"
                cores = 4
                sockets = 1
                memory = 8192
		balloon = 4096
                disk_size = "32G"
                clone_img = "Ubuntu24.04-minimal-cloud"
                vm_state = "running"
        }
        kube-node-1 = {
                vm_id = 101
                name = "kube-node-1"
                cores = 2
                sockets = 1
                memory = 4096
		balloon = 2048
                disk_size = "32G"
                clone_img = "Ubuntu24.04-minimal-cloud"
                vm_state = "running"
        }
        kube-node-2 = {
                vm_id = 102
                name = "kube-node-2"
                cores = 2
                sockets = 1
                disk_size = "32G"
                memory = 4096
		balloon = 2048
                clone_img = "Ubuntu24.04-minimal-cloud"
                vm_state = "running"
        }
}
