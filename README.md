# Run playbook

```
sudo dnf install -y ansible-core python3-psutil
```

```
ansible-galaxy collection install community.general
```

```
ansible-playbook playbook.yml --ask-become-pass
```
