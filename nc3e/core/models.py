from django.db import models

# Create your models here.

class Usuario(models.Model):
    nome = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    cpf = models.CharField(max_length=11)
    cnpj = models.CharField(max_length=14)
    data_nascimento = models.DateField
    telefone = models.CharField(max_length=10)
    cep = models.CharField(max_length=8)
    estado = models.CharField
    cidade = models.CharField(max_length=20)
    logradouro_completo = models.CharField(max_length=100)
    crea = models.CharField
    perfil = models.CharField
    funcao = models.CharField
    senha = models.CharField


class Perfil(models.Model):
    descricao = models.CharField


class Funcao(models.Model):
    descricao = models.CharField


class Fornecedor(models.Model):
    nome_fantasia = models.CharField
    nome_empresa = models.CharField
    cnpj = models.CharField
    ramo = models.CharField
    ramo_desc = models.CharField
    endereco = models.CharField
    cidade = models.CharField
    estado = models.CharField
    cep = models.CharField
    horario_funcionamento = models.CharField
    observacoes = models.CharField
    logotipo = models.CharField
    criado_por = models.CharField


class FornecedorTelefone(models.Model):
    fornecedor = models.CharField
    telefone = models.CharField


class FornecedorEmail(models.Model):
    fornecedor = models.CharField
    email = models.CharField


class Ramo(models.Model):
    descricao = models.CharField


class Cliente(models.Model):
    nome = models.CharField
    segmento = models.CharField
    doc = models.CharField
    endereco = models.CharField
    cidade = models.CharField
    estado = models.CharField
    cep = models.CharField
    observacoes = models.CharField


class ClienteTelefone(models.Model):
    cliente = models.CharField
    telefone = models.CharField


class ClienteEmail(models.Model):
    cliente = models.CharField
    email = models.CharField


class Obra(models.Model):
    nome = models.CharField
    email = models.CharField
    cnpj = models.CharField
    clienteId = models.CharField
    engenheiroId = models.CharField
    data_inicio = models.CharField
    data_termino = models.CharField
    dias_trabalho = models.CharField
    endereco = models.CharField
    cidade = models.CharField
    estado = models.CharField
    cep = models.CharField
    cno = models.CharField
    site = models.CharField


class ObraFornecedor(models.Model):
    obra = models.CharField
    fornecedor = models.CharField


class ObraMensagem(models.Model):
    obra = models.CharField


class ObraTarefa(models.Model):
    obra = models.CharField
    nome = models.CharField
    data_inicio = models.CharField
    data_termino = models.CharField
    empresa_resp = models.CharField
    concluido = models.CharField
    depende = models.CharField
    depende_valor = models.CharField
    nivel = models.CharField
    peso_nivel = models.CharField
    principal = models.CharField

