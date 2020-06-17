from django.db import models

# Create your models here.


class Usuario(models.Model):
    nome = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    cpf = models.CharField(max_length=11)
    cnpj = models.CharField(max_length=14)
    data_nascimento = models.DateField
    telefone = models.CharField(max_length=11)
    cep = models.CharField(max_length=8)
    estado = models.CharField
    cidade = models.CharField(max_length=20)
    logradouro_completo = models.CharField(max_length=100)
    crea = models.CharField(max_length=100)
    perfil = models.CharField(max_length=100)
    funcao = models.CharField(max_length=100)
    senha = models.CharField(max_length=100)


class Perfil(models.Model):
    descricao = models.CharField(max_length=100)


class Funcao(models.Model):
    descricao = models.CharField(max_length=100)


class Fornecedor(models.Model):
    nome_fantasia = models.CharField(max_length=100)
    nome_empresa = models.CharField(max_length=100)
    cnpj = models.CharField(max_length=100)
    ramo = models.CharField(max_length=100)
    ramo_desc = models.CharField(max_length=100)
    endereco = models.CharField(max_length=100)
    cidade = models.CharField(max_length=100)
    estado = models.CharField(max_length=100)
    cep = models.CharField(max_length=100)
    horario_funcionamento = models.CharField
    observacoes = models.CharField(max_length=100)
    logotipo = models.CharField(max_length=100)
    criado_por = models.CharField(max_length=100)


class FornecedorTelefone(models.Model):
    fornecedor = models.CharField(max_length=100)
    telefone = models.CharField(max_length=100)


class FornecedorEmail(models.Model):
    fornecedor = models.CharField(max_length=100)
    email = models.CharField(max_length=100)


class Ramo(models.Model):
    descricao = models.CharField(max_length=100)


class Cliente(models.Model):
    nome = models.CharField(max_length=100)
    segmento = models.CharField(max_length=100)
    doc = models.CharField(max_length=100)
    endereco = models.CharField(max_length=100)
    cidade = models.CharField(max_length=100)
    estado = models.CharField(max_length=100)
    cep = models.CharField(max_length=100)
    observacoes = models.CharField(max_length=100)


class ClienteTelefone(models.Model):
    cliente = models.CharField(max_length=100)
    telefone = models.CharField(max_length=100)


class ClienteEmail(models.Model):
    cliente = models.CharField(max_length=100)
    email = models.CharField(max_length=100)


class Obra(models.Model):
    nome = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    cnpj = models.CharField(max_length=100)
    clienteId = models.CharField(max_length=100)
    engenheiroId = models.CharField(max_length=100)
    data_inicio = models.CharField(max_length=100)
    data_termino = models.CharField(max_length=100)
    dias_trabalho = models.CharField(max_length=100)
    endereco = models.CharField(max_length=100)
    cidade = models.CharField(max_length=100)
    estado = models.CharField(max_length=100)
    cep = models.CharField(max_length=8)
    cno = models.CharField(max_length=100)
    site = models.CharField(max_length=100)


class ObraFornecedor(models.Model):
    obra = models.CharField(max_length=100)
    fornecedor = models.CharField(max_length=100)


class ObraMensagem(models.Model):
    obra = models.CharField(max_length=100)


class ObraTarefa(models.Model):
    obra = models.CharField(max_length=100)
    nome = models.CharField(max_length=100)
    data_inicio = models.CharField(max_length=100)
    data_termino = models.CharField(max_length=100)
    empresa_resp = models.CharField(max_length=100)
    concluido = models.IntegerField
    depende = models.CharField(max_length=100)
    depende_valor = models.IntegerField
    nivel = models.CharField(max_length=100)
    peso_nivel = models.IntegerField
    principal = models.CharField(max_length=100)

