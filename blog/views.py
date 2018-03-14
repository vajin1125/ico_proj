from django.shortcuts import render
from .models import *
# Create your views here.
def index(request,id = 1):
	news = News.objects.all()
	size = len(news)
	id = int(id)
	if(news):
		news = news[id-1]
	return render(request,'blog/news.html',{'news':news,'size':size})