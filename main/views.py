from django.shortcuts import render,get_object_or_404
from .models import *
import datetime
import requests

# Create your views here.

def index(request):
	icos = ICO.objects.all()
	today = datetime.datetime.today()
	active_icos = icos.filter(token_sale_open__lte=today,token_sale_close__gte=today)
	upcoming_icos = icos.filter(token_sale_open__gt=today)
	ended_icos = icos.filter(token_sale_close__lt=today)
	return render(request,'main/main.html',{'active_icos':active_icos,'upcoming_icos':upcoming_icos,'ended_icos':ended_icos})

def ico_detail(request,pkd):
	today = datetime.datetime.today()
	icos = ICO.objects.all()
	ico = get_object_or_404(ICO,pk=pkd)	
	active_icos = icos.filter(token_sale_open__lte=today,token_sale_close__gte=today)
	upcoming_icos = icos.filter(token_sale_open__gt=today)
	ended_icos = icos.filter(token_sale_close__lt=today)
	other_icos = []
	if ico.status() == "active":
		other_icos = active_icos.exclude(pk = pkd)
	elif ico.status() == "upcoming":
		print("upcoming")
		other_icos = upcoming_icos.exclude(pk = pkd)
	elif ico.status() == "ended":
		other_icos = ended_icos.exclude(pk = pkd)
	print(other_icos)
	return render(request,'main/ico_detail.html',{'ico':ico,'other_icos':other_icos})

def search_ico(request):
	if request.method == 'GET': # this will be GET now      
		ico_name =  request.GET.get('search_ico') # do some research what it does    
		if(ico_name is not None):
			# try:
			icos = ICO.objects.filter(name__icontains=ico_name) # filter returns a list so you might consider skip except part
			return render(request,"main/search.html",{'icos':icos,'search_name':ico_name})
	return render(request,"main/search.html",{"icos":None,"search_name":""})

def show_by_category(request,category):
	category_icos = []
	icos = ICO.objects.all()
	today = datetime.datetime.today()
	category_type = category
	if(category == "active"):
		category_icos = icos.filter(token_sale_open__lte=today,token_sale_close__gte=today)
	elif(category == "upcoming"):
		category_icos = icos.filter(token_sale_open__gt=today)
	elif(category=="ended"):
		category_icos = icos.filter(token_sale_close__lt=today)
	else:
		category_type = "Undefined Category"
	return render(request,'main/category.html',{'icos':category_icos,'category_type':category_type})

def about(request):
	return render(request,'main/about.html')

def adver(request):
	return render(request,'main/adver.html')