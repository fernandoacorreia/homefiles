#!/bin/bash
set -o nounset -o errexit -o pipefail

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

missing_executable() {
  local executable=$1
  ! which $executable >/dev/null 2>&1
}

install_prerequisites() {
  if missing_executable sudo; then
    echo "Installing sudo"
    apt update
    apt install --yes sudo
  fi
  if missing_executable add-apt-repository; then
    echo "Installing add-apt-repository"
    sudo apt update
    sudo apt install --yes software-properties-common
  fi
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
cd "$SCRIPT_DIR"
install_prerequisites
install_ansible
apply_playbook
echo "Finished setting up machine"
