from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from .models import CommentForm, Portfolio, ContactForm, Newsletter, About
from django.core.files.storage import FileSystemStorage


def home(request):
    # contactform of homepage
    if request.method == "POST":
        contactname = request.POST['conName']
        contactemail = request.POST['conEmail']
        contactcomment = request.POST['conComment']
        cf = ContactForm(conName=contactname, conEmail=contactemail, conComment=contactcomment)
        cf.save()

    # Newsletter
    if request.method == 'POST':
        newsname = request.POST["newsName"]
        newsemail = request.POST["newsEmail"]
        news = Newsletter(newsName=newsname, newsEmail=newsemail)
        news.save()

# portfolio page data fetch
# about page data fetch
    ports = Portfolio.objects.all()
    aboutme = About.objects.all()
    return render(request, 'index.html', {'ports': ports, 'aboutme': aboutme})


def blog(request):
    return render(request, 'blog.html')


def blog_details(request):
    if request.method == 'POST':
        name = request.POST['blogName']
        email = request.POST['blogEmail']
        subject = request.POST['blogSubject']
        comment = request.POST['blogMessage']
        db = CommentForm(blogName=name, blogEmail=email, blogSubject=subject, blogMessage=comment)
        db.save()

    return render(request, 'blog_details.html')


def login(request):
    return render(request, 'login.html')


def dashboard(request):
    return render(request, 'dashboard.html')
