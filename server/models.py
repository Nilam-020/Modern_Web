from django.conf import settings
from django.db import models


# Create your models here.
class ContactForm(models.Model):
    conName = models.CharField(max_length=100)
    conEmail = models.CharField(max_length=100)
    conComment = models.TextField()


class Newsletter(models.Model):
    newsName = models.CharField(max_length=100)
    newsEmail = models.CharField(max_length=100)


# comment form of blog_details
class CommentForm(models.Model):
    blogName = models.CharField(max_length=100)
    blogEmail = models.CharField(max_length=100)
    blogSubject = models.CharField(max_length=100)
    blogMessage = models.TextField()


# about section
class About(models.Model):
    about_work = models.CharField(max_length=255)
    about_para = models.TextField()
    about_parabody = models.TextField()
    about_parafoot = models.TextField()
    aboutimg = models.FileField(upload_to='pics')


class Portfolio(models.Model):
    portfolioImg = models.FileField(upload_to='pics')
    portfolioDesc = models.CharField(max_length=255)
    portfolioPara = models.CharField(max_length=255)

class Tools(models.Model):
    toolname = models.CharField(max_length=100)
    toollist = models.IntegerField(3)
    toolvalue = models.IntegerField(3)

class Services(models.Model):
    icon = models.CharField(max_length=100)
    title = models.CharField(max_length=100)
    desc = models.TextField()

class OurTeam(models.Model):
    pic = models.FileField(upload_to='pics')
    title = models.CharField(max_length=100)
    rank = models.CharField(max_length=100)
    desc = models.TextField()
    facebook = models.TextField()
    twitter = models.TextField()
    insta = models.TextField()


class testimonial(models.Model):
    pic = models.FileField(upload_to='pics')
    title = models.CharField(max_length=50)
    rank = models.CharField(max_length=100)
    star1 = models.BooleanField()
    star2 = models.BooleanField()
    star3 = models.BooleanField()
    star4 = models.BooleanField()
    star5 = models.BooleanField()
    desc =models.TextField()


class blog_desc(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE,default=1)
    subject = models.CharField(max_length=50)
    writer = models.CharField(max_length=100)
    date = models.DateField()
    pic = models.FileField(upload_to='pics')
    title = models.CharField(max_length=255)
    desc = models.TextField()
    descfoot = models.TextField()


class category_detail(models.Model):
    img = models.FileField(upload_to='pics')
    heading = models.CharField(max_length=100)
    desc = models.CharField(max_length=255)


class sidebar_author(models.Model):
    img = models.FileField(upload_to='pics')
    name = models.CharField(max_length=100)
    post = models.CharField(max_length=50)
    facebook = models.TextField()
    twitter = models.TextField()
    github = models.TextField()
    linkedin = models.TextField()
    desc = models.TextField()


class post_category(models.Model):
    title = models.CharField(max_length=100)
    count = models.IntegerField()


class ads(models.Model):
    img = models.FileField(upload_to='pics')


class blog_detailsdesc(models.Model):
    topic =models.CharField(max_length=100)
    author =models.CharField(max_length=100)
    facebook = models.TextField()
    twitter = models.TextField()
    github = models.TextField()
    linkedin = models.TextField()
    bannerimg = models.FileField(upload_to='pics')
    bodyhead = models.TextField()
    quote = models.TextField()
    imgright = models.FileField(upload_to='pics')
    imgleft = models.FileField(upload_to='pics')
    bodyfoot = models.TextField()
