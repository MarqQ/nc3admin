from django.db import models
from django.contrib.auth.models import User
from django.contrib.auth.models import AbstractUser, BaseUserManager

# Create your models here.


class MyAccountManager(BaseUserManager):
    def create_user(self, first_name, last_name, email, cpf, cnpj, data_nascimento, telefone, cep, estado, cidade,
                    logradouro_completo, crea, perfil, username, password=None):
        if not email:
            raise ValueError("O usuário deve conter um email")
        if not username:
            raise ValueError("o usuário deve conter um nome de usuário")

        user = self.model(
            first_name=first_name,
            last_name=last_name,
            email=self.normalize_email(email),
            username=username,
            cpf=cpf,
            cnpj=cnpj,
            data_nascimento=data_nascimento,
            telefone=telefone,
            cep=cep,
            estado=estado,
            cidade=cidade,
            logradouro_completo=logradouro_completo,
            crea=crea,
            perfil=perfil,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, username, password):
        user = self.create_user(
            email=self.normalize_email(email),
            password=password,
            username=username,
        )

        user.is_admin = True
        user.is_staff = True
        user.is_superuser = True
        user.save(using=self._db)
        return user


class User(AbstractUser):
    email = models.EmailField(verbose_name='email', max_length=60, unique=True)
    username = models.CharField(max_length=30, unique=True)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    data_nascimento = models.DateField(max_length=10, null=True, blank=True)
    cpf = models.CharField(max_length=11, null=True, blank=True)
    cnpj = models.CharField(max_length=14, null=True, blank=True)
    telefone = models.CharField(max_length=11, null=True, blank=True)
    cep = models.CharField(max_length=8)
    estado = models.CharField(max_length=2)
    cidade = models.CharField(max_length=20)
    logradouro_completo = models.CharField(max_length=100)
    crea = models.CharField(max_length=100, null=True, blank=True)
    perfil = models.CharField(max_length=100)
    funcao = models.CharField(max_length=100, null=True, blank=True)
    date_joined = models.DateTimeField(verbose_name='data joined', auto_now_add=True)
    last_login = models.DateTimeField(verbose_name='last login', auto_now=True)
    is_admin = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    objects = MyAccountManager()

    def __str__(self):
        return self.email,

    def has_perm(self, perm, obj=None):
        return self.is_admin

    def has_module_perms(self, app_label):
        return True

    class Meta:
        db_table = 'usuario'


# class Usuario(models.Model):
#     user = models.OneToOneField(User, on_delete=models.CASCADE)
#     nome = models.CharField(max_length=100)
#     email = models.EmailField()
#     cpf = models.CharField(max_length=11, null=True, blank=True)
#     cnpj = models.CharField(max_length=14, null=True, blank=True)
#     data_nascimento = models.DateField(max_length=10, null=True, blank=True)
#     telefone = models.CharField(max_length=11, null=True, blank=True)
#     cep = models.CharField(max_length=8)
#     estado = models.CharField(max_length=2)
#     cidade = models.CharField(max_length=20)
#     logradouro_completo = models.CharField(max_length=100)
#     crea = models.CharField(max_length=100, null=True, blank=True)
#     perfil = models.CharField(max_length=100)
#     funcao = models.CharField(max_length=100, null=True, blank=True)
#     senha = models.CharField(max_length=100, null=True, blank=True)
#
#     def __str__(self):
#         return str(self.id)
#
#     class Meta:
#         db_table = 'usuario'


class Perfil(models.Model):
    descricao = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'perfil'


class Funcao(models.Model):
    descricao = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'funcao'


class Fornecedor(models.Model):
    nome_fantasia = models.CharField(max_length=100)
    nome_empresa = models.CharField(max_length=100)
    cnpj = models.CharField(max_length=100)
    ramo = models.CharField(max_length=100)
    ramo_desc = models.TextField()
    endereco = models.CharField(max_length=100)
    cidade = models.CharField(max_length=100)
    estado = models.CharField(max_length=100)
    cep = models.CharField(max_length=100)
    horario_funcionamento = models.TextField(null=True, blank=True)
    observacoes = models.TextField(null=True, blank=True)
    logotipo = models.ImageField(null=True, blank=True)
    criado_por = models.CharField(max_length=100)
    active = models.BooleanField(default=True)
    begin_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'fornecedor'


class FornecedorTelefone(models.Model):
    fornecedor = models.CharField(max_length=100)
    telefone = models.CharField(max_length=11)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'fornecedor_telefone'


class FornecedorEmail(models.Model):
    fornecedor = models.CharField(max_length=100)
    email = models.EmailField()

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'fornecedor_email'


class Ramo(models.Model):
    descricao = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'ramo'


class Cliente(models.Model):
    nome = models.CharField(max_length=100)
    segmento = models.CharField(max_length=100)
    doc = models.CharField(max_length=100)
    endereco = models.CharField(max_length=100)
    cidade = models.CharField(max_length=100)
    estado = models.CharField(max_length=100)
    cep = models.CharField(max_length=100)
    observacoes = models.TextField(null=True, blank=True)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'cliente'


class ClienteTelefone(models.Model):
    cliente = models.CharField(max_length=100)
    telefone = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'cliente_telefone'


class ClienteEmail(models.Model):
    cliente = models.CharField(max_length=100)
    email = models.EmailField()

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'cliente_email'


class Obra(models.Model):
    nome = models.CharField(max_length=100)
    email = models.EmailField()
    cnpj = models.CharField(max_length=100)
    clienteId = models.CharField(max_length=100)
    engenheiroId = models.CharField(max_length=100)
    data_inicio = models.DateField()
    data_termino = models.DateField()
    dias_trabalho = models.CharField(max_length=100)
    endereco = models.CharField(max_length=100)
    cidade = models.CharField(max_length=100)
    estado = models.CharField(max_length=100)
    cep = models.CharField(max_length=8)
    cno = models.CharField(max_length=100)
    site = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'obra'


class ObraFornecedor(models.Model):
    obra = models.CharField(max_length=100)
    fornecedor = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'obra_fornecedor'


class ObraMensagem(models.Model):
    obra = models.TextField()

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'obra_mensagem'


class ObraTarefa(models.Model):
    obra = models.CharField(max_length=100)
    nome = models.CharField(max_length=100)
    data_inicio = models.DateField()
    data_termino = models.DateField()
    empresa_resp = models.CharField(max_length=100)
    concluido = models.IntegerField()
    depende = models.CharField(max_length=100)
    depende_valor = models.IntegerField()
    nivel = models.CharField(max_length=100)
    peso_nivel = models.IntegerField()
    principal = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'obra_tarefa'

