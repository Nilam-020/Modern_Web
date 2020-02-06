from django.contrib import auth, messages
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from .models import CommentForm, Portfolio, ContactForm, Newsletter, About, testimonial, Tools, Services, OurTeam, \
    blog_detailsdesc
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
        topic1 = request.POST['topic']
        author1 = request.POST['author']
        facebook1 = request.POST['facebook']
        twitter1 = request.POST['twitter']
        github1 = request.POST['github']
        linkedin1 = request.POST['linkedin']
        bannerimg1 = request.POST['bannerimg']
        bodyhead1 = request.POST['bodyhead']
        quote1 = request.POST['quote']
        imgright1 = request.POST['imgright']
        imgleft1 = request.POST['imgleft']
        bodyfoot1 = request.POST['bodyfoot']

        blogdesc = blog_detailsdesc(topic=topic1, author=author1, facebook=facebook1,
                                    twitter=twitter1, github=github1, linkedin=linkedin1, bannerimg=bannerimg1,
                                    bodyhead=bodyhead1, quote=quote1, imgright=imgright1, imgleft=imgleft1,
                                    bodyfoot=bodyfoot1)
        blogdesc.save()

    blogdet = blog_detailsdesc.objects.all()
    return render(request, 'dashboard.html',{'blogdet': blogdet})
