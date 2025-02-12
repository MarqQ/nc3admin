# Generated by Django 3.0.6 on 2020-06-22 15:48

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0011_update_proxy_permissions'),
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
                ('observacoes', models.TextField(blank=True, null=True)),
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
                ('horario_funcionamento', models.TextField(blank=True, null=True)),
                ('observacoes', models.TextField(blank=True, null=True)),
                ('logotipo', models.ImageField(blank=True, null=True, upload_to='')),
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
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('first_name', models.CharField(blank=True, max_length=30, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(max_length=60, unique=True, verbose_name='email')),
                ('username', models.CharField(max_length=30, unique=True)),
                ('data_nascimento', models.DateField(blank=True, max_length=10, null=True)),
                ('cpf', models.CharField(blank=True, max_length=11, null=True)),
                ('cnpj', models.CharField(blank=True, max_length=14, null=True)),
                ('telefone', models.CharField(blank=True, max_length=11, null=True)),
                ('cep', models.CharField(max_length=8)),
                ('estado', models.CharField(max_length=2)),
                ('cidade', models.CharField(max_length=20)),
                ('logradouro_completo', models.CharField(max_length=100)),
                ('crea', models.CharField(blank=True, max_length=100, null=True)),
                ('perfil', models.CharField(max_length=100)),
                ('funcao', models.CharField(blank=True, max_length=100, null=True)),
                ('date_joined', models.DateTimeField(auto_now_add=True, verbose_name='data joined')),
                ('last_login', models.DateTimeField(auto_now=True, verbose_name='last login')),
                ('is_admin', models.BooleanField(default=False)),
                ('is_active', models.BooleanField(default=True)),
                ('is_staff', models.BooleanField(default=False)),
                ('is_superuser', models.BooleanField(default=False)),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions')),
            ],
            options={
                'db_table': 'usuario',
            },
        ),
    ]
