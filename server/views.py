from datetime import datetime

from django.contrib import auth, messages
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from .models import CommentForm, Portfolio, ContactForm, Newsletter, About, testimonial, Tools, Services, OurTeam, \
    blog_detailsdesc, blog_desc, sidebar_author, category_detail, ads, post_category
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
    testimonials = testimonial.objects.all()
    toolsbar = Tools.objects.all()
    clientservices = Services.objects.all()
    team = OurTeam.objects.all()
    return render(request, 'index.html', {'ports': ports, 'aboutme': aboutme, 'testimonials': testimonials,
                                          'toolsbar': toolsbar, 'clientservices': clientservices, 'team': team})


def blog(request):
    blogdet = blog_desc.objects.all()
    author = sidebar_author.objects.all()
    category = category_detail.objects.all()
    post = post_category.objects.all()
    ad = ads.objects.all()

    return render(request, 'blog.html', {'blogdet': blogdet,'author':author,'category':category,'post':post,'ad':ad})


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
    if request.method == "POST":
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect("../dashboard/")
        else:
            messages.info(request, 'invalid Credential')
            return redirect('login/')

    else:
        return render(request, 'login.html')


def logout(request):
    auth.logout(request)
    return redirect('../')


@login_required
def dashboard(request):
    if request.method == "POST":
        subject = request.POST['subject']
        writer = request.POST['writer']
        date = datetime.now()
        pic = request.POST['pic']
        title = request.POST['title']
        desc = request.POST['desc']
        descfoot = request.POST['descfoot']
        blogdesc = blog_desc(subject=subject, writer=writer, date=date,
                             pic=pic, title=title, desc=desc, descfoot=descfoot)
        blogdesc.save()

    blogdet = blog_desc.objects.all()
    return render(request, 'dashboard.html', {'blogdet': blogdet})
