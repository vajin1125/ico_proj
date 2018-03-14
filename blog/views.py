from django.shortcuts import render
from .models import *
# Create your views here.
def index(request,id = 0):
	news = News.objects.all()
	size = len(news)
	id = int(id)
	if(news):
		news = news[id]
	return render(request,'blog/news.html',{'news':news,'id':id,'size':size-1})