from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User, auth
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_protect
from django.contrib import messages
from .models import User
from .models import Fornecedor
from .models import Cliente
from .models import Obra
from django.contrib.auth import authenticate, login, logout


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
                return redirect('usuarios')
        else:
            print('As senhas não conferem!')
        return redirect('home')
    else:
        return redirect('usuarios')


# @login_required(login_url='login')
def home(request):
    user = User.objects.filter()
    fornecedor = Fornecedor.objects.filter()
    cliente = Cliente.objects.filter()
    obra = Obra.objects.filter()
    return render(request, 'home.html', {'user': user, 'fornecedor': fornecedor, 'cliente': cliente, 'obra': obra})


@csrf_protect
@login_required(login_url='login')
def clientes(request):
    cliente = Cliente.objects.filter()
    return render(request, 'clientes/clientes.html', {'cliente': cliente})


@csrf_protect
def set_clientes(request):
    nome = request.POST.get('nome')
    segmento = request.POST.get('segmento')
    doc = request.POST.get('doc')
    endereco = request.POST.get('endereco')
    cidade = request.POST.get('cidade')
    estado = request.POST.get('estado')
    cep = request.POST.get('cep')
    observacoes = request.POST.get('observacoes')
    fornecedor_cadastro = request.user.id
    cliente = Cliente.objects.create(nome=nome, segmento=segmento, doc=doc, endereco=endereco, cidade=cidade,
                                     estado=estado, cep=cep, observacoes=observacoes, criado_por=fornecedor_cadastro)
    cliente.save()
    return redirect('clientes')


# @login_required(login_url='login')
def clientesAdd(request):
    return render(request, 'clientes/clientes-add.html')


# @login_required(login_url='login')
def clientesEdit(request, id):
    cliente = Cliente.objects.get(id=id)
    return render(request, 'clientes/clientes-edit.html', {'cliente': cliente})


# @login_required(login_url='login')
def clientesDelete(request, id):
    cliente = Cliente.objects.get(id=id)
    cliente.delete()
    return redirect('clientes')


@csrf_protect
# @login_required(login_url='login')
def fornecedores(request):
    fornecedor = Fornecedor.objects.filter()
    return render(request, 'fornecedores/fornecedores.html', {'fornecedor': fornecedor})


@csrf_protect
# @login_required(login_url='login')
def set_fornecedores(request):
    nome_fantasia = request.POST.get('nome_fantasia')
    nome_juridico = request.POST.get('nome_juridico')
    cnpj = request.POST.get('cnpj')
    ramo = request.POST.get('ramo')
    endereco = request.POST.get('endereco')
    cidade = request.POST.get('cidade')
    estado = request.POST.get('estado')
    cep = request.POST.get('cep')
    horario_funcionamento = request.POST.get('horario_funcionamento')
    observacoes = request.POST.get('observacoes')
    logotipo = request.POST.get('logotipo')
    usuario_cadastro = request.user.id
    fornecedor = Fornecedor.objects.create(nome_fantasia=nome_fantasia, nome_empresa=nome_juridico, cnpj=cnpj,
                                           ramo_desc=ramo, endereco=endereco, cidade=cidade, estado=estado, cep=cep,
                                           horario_funcionamento=horario_funcionamento, observacoes=observacoes,
                                           logotipo=logotipo, criado_por=usuario_cadastro)
    fornecedor.save()
    return redirect('fornecedores')


# @login_required(login_url='login')
def fornecedoresAdd(request):
    return render(request, 'fornecedores/fornecedores-add.html')


# @login_required(login_url='login')
def fornecedoresEdit(request, id):
    fornecedor = Fornecedor.objects.get(id=id)
    return render(request, 'fornecedores/fornecedores-edit.html', {'fornecedor': fornecedor})


# @login_required(login_url='login')
def fornecedoresDelete(request, id):
    fornecedor = Fornecedor.objects.get(id=id)
    fornecedor.delete()
    return redirect('fornecedores')


# @login_required(login_url='login')
def obras(request):
    obra = Obra.objects.filter()
    return render(request, 'obras/obras.html', {'obra': obra})


# @login_required(login_url='login')
def set_obras(request):
    nome = request.POST.get('nome')
    email = request.POST.get('email')
    cnpj = request.POST.get('cnpj')
    data_inicio = request.POST.get('data_inicio')
    data_termino = request.POST.get('data_termino')
    endereco = request.POST.get('endereco')
    cidade = request.POST.get('cidade')
    estado = request.POST.get('estado')
    cep = request.POST.get('cep')
    cno = request.POST.get('cno')
    site = request.POST.get('site')
    usuario_cadastro = request.user.id
    obra = Obra.objects.create(nome=nome, email=email, cnpj=cnpj, data_inicio=data_inicio, data_termino=data_termino,
                               endereco=endereco, cidade=cidade, estado=estado, cep=cep, cno=cno, site=site,
                               criado_por=usuario_cadastro)
    obra.save()
    return redirect('obras')


# @login_required(login_url='login')
def obrasAdd(request):
    return render(request, 'obras/obras-add.html')


# @login_required(login_url='login')
def obrasEdit(request, id):
    obra = Obra.objects.get(id=id)
    return render(request, 'obras/obras-edit.html', {'obra': obra})


# @login_required(login_url='login')
def obrasDelete(request, id):
    obra = Obra.objects.get(id=id)
    obra.delete()
    return redirect('obras')


# @login_required(login_url='login')
def usuarios(request):
    user = User.objects.filter()
    return render(request, 'usuarios/usuarios.html', {'user': user})


# @login_required(login_url='login')
def usuariosAdd(request):
    return render(request, 'usuarios/usuarios-add.html')


# @login_required(login_url='login')
def usuariosEdit(request, id):
    usuario_id = request.GET.get('id')
    if usuario_id:
        user = User.objects.get(id=id)
        return render(request, 'usuarios/usuarios-edit.html', {'user': user})
    return render(request, 'usuarios/usuarios-edit.html')


# @login_required(login_url='login')
def usuariosDelete(request, id):
    usuario = get_user_model().objects.get(id=id)
    usuario.delete()
    return redirect('usuarios')


# @login_required(login_url='login')
def notFound(request):
    return render(request, '404.html')


# @login_required(login_url='login')
def serverError(request):
    return render(request, '500.html')
