from django.shortcuts import render


def login(request):
    return render(request, 'login.html')


def home(request):
    return render(request, 'home.html')


def clientes(request):
    return render(request, 'clientes/clientes.html')


def clientesAdd(request):
    return render(request, 'clientes/clientes-add.html')


def clientesEdit(request):
    return render(request, 'clientes/clientes-edit.html')


def fornecedores(request):
    return render(request, 'fornecedores/fornecedores.html')


def fornecedoresAdd(request):
    return render(request, 'fornecedores/fornecedores-add.html')


def fornecedoresEdit(request):
    return render(request, 'fornecedores/fornecedores-edit.html')


def obras(request):
    return render(request, 'obras/obras.html')


def obrasAdd(request):
    return render(request, 'obras/obras-add.html')


def obrasEdit(request):
    return render(request, 'obras/obras-edit.html')


def usuarios(request):
    return render(request, 'usuarios/usuarios.html')


def usuariosAdd(request):
    return render(request, 'usuarios/usuarios-add.html')


def usuariosEdit(request):
    return render(request, 'usuarios/usuarios-edit.html')


def notFound(request):
    return render(request, '404.html')


def serverError(request):
    return render(request, '500.html')
