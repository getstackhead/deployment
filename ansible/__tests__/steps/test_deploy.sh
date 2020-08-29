#!/bin/bash
# This test deploys a container project onto the target server
# IMPORTANT: This must run after test_provision.sh!

INVENTORY_PATH=${GITHUB_ACTION_PATH}/ansible/__tests__/inventory.yml
sed -e "s/\${ipaddress}/${INPUT_IPADDRESS}/" -e "s/\${webserver}/${INPUT_WEBSERVER}/" -e "s/\${container}/${INPUT_CONTAINER}/" -e "s/\${application}/container/" "${GITHUB_ACTION_PATH}/ansible/__tests__/inventory.dist.yml" > "${INVENTORY_PATH}"
sed -e "s/\${domain}/${INPUT_DOMAIN}/" -e "s/\${domain2}/${INPUT_DOMAIN2}/" "${GITHUB_ACTION_PATH}/ansible/__tests__/projects/container.dist.yml" > "${GITHUB_ACTION_PATH}/ansible/__tests__/projects/container.yml"

TEST=1 ansible-playbook "${GITHUB_ACTION_PATH}/ansible/playbooks/application-deploy.yml" -i "${INVENTORY_PATH}" -vv
