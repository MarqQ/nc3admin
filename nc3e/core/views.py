from django.shortcuts import render


def login(request):
    return render(request, 'login.html')


def index(request):
    return render(request, 'index.html')


def obras(request):
    return render(request, 'obras.html')


def obrasAdd(request):
    return render(request, 'obrasAdd.html')


def obrasEdit(request):
    return render(request, 'obrasEdit.html')


def usuarios(request):
    return render(request, 'usuarios.html')


def usuariosEdit(request):
    return render(request, 'usuarios-edit.html')


def index2(request):
    return render(request, 'index2.html')


def index3(request):
    return render(request, 'index3.html')


def starter(request):
    return render(request, 'starter.html')
