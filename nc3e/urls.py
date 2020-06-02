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
    path('login', nc3e.core.views.login, name='login'),
    path('', nc3e.core.views.index, name='index'),
    path('clientes', nc3e.core.views.clientes, name='clientes'),
    path('clientes-add', nc3e.core.views.clientesAdd, name='clientes'),
    path('clientes-edit', nc3e.core.views.clientesEdit, name='clientes-add'),
    path('fornecedores', nc3e.core.views.fornecedores, name='fornecedores-edit'),
    path('fornecedores-add', nc3e.core.views.fornecedoresAdd, name='fornecedores-add'),
    path('fornecedores-edit', nc3e.core.views.fornecedoresEdit, name='fornecedores-edit'),
    path('obras', nc3e.core.views.obras, name='obras'),
    path('obras-add', nc3e.core.views.obrasAdd, name='obras-add'),
    path('obras-edit', nc3e.core.views.obrasEdit, name='obras-edit'),
    path('usuarios', nc3e.core.views.usuarios, name='usuarios'),
    path('usuarios-add', nc3e.core.views.usuariosAdd, name='usuarios-add'),
    path('usuarios-edit', nc3e.core.views.usuariosEdit, name='usuarios'),
    path('not-found', nc3e.core.views.notFound, name='not-found'),
    path('server-error', nc3e.core.views.serverError, name='server-error'),
]
