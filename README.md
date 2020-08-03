# pve-k8s

Provision 3 lxc nodes k8s cluster on Proxmox using ansible.

Referenced https://github.com/zimmertr/Bootstrap-Kubernetes-with-LXC


## prerequisites 

1. proxmox host 

![](./docs/img/proxmox-host.png)


2. Ansible ready machine [example - setting ansible](./docs/ex_ansible_setting.md)



## Procedures in playbook 

1. provision 3 lxc containers - `provision_3_lxc_ct.yml` 

2. mount shared disks - `mount_shared_disks.yml`

3. install docker - `docker_inside_lxc.yml` 



## Run provisioning

```bash
$ ansible-playbook -e @vars.yml -i inventory.ini build_k8s.yml
```

## Remove provisioned resources 

```bash
$ ansible-playbook -e @vars.yml -i inventory.ini playbooks/delete_all_resources.yml
```

## References 

proxmox pct command [pct manual](https://pve.proxmox.com/pve-docs/pct.1.html)

docker in lxc [docker in lxc](https://discuss.linuxcontainers.org/t/working-install-of-docker-ce-in-lxc-unprivileged-container-in-proxmox/3828)
