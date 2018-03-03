from django.shortcuts import render
from .models import *
# Create your views here.
def index(request):
	news = News.objects.all()
	if(news):
		news = news[0]
	print(news)
	return render(request,'blog/news.html',{'news':news})