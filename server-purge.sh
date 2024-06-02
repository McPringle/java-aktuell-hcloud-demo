set -e
hcloud context use demo-project
hcloud primary-ip disable-protection demo-ipv4
hcloud primary-ip disable-protection demo-ipv6
hcloud primary-ip delete demo-ipv4
hcloud primary-ip delete demo-ipv6
