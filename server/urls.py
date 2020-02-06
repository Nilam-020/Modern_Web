from django.urls import path

from server import views

urlpatterns = [
    path('home/', views.home),
    path('', views.home),
    path('login/', views.login),
    path('blog/', views.blog),
    path('blog_details/', views.blog_details),
    path('dashboard/', views.dashboard),
    path('logout/',views.logout)
    # path('single', views.show_home)
]
