# proxmox-automated-iso-creator

**proxmox-automated-iso-creator** is a lightweight Docker-based tool that builds a fully automated Proxmox VE installation ISO using [proxmox-automated-installer-assistant]. It leverages a minimal Debian Bookworm Slim image and requires minimal setup.

---

## Features

- ✅ Automatically downloads the latest Proxmox VE ISO
- ✅ Uses `proxmox-automated-installer-assistant` to create a custom automated ISO
- ✅ Containerized and reproducible build environment
- ✅ Lightweight base image: Debian Bookworm Slim
- ✅ External configuration using a mounted `answer.toml`

---

## Requirements

- Docker
- A directory containing an `answer.toml` configuration file

---

## Usage

1. **Prepare your configuration**

   Create an `answer.toml` file that matches the format expected by `proxmox-automated-installer-assistant`.

2. **Run the container**

   ```bash
   docker run --rm \
     -v /path/to/your/answer:/iso \
     proxmox-automated-iso-creator
