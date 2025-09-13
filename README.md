# fedora-setup

## Variables

Edit [`variables`](./variables.yml) to match your preferences

## Deps

```
sudo dnf install -y ansible-core python3-psutil
```

```
ansible-galaxy install -r requirements.yml
```

## Run playbook

```
ansible-playbook playbook.yml --ask-become-pass
```
