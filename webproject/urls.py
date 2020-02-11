
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

import server
from webproject import settings

urlpatterns = [
    path('', include('server.urls')),
    path('admin/', admin.site.urls)

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
