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

class blog(models.Model):
    subject = models.CharField(max_length=50)
    writer = models.CharField(max_length=100)
    view = models.CharField(max_length=5)
    date = models.DateField()
    pic = models.FileField(upload_to='pics')
    title = models.CharField(max_length=255)
    desc = models.TextField()
    link = models.TextField()



