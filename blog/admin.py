from django.contrib import admin
from .models import *
# Register your models here.
class NewsAdmin(admin.ModelAdmin):
    list_display = ('title', 'created_at','updated_at')
    fields = ('title','photo','movie_url','sponsor','content')
admin.site.register(News,NewsAdmin)