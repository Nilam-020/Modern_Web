from django.urls import path

from server import views

urlpatterns = [
    path('home/', views.home),
    path('', views.home),
    path('login/', views.login),
    path('blog/', views.blog),
    path('dashboard/', views.dashboard),
    path('logout/',views.logout),
    path('delete/<pid>',views.delete)
]
