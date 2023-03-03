# budibase-platform

## Instructions

1. Start a new server (Ubuntu is tested, you are on your own with any other distro)
1. Setup DNS (this repo uses `dnsChallenge`, aka `DNS-01 challenge` and a list of [compatible providers are available here](https://doc.traefik.io/traefik/https/acme)... we use cloudflare as it is free):
   - your new server ip -> budibase.example.com
   - your new server ip -> *.budibase.example.com
1. Setup user (if needed)
   - Login via ssh (assuming root user, if not you can probably skip this section)
   - Create non-root user: `adduser --disabled-password ubuntu`
   - Give them sudo access: `usermod -aG sudo ubuntu`
   - Optionally, passwordless sudo access: `visudo` && overwrite line: `%sudo   ALL=(ALL) NOPASSWD:ALL`
   - Optionally, disallow root ssh login: `nano /etc/ssh/sshd_config` && overwrite line: `PermitRootLogin no` && `systemctl restart sshd`
1. Login via ssh and non-root user: `ssh ubuntu@budibase.example.com`
1. Update packages: `sudo apt update && sudo apt dist-upgrade`
1. Install latest [Docker and Compose](https://docs.docker.com/engine/install/ubuntu/)
1. Clone repo: `git clone https://github.com/dnk8n/budibase-platform.git`
1. Navigate to repo: `cd budibase-platform`
1. Copy .env.tpl as .env and edit: `cp .env.tpl .env` && edit passwords, and relevant variables for docker-compose.override.yaml (follow comments which contain further detail)
1. `docker compose up -d`
1. If all went well Budibase should be available at the domain you configured in DNS step

1. If errors, feel free to log an issue in the repo issue tracker and I will try assist.
