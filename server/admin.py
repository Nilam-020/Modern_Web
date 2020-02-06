from typing import Tuple

from django.contrib import admin
from .models import ContactForm, Newsletter, Portfolio, About, Tools, testimonial, OurTeam, Services


# Register your models here.

class ContactFormAdmin(admin.ModelAdmin):
    list_display = ('conName', 'conEmail', 'conComment')


class NewsletterAdmin(admin.ModelAdmin):
    list_display = ('newsName', 'newsEmail')


class PortfolioAdmin(admin.ModelAdmin):
    list_display = ('portfolioImg', 'portfolioDesc', 'portfolioPara')


class AboutAdmin(admin.ModelAdmin):
    list_display = ('about_work', 'about_para', 'about_parabody', 'about_parafoot', 'aboutimg')


class ToolsAdmin (admin.ModelAdmin):
     list_display = ('toolname', 'toollist', 'toolvalue')


class ServicesAdmin(admin.ModelAdmin):
    list_display = ('icon', 'title', 'desc')


class OurTeamAdmin(admin.ModelAdmin):
    list_display = ('pic', 'title', 'rank', 'desc', 'facebook','twitter','insta')


class testimonialAdmin(admin.ModelAdmin):
    list_display = ('pic', 'title', 'rank', 'star1', 'star2','star3','star4','star5','desc')



admin.site.register(About, AboutAdmin),
admin.site.register(ContactForm, ContactFormAdmin),
admin.site.register(Newsletter, NewsletterAdmin),
admin.site.register(Portfolio, PortfolioAdmin),
admin.site.register(Tools, ToolsAdmin),
admin.site.register(Services, ServicesAdmin)
admin.site.register(OurTeam, OurTeamAdmin),
admin.site.register(testimonial, testimonialAdmin)