#!/bin/bash
set -o nounset -o errexit

missing_executable() {
  local executable=$1
  ! which $executable >/dev/null 2>&1
}

install_ansible() {
  if missing_executable ansible; then
    echo "Installing Ansible"
    sudo apt update
    sudo apt-add-repository --yes ppa:ansible/ansible
    sudo apt install --yes ansible
  fi
}

echo "Setting up machine"
install_ansible
echo "Finished setting up machine"
