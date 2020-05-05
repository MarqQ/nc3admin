"""nc3e URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
import nc3e.core.views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', nc3e.core.views.index, name='index'),
    path('index2', nc3e.core.views.index2, name='index2'),
    path('index3', nc3e.core.views.index3, name='index3'),
    path('starter', nc3e.core.views.starter, name='starter'),
]
