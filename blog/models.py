from django.db import models
import datetime
# Create your models here.
class News(models.Model):
	class Meta:
		verbose_name_plural = "News"
	title = models.CharField(verbose_name="Title",max_length = 100)
	photo = models.FileField(upload_to='News/Photo',blank=True, null=True)
	movie_url = models.CharField(max_length = 100,blank=True, null=True)
	content = models.TextField()
	created_at = models.DateTimeField(verbose_name="Created Time",auto_now_add=True)
	updated_at = models.DateTimeField(verbose_name="Updated Time",auto_now=True)
	sponsor = models.CharField(verbose_name="sponsor",max_length = 20,default="SPONSOR")
	def date_info(self):
		today = datetime.datetime.now()
		native = self.updated_at.replace(tzinfo=None)
		diff = today-native
		hours = diff.days *24 + diff.seconds//3600
		print(hours)
		return hours
	def __str__(self):
		return self.title