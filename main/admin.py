from django.contrib import admin
from .models import *

# Register your models here.
class ICOAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'proj_desc','ticker','token_price')
class ATSDAdmin(admin.ModelAdmin):
    list_display = ('ico', 'atsd_name', 'atsd_value')
class SCREEN_SHOTAdmin(admin.ModelAdmin):
	list_display=('ico','pic_url')
class ADLINKAdmin(admin.ModelAdmin):
	list_display=('ico','link_name','link_value','link_type')
class REVIEWAdmin(admin.ModelAdmin):
	list_display=('ico','review_option','review_option_value')
admin.site.register(ICO, ICOAdmin)
admin.site.register(ATSD,ATSDAdmin)
admin.site.register(ADLINK,ADLINKAdmin)
admin.site.register(REVIEW,REVIEWAdmin)
admin.site.register(SCREEN_SHOT,SCREEN_SHOTAdmin)
