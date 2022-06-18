Provisioning a new site

========================

## Required packages:

* nginx
* Python 3.6
* virtualenv + pip
* Git

eg, on Ubuntu:

    sudo add-apt-repository ppa:fkrull/deadsnakes
    sudo apt-get install nginx git python36 python3.6-venv

## Nginx Virtual Host config

* see  nginx.template.conf
* replace SITENAME with, e.g, staging.my-domain.com

## Systemd service

* see gunicorn-systemd.template.service
* replace SITENAME with, e.g., staging.my-domain.com
* /etc/systed/system/<service_name>.service
    sudo systemctl daemon-reload
    sudo systemctl enable <service_name>.service
    sudo systemctl start <service_name>
* check journal for errors
    sudo journalctl -u <service_name>
    systemd-analyze verify /path/to/my.service

## Folder  structure:
Assume we have a user account at /home/username

/home/username
├── database
├── source
├── static
└── venv
