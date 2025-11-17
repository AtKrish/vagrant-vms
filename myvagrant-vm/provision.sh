  #!/bin/bash
set -euo pipefail

# Update package metadata and upgrade all installed packages
sudo dnf update -y

# Install Apache HTTP Server
sudo dnf install -y httpd

# Enable httpd to start on boot and start it now
sudo systemctl enable --now httpd

# Save memory usage snapshot
cat /home/python.py > /home/vagrant/memory_info.txt

# Save disk usage snapshot
df -h > /home/vagrant/disk_info.txt


