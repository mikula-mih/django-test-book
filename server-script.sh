#!bin/bash

export SITENAME=superlists-staging.ottg.eu

echo $SITENAME

mkdir -p ~/sites/$SITENAME/database
mkdir -p ~/sites/$SITENAME/static

cd ~/sites/$SITENAME

python3.10 -m venv venv

source venv/bin/activate

~/sites/$SITENAME/venv/bin/python3.10 -m pip install --upgrade pip

git clone https://github.com/mikula-mih/django-test-book.git ~/sites/$SITENAME/source

pip install -r ~/sites/$SITENAME/source/requirements.txt

cd ~/sites/$SITENAME/source

python manage.py migrate --noinput
python manage.py collectstatic --noinput
#python manage.py runserver 192.168.1.253:8080
#python manage.py runserver
~/sites/#SITENAME/venv/bin/gunicorn superlists.wsgi:application
