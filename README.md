# Tendencias e Desafios em SI - 2021.2
Repositório criado a fim de armazenar todos os artefatos construídos para o projeto da disciplina. Pyspark 3.2.1

## Requisitos para a execução do projeto:
- Instale o Python 3.9
- Instale o Apache-Spark (no MacOS, instale com "brew install apache-spark"
- Instale o Java (no Mac, usar o comando "brew install --cask adoptopenjdk8")
- Instale o Docker
- Instale o [TablePlus](https://tableplus.com/) para visualização do Banco de Dados
- Clonar este repositório e abrir a pasta correspondente
- Baixe o [driver do JDBC](https://jdbc.postgresql.org/download/postgresql-42.3.5.jar) (necessário para a conexão com o banco de dados pelo Spark).

## Como criar o schema do banco de dados 
- Abra o arquivo [Makefile](Makefile) e escolha um nome de usuário e senha para as variáveis POSTGRES_USER e POSTGRES_PASSWORD no campo postgres; Fazer o mesmo com as variáveis --username= --owner= no campo createdb. (username e owner devem ter o mesmo valor da variável POSTGRES_USER).
- Abra o terminal dentro da pasta do projeto e execute os seguintes comandos:
  - make postgres (executará uma imagem, via docker, do postgres:12-alpine)
  - make createdb (criará um banco de dados chamado "tendencias")
  - make migrateup (Criará o schema do banco de dados

## Como se conectar ao banco
- Abra o TablePlus e inicie uma nova conexão do tipo PostgreSQL.
- Escolha um nome para a conexão
- Os nomes de usuário e senha serão os definidos no passo "Como criar o schema do banco de dados".
- No campo "database" coloque o nome do usuário.
- Em tabelas, poder-se-á observar a tabela "sales", com todo o schema criado.
- Conecte-se ao banco.
- Aperte Control + K para abrir um banco de dados e escolha o banco "tendencias".

## Variáveis de Ambiente
- Crie uma pasta chamada Script e, dentro dela, crei o arquivo .env. Preencha as seguintes variáveis:
  -  DB_CONNECTION_STRING=jdbc:postgresql://localhost:5432/tendencias
  -  USER={POSTGRES_USER} #Este valor fora definido no Makefile, no campo postgres.
  -  PASSWORD={POSTGRES_PASSWORD} #Este valor fora definido no Makefile, no campo postgres.
  -  SPARKJAR={CAMINHO COMPLETO PARA O ARQUIVO DO DRIVER JDBC}

## Passos para a execução do projeto
- Criar um ambiente virtual do python com "python3 -m venv {nome do ambiente virtual}
- Ativar o ambiente virtual com "source {nome do ambiente virtual}/bin/activate"
- Com o ambiente virtual ativado, instale todos os requisitos do projeto com o comando pip3 install -r requirements.txt
- Abra outra janela do terminal, dentro da pasta do projeto, e execute o comando "jupyter lab".
