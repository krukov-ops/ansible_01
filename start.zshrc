docker compose up -d
ansible -i playbook/inventory/prod.yml ubuntu -m raw -a "apt update && apt install -y python3"
ansible-playbook -i playbook/inventory/prod.yml playbook/site.yml
