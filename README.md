# nc3admin
Painel admin para o projeto nc3e

Para rodar o projeto localmente:

* Clone esse repositório.
* Crie um virtualenv com Python 3.
* Ative o virtualenv.
* Instale as dependências.
* Rode as migrações - se necessário.

LINUX
```
git clone
cd nc3admin
python3 -m venv .venv OU py -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python manage.py migrate - se necessário
python manage.py runserver
```

WINDOWS
```
git clone
cd nc3admin
python3 -m venv .venv OU py -m venv .venv
.\.venv\Scripts\activate
pip install -r requirements.txt
python manage.py migrate - necessário
python manage.py runserver
```
