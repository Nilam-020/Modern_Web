from typing import Tuple

from django.contrib import admin
from .models import ContactForm, Newsletter, Portfolio, About


# Register your models here.

class ContactFormAdmin(admin.ModelAdmin):
    list_display = ('conName', 'conEmail', 'conComment')


class NewsletterAdmin(admin.ModelAdmin):
    list_display = ('newsName', 'newsEmail')


class PortfolioAdmin(admin.ModelAdmin):
    list_display = ('portfolioImg', 'portfolioDesc', 'portfolioPara')


class AboutAdmin(admin.ModelAdmin):
    list_display = ('about_work', 'about_para', 'about_parabody', 'about_parafoot', 'aboutimg')


admin.site.register(About, AboutAdmin),
admin.site.register(ContactForm, ContactFormAdmin),
admin.site.register(Newsletter, NewsletterAdmin),
admin.site.register(Portfolio, PortfolioAdmin)
