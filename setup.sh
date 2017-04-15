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

apply_playbook() {
  echo "Applying Ansible playbook"
  ansible-playbook -i inventory playbook.yml
}

echo "Setting up machine"
install_ansible
apply_playbook
echo "Finished setting up machine"
