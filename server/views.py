from datetime import datetime

from django.contrib import auth, messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from .models import CommentForm, Portfolio, ContactForm, Newsletter, About, testimonial, Tools, Services, OurTeam, \
    blog_detailsdesc, blog_desc, sidebar_author, category_detail, ads, post_category
from django.core.files.storage import FileSystemStorage


def home(request):
    # contactform of homepage
    if request.method == "POST":
        if request.POST.get("newsbtn"):
            newsname = request.POST["newsName"]
            newsemail = request.POST["newsEmail"]
            news = Newsletter(newsName=newsname, newsEmail=newsemail)
            news.save()
        else:
            contactname = request.POST['conName']
            contactemail = request.POST['conEmail']
            contactcomment = request.POST['conComment']
            cf = ContactForm(conName=contactname, conEmail=contactemail, conComment=contactcomment)
            cf.save()

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
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        if password1 == password2:
            if User.objects.filter(username=username).exists():
                messages.info(request, 'Username taken')
            else:
                user = User.objects.create_user(first_name=first_name, last_name=last_name, username=username,
                                                password=password1, email=email)
                user.save()
                messages.info(request, 'User created')
                return redirect('../login')

    blogdet = blog_desc.objects.all()
    author = sidebar_author.objects.all()
    category = category_detail.objects.all()
    post = post_category.objects.all()
    ad = ads.objects.all()

    return render(request, 'blog.html',
                      {'blogdet': blogdet, 'author': author, 'category': category, 'post': post, 'ad': ad})


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
        if request.POST.get("ud"):
            user = request.user
            subject = request.POST['subject']
            writer = request.POST['writer']
            date = datetime.now()
            pic = request.FILES['pic']
            title = request.POST['title']
            desc = request.POST['desc']
            descfoot = request.POST['descfoot']
            fs = FileSystemStorage()
            fs.save(pic.name, pic)
            blogdesc = blog_desc(user=user,subject=subject, writer=writer, date=date,
                                 pic=pic.name, title=title, desc=desc, descfoot=descfoot)
            blogdesc.save()
        else:
            pid = request.POST['id']
            obj = blog_desc.objects.get(id=pid)

            obj.subject = request.POST['subject']
            obj.writer = request.POST['writer']
            obj.date = datetime.now()
            obj.pic = request.FILES['pic']
            obj.title = request.POST['title']
            obj.desc = request.POST['desc']
            obj.descfoot = request.POST['descfoot']
            obj.fs = FileSystemStorage()
            obj.fs.save(obj.pic.name, obj.pic)
            obj.save()
    blogdet = blog_desc.objects.filter(user=request.user)
    return render(request, 'dashboard.html', {'blogdet': blogdet})


def delete(request, pid):
    obj = blog_desc.objects.get(id=pid)
    obj.delete()
    obje = blog_desc.objects.filter(user=request.user)
    return render(request, 'dashboard.html', {"blogdet": obje})
