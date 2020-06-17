from django.contrib import admin
from .models import Usuario


@admin.register(Usuario)
class UsuarioAdmin(admin.ModelAdmin):
    list_display = ['id', 'nome', 'email', 'cpf', 'cnpj', 'data_nascimento', 'telefone', 'cep', 'estado', 'cidade',
                    'logradouro_completo', 'crea', 'perfil', 'funcao', 'senha']
