from django.conf.urls import url,include
from django.contrib import admin

from . import views
app_name = "main"
urlpatterns = [
    url(r'^$', views.index,name="home"),
    url(r'^detail/(?P<category>\w{0,50})/(?P<name>\w{0,50})/',views.ico_detail,name = "detail"),
    url(r'^category/(?P<category>\w{0,50})/',views.show_by_category,name="category"),
    url(r'^search/',views.search_ico,name="search"),
    url(r'^about/',views.about,name="about"),
    url(r'^adver/',views.adver,name="adver"),
    url(r'^news/',views.news,name="news"),
]
