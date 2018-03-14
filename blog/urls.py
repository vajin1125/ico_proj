from django.conf.urls import url,include
from django.contrib import admin

from . import views
app_name = "blog"
urlpatterns = [
    url(r'^$', views.index,name="initial_home"),
    url(r'^(?P<id>\d+)', views.index,name="home"),
]
