from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Usuario(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    nome = models.CharField(max_length=100)
    email = models.EmailField()
    cpf = models.CharField(max_length=11)
    cnpj = models.CharField(max_length=14)
    data_nascimento = models.DateField(max_length=10)
    telefone = models.CharField(max_length=11)
    cep = models.CharField(max_length=8)
    estado = models.CharField(max_length=2)
    cidade = models.CharField(max_length=20)
    logradouro_completo = models.CharField(max_length=100)
    crea = models.CharField(max_length=100)
    perfil = models.CharField(max_length=100)
    funcao = models.CharField(max_length=100)
    senha = models.CharField(max_length=100)

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'usuario'


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
    horario_funcionamento = models.TextField()
    observacoes = models.TextField()
    logotipo = models.ImageField()
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
    observacoes = models.TextField()

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

