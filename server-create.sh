set -e
hcloud context use demo-project
hcloud firewall create --name demo-firewall --rules-file firewall-config.json
hcloud server create --primary-ipv4 demo-ipv4 --primary-ipv6 demo-ipv6 --datacenter nbg1-dc3 --image debian-12 --name demo-server --ssh-key demo-ssh-key --type cpx11 --firewall demo-firewall --user-data-from-file cloud-config.yaml
hcloud server enable-protection demo-server delete rebuild
