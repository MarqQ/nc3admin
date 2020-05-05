from django.shortcuts import render


def index(request):
    return render(request, 'index.html')


def index2(request):
    return render(request, 'index2.html')


def index3(request):
    return render(request, 'index3.html')


def starter(request):
    return render(request, 'starter.html')
