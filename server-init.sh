set -e
hcloud context use demo-project
hcloud primary-ip create --datacenter nbg1-dc3 --enable-protection delete --type ipv4 --name demo-ipv4
hcloud primary-ip create --datacenter nbg1-dc3 --enable-protection delete --type ipv6 --name demo-ipv6
