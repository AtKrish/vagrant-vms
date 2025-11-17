    #!/bin/bash
    set -euo pipefail

    # Update package metadata and upgrade all installed packages non-interactively.
    sudo dnf update -y

    # Install Apache HTTP Server (httpd) package.
    sudo dnf install -y httpd

    # Enable httpd so it starts on boot and start it now.
    sudo systemctl enable --now httpd

    # Save a snapshot of memory usage (in MB) for diagnostics.
    free -m > /home/vagrant/memory_info.txt

    # Save a snapshot of disk usage (human-readable) for diagnostics.
    df -h > /home/vagrant/disk_info.txt   sudo dnf update -y
