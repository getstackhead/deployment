# Playbooks

The playbooks below are available to be run via `ansible-playbook`:

```bash
ansible-playbook $ANSIBLE_COLLECTION_PATH/getstackhead/stackhead/playbooks/[file] -i path/to/inventory.yml
```

{% hint style="info" %}
`$ANSIBLE_COLLECTION_PATH` refers to the location where your Ansible collections are being installed to.
Per default this should be `~/.ansible/collections/ansible_collections/`.
{% endhint %}

| File | Description |
| :--- | :--- |
| server-provision.yml | Perform [server setup](workflow.md) on all servers in inventory file |
| server-check.yml | Outputs versions of installed software |
| application-deploy.yml | Perform [project deployment](workflow.md) for all servers in inventory file |
| application-destroy.yml | Remove all containers and Nginx configurations of a project. Pass in the project name with `--extra-vars "project_name=PROJECTNAME"` |

