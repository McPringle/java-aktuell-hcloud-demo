set -e
hcloud context use demo-project
hcloud server disable-protection demo-server delete rebuild
hcloud server shutdown demo-server
hcloud server delete demo-server
hcloud firewall delete demo-firewall
