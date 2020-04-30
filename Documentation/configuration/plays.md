---
title: Plays
---

The plays below can be run via ansible-playbook:

```shell script
ansible-playbook [file] -i path/to/inventory.yml
```

| File | Description |
| ---- | ----------- |
| server-provision.yml | Setup required programs on server  |
| server-check.yml | Outputs versions of installed software  |
| application-deploy.yml | Setup application containers and Nginx config. More information on provisioning see [Getting started](../GettingStarted.md) |