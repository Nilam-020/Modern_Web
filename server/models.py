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

