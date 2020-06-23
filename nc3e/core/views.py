from django.shortcuts import render, redirect
# from django.contrib import messages
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User, auth
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_protect
from django.contrib import messages
from .models import User
# from django.contrib.auth import authenticate, login


@csrf_protect
def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            print('Acesso Concedido')
            return redirect('home')
        else:
            print('Credenciais Inválidas')
            messages.info(request, 'Credenciais Inválidas')
            return redirect('login')
    else:
        return render(request, 'login.html')


def logout(request):
    auth.logout(request)
    return redirect('login')


def register(request):

    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        cpf = request.POST['cpf']
        cnpj = request.POST['cnpj']
        data_nascimento = request.POST['data_nascimento']
        telefone = request.POST['telefone']
        cep = request.POST['cep']
        estado = request.POST['estado']
        cidade = request.POST['cidade']
        logradouro_completo = request.POST['logradouro_completo']
        crea = request.POST['crea']
        perfil = request.POST['perfil']
        password1 = request.POST['password1']
        password2 = request.POST['password2']

        if password1 == password2:
            if get_user_model().objects.filter(email=email).exists():
                print('Email já está em uso!')
            else:
                user = get_user_model().objects.create_user(first_name=first_name, last_name=last_name,
                                                            username=email, cpf=cpf, cnpj=cnpj,
                                                            data_nascimento=data_nascimento, telefone=telefone, cep=cep,
                                                            estado=estado, cidade=cidade,
                                                            logradouro_completo=logradouro_completo, perfil=perfil,
                                                            crea=crea, password=password1, email=email)
                user.save()
                print('Usuário criado com sucesso!')
                return redirect('usuarios/usuarios.html')
        else:
            print('As senhas não conferem!')
        return redirect('home')
    else:
        return render(request, 'usuarios/usuarios.html')


# @login_required(login_url='login')
def home(request):
    user = User.objects.filter()
    return render(request, 'home.html', {'user': user})


@login_required(login_url='login')
def clientes(request):
    return render(request, 'clientes/clientes.html')


# @login_required(login_url='login')
def clientesAdd(request):
    return render(request, 'clientes/clientes-add.html')


# @login_required(login_url='login')
def clientesEdit(request):
    return render(request, 'clientes/clientes-edit.html')


# @login_required(login_url='login')
def fornecedores(request):
    return render(request, 'fornecedores/fornecedores.html')


# @login_required(login_url='login')
def fornecedoresAdd(request):
    return render(request, 'fornecedores/fornecedores-add.html')


# @login_required(login_url='login')
def fornecedoresEdit(request):
    return render(request, 'fornecedores/fornecedores-edit.html')


# @login_required(login_url='login')
def obras(request):
    return render(request, 'obras/obras.html')


# @login_required(login_url='login')
def obrasAdd(request):
    return render(request, 'obras/obras-add.html')


# @login_required(login_url='login')
def obrasEdit(request):
    return render(request, 'obras/obras-edit.html')


# @login_required(login_url='login')
def usuarios(request):
    user = User.objects.filter()
    return render(request, 'usuarios/usuarios.html', {'user': user})


# @login_required(login_url='login')
def usuariosAdd(request):
    return render(request, 'usuarios/usuarios-add.html')


# @login_required(login_url='login')
def usuariosEdit(request):
    return render(request, 'usuarios/usuarios-edit.html')


# @login_required(login_url='login')
def notFound(request):
    return render(request, '404.html')


# @login_required(login_url='login')
def serverError(request):
    return render(request, '500.html')
