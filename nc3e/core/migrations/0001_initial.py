# Generated by Django 3.0.6 on 2020-06-17 20:19

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=100)),
                ('segmento', models.CharField(max_length=100)),
                ('doc', models.CharField(max_length=100)),
                ('endereco', models.CharField(max_length=100)),
                ('cidade', models.CharField(max_length=100)),
                ('estado', models.CharField(max_length=100)),
                ('cep', models.CharField(max_length=100)),
                ('observacoes', models.TextField()),
            ],
            options={
                'db_table': 'cliente',
            },
        ),
        migrations.CreateModel(
            name='ClienteEmail',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cliente', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
            ],
            options={
                'db_table': 'cliente_email',
            },
        ),
        migrations.CreateModel(
            name='ClienteTelefone',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cliente', models.CharField(max_length=100)),
                ('telefone', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'cliente_telefone',
            },
        ),
        migrations.CreateModel(
            name='Fornecedor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome_fantasia', models.CharField(max_length=100)),
                ('nome_empresa', models.CharField(max_length=100)),
                ('cnpj', models.CharField(max_length=100)),
                ('ramo', models.CharField(max_length=100)),
                ('ramo_desc', models.TextField()),
                ('endereco', models.CharField(max_length=100)),
                ('cidade', models.CharField(max_length=100)),
                ('estado', models.CharField(max_length=100)),
                ('cep', models.CharField(max_length=100)),
                ('horario_funcionamento', models.TextField()),
                ('observacoes', models.TextField()),
                ('logotipo', models.ImageField(upload_to='')),
                ('criado_por', models.CharField(max_length=100)),
                ('active', models.BooleanField(default=True)),
                ('begin_date', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'fornecedor',
            },
        ),
        migrations.CreateModel(
            name='FornecedorEmail',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fornecedor', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
            ],
            options={
                'db_table': 'fornecedor_email',
            },
        ),
        migrations.CreateModel(
            name='FornecedorTelefone',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fornecedor', models.CharField(max_length=100)),
                ('telefone', models.CharField(max_length=11)),
            ],
            options={
                'db_table': 'fornecedor_telefone',
            },
        ),
        migrations.CreateModel(
            name='Funcao',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descricao', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'funcao',
            },
        ),
        migrations.CreateModel(
            name='Obra',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('cnpj', models.CharField(max_length=100)),
                ('clienteId', models.CharField(max_length=100)),
                ('engenheiroId', models.CharField(max_length=100)),
                ('data_inicio', models.DateField()),
                ('data_termino', models.DateField()),
                ('dias_trabalho', models.CharField(max_length=100)),
                ('endereco', models.CharField(max_length=100)),
                ('cidade', models.CharField(max_length=100)),
                ('estado', models.CharField(max_length=100)),
                ('cep', models.CharField(max_length=8)),
                ('cno', models.CharField(max_length=100)),
                ('site', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'obra',
            },
        ),
        migrations.CreateModel(
            name='ObraFornecedor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('obra', models.CharField(max_length=100)),
                ('fornecedor', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'obra_fornecedor',
            },
        ),
        migrations.CreateModel(
            name='ObraMensagem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('obra', models.TextField()),
            ],
            options={
                'db_table': 'obra_mensagem',
            },
        ),
        migrations.CreateModel(
            name='ObraTarefa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('obra', models.CharField(max_length=100)),
                ('nome', models.CharField(max_length=100)),
                ('data_inicio', models.DateField()),
                ('data_termino', models.DateField()),
                ('empresa_resp', models.CharField(max_length=100)),
                ('concluido', models.IntegerField()),
                ('depende', models.CharField(max_length=100)),
                ('depende_valor', models.IntegerField()),
                ('nivel', models.CharField(max_length=100)),
                ('peso_nivel', models.IntegerField()),
                ('principal', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'obra_tarefa',
            },
        ),
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descricao', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'perfil',
            },
        ),
        migrations.CreateModel(
            name='Ramo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descricao', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'ramo',
            },
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254)),
                ('cpf', models.CharField(max_length=11)),
                ('cnpj', models.CharField(max_length=14)),
                ('data_nascimento', models.DateField(max_length=10)),
                ('telefone', models.CharField(max_length=11)),
                ('cep', models.CharField(max_length=8)),
                ('estado', models.CharField(max_length=2)),
                ('cidade', models.CharField(max_length=20)),
                ('logradouro_completo', models.CharField(max_length=100)),
                ('crea', models.CharField(max_length=100)),
                ('perfil', models.CharField(max_length=100)),
                ('funcao', models.CharField(max_length=100)),
                ('senha', models.CharField(max_length=100)),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'usuario',
            },
        ),
    ]
