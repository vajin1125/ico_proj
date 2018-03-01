from django.db import models
from django.utils.timesince import timesince
import datetime
import os
# Create your models here.
class ICO(models.Model):	
	# logo_pic = models.CharField(max_length = 200)
	logo_pic = models.FileField(upload_to='Logos')
	name = models.CharField(max_length = 200)
	category = models.CharField(max_length = 200)
	proj_desc = models.CharField(max_length = 200)
	movie_url = models.CharField(max_length = 200)	
	site_url = models.CharField(max_length = 200)	
	whitepaper_url = models.CharField(max_length = 200)
	# token_sale_detail
	ticker = models.CharField(max_length = 200)
	token_type = models.CharField(max_length = 20)
	token_price = models.CharField(max_length = 200)
	token_sale_open = models.DateField()
	token_sale_close = models.DateField()
	fundraising_goal = models.CharField(max_length = 200)
	total_tokens = models.CharField(max_length = 200)
	accepts = models.CharField(max_length = 200)
	interest_type = (        
        ('Not Rated', 'Not Rated'),
        ('Neutral', 'Neutral'),
        ('Low', 'Low'),
        ('Medium', 'Medium'),
        ('High', 'High'),
        ('Sponsored', 'Sponsored'),
    )
	interest = models.CharField(max_length = 10,choices = interest_type,default = 'Not Rated')
	market = models.CharField(max_length = 30,null=True, blank=True)
	def __str__(self):
		return  self.name
	def date_info(self):
		today = datetime.date.today()
		if(self.token_sale_open>today):	#upcoming
			return self.token_sale_open.strftime("%d %b")
		if(self.token_sale_close<today): #ended
			return self.token_sale_close
		return (self.token_sale_close-today).days
	def status(self):
		today = datetime.date.today()
		if(self.token_sale_open>today):	#upcoming
			return "upcoming"
		if(self.token_sale_close<today): #ended
			return "ended"
		return "active"
	def social_links(self):
		sl = self.adlink_set.all().filter(link_type="social")
		return sl
	def AdditionalTokenSaleDetails(self):
		return self.atsd_set.all()
	def Reviews(self):
		return self.review_set.all()
	def ScreenShots(self):
		return self.screen_shot_set.all()
	def KYC(self):
		res = self.atsd_set.filter(atsd_name__icontains='Know Your Customer')
		if res:
			res = res[0].atsd_value
		else:
			res = 'No'
		return res
	def white_list(self):
		res = self.atsd_set.filter(atsd_name__icontains='Whitelist')
		if res:
			res = res[0].atsd_value
		else:
			res = 'No'
		return res		
	def participate(self):
		res = self.atsd_set.filter(atsd_name__icontains='participate')
		if res:
			res = res[0].atsd_value
		else:
			res = 'No'
		return res		
	def bounty(self):
		res = self.atsd_set.filter(atsd_name__icontains='bounty')
		if res:
			res = res[0].atsd_value
		else:
			res = 'No'
		return res	
	def bounus(self):
		res = self.atsd_set.filter(atsd_name__icontains='bonus')
		if res:
			res = res[0].atsd_value
		else:
			res = 'No'
		return res
	# available_token_sale = models.CharField(max_length = 20)
	# not_participate = models.CharField(max_length = 200)
	# min_max_person_cap = models.CharField(max_length = 200)
	# token_distribution = models.CharField(max_length = 200)
	
	# bonus = models.CharField(max_length = 200)
	# pre_sale = models.CharField(max_length = 200)
class ATSD(models.Model): # Additional Token Sale Detail
	class Meta:
		verbose_name = "Additional Token Sale Detail"
	ico = models.ForeignKey(ICO, on_delete=models.CASCADE)
	atsd_name = models.CharField(max_length = 200)
	atsd_value = models.CharField(max_length = 200)
	def __str__(self):
		return  self.ico.name
class ADLINK(models.Model):
	class Meta:
		verbose_name = "Additional Link"
	ico = models.ForeignKey(ICO, on_delete=models.CASCADE)
	link_name = models.CharField(max_length = 200)
	link_value = models.CharField(max_length = 200)
	link_str = (('not social','not social'),('social','social'))
	link_type = models.CharField(max_length = 20,choices = link_str)	# social, not_social
	def __str__(self):
		return  self.ico.name
class REVIEW(models.Model):
	class Meta:
		verbose_name = "Review"
	ico = models.ForeignKey(ICO,on_delete=models.CASCADE)
	review_option = models.CharField(max_length = 200)
	review_option_value = models.CharField(max_length = 200)
	def __str__(self):
		return  self.ico.name
class SCREEN_SHOT(models.Model):
	class Meta:
		verbose_name = "Screen Shot"
	ico = models.ForeignKey(ICO, on_delete=models.CASCADE)
	# pic_url = models.CharField(max_length = 200)
	pic_url = models.FileField(upload_to='ScreenShots')
	def file_name(self):
		tmp_url = os.path.basename(self.pic_url.url)
		name, extension = os.path.splitext(tmp_url)
		return name
	def __str__(self):
		return  self.ico.name

