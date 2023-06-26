NOTES FOR ECOMMERCE 
===================================================================================================
django setups:

python.exe -m pip install --upgrade pip

cd C:\Users\YourUsername\Desktop\project_folder

python -m venv myenv

myenv\Scripts\activate

pip install django

django-admin startproject myproject .

python manage.py runserver

python manage.py startapp myapp
    
pip install mysqlclient
python -m pip install mysqlclient.
python manage.py makemigrations

python manage.py  migrate

pip  install pillow


python manage.py createsuperuser



 
===================================================================================================


folders
========


myvenv
myproject
myapp
bd.sqlite3
manage.py



C:\Users\karth\django_ecommerce\myapp\templates\shop\index.html
C:\Users\karth\django_ecommerce\myapp\templates\shop\register.html
C:\Users\karth\django_ecommerce\myapp\templates\shop\cart.html
C:\Users\karth\django_ecommerce\myapp\templates\shop\collections.html
C:\Users\karth\django_ecommerce\myapp\templates\shop\fav.html
C:\Users\karth\django_ecommerce\myapp\templates\shop\login.html
=================================

add database mysqlclient


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'ecommerce',
        'HOST':'localhost',
        'USER':'root',
        'PASSWORD':'',
        'PORT':'3306'
    }
}

============================================
add appname in settings.py file installed app

====================================================

add urls.py for your app
 need  to link  project urls..
 after no need to add our urls in project urls after we linked into app url..
 dirctly we can acces our url from app

project url changes
from django.urls import path,include
path('',include('myapp.urls')),

app url changes 
from django.urls import path
urlpatterns= []



============================================================


templates\shop\index.html
{% extends 'shop/layouts/main.html' %}   it inherit the main.html template file in the html 




below body 
  {% include 'shop/inc/navbar.html' %} in main.html

==============================================================


add directory for sttic folder and image
STATIC_URL = 'static/'
 
MEDIA_URL='/images/'
MEDIA_ROOT=BASE_DIR/'static'



========================================================================

models .py 


from django.db import models  // connect the db

import datetime //image overwrite issue solving we create fn to add time and date in imagge file
import os   //path acesss