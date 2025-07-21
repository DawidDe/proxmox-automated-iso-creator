FROM debian:bookworm-slim

WORKDIR /app
COPY . .
RUN apt update && \
    apt install -y gnupg curl && \
    curl -fsSL https://enterprise.proxmox.com/debian/proxmox-release-bookworm.gpg | \
        gpg --dearmor -o /etc/apt/trusted.gpg.d/proxmox-release.gpg && \
    echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list && \
    apt update && \
    apt install -y proxmox-auto-install-assistant && \
    mkdir /iso

RUN chmod +x /app/proxmox-auto-install-assistant.sh

ENTRYPOINT [ "/app/proxmox-auto-install-assistant.sh" ]