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
from django.views.generic import RedirectView
from django.contrib.staticfiles.urls import static, staticfiles_urlpatterns
from . import settings

from nc3e.core import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('register', views.register, name='register'),
    path('login', views.login, name='login'),
    path('logout', views.logout, name='logout'),

    path('', views.home, name='home'),

    path('clientes', views.clientes, name='clientes'),
    path('clientes-add', views.clientesAdd, name='clientes-add'),
    path('clientes-set', views.set_clientes, name='clientes-set'),
    path('clientes-edit', views.clientesEdit, name='clientes-edit'),
    path('clientes-delete/<id>/', views.clientesDelete, name='clientes-delete'),

    path('fornecedores', views.fornecedores, name='fornecedores'),
    path('fornecedores-add', views.fornecedoresAdd, name='fornecedores-add'),
    path('fornecedores-set', views.set_fornecedores, name='fornecedores-set'),
    path('fornecedores-edit', views.fornecedoresEdit, name='fornecedores-edit'),
    path('fornecedores-delete/<id>/', views.fornecedoresDelete, name='fornecedores-delete'),

    path('obras', views.obras, name='obras'),
    path('obras-add', views.obrasAdd, name='obras-add'),
    path('obras-set', views.set_obras, name='obras-set'),
    path('obras-edit', views.obrasEdit, name='obras-edit'),
    path('obras-delete/<id>/', views.obrasDelete, name='obras-delete'),

    path('usuarios', views.usuarios, name='usuarios'),
    path('usuarios-add', views.usuariosAdd, name='usuarios-add'),
    path('usuarios-edit/<int:id>/', views.usuariosEdit, name='usuarios-edit'),
    path('usuarios-delete/<id>/', views.usuariosDelete, name='usuarios-delete'),

    path('not-found', views.notFound, name='not-found'),
    path('server-error', views.serverError, name='server-error'),
]
