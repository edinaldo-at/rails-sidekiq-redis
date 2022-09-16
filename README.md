# Estrutura base de um projeto Rails utilizando Sidekiq e Redis

- OBS: quando estruturei o projeto, alguns repositórios estavam apresentando problema para instalar as dependências utilizando o comando RUN no Dockerfile. 
Ao acessar o shell e rodar o apt-get manualmente, consegui efetuar as instalações. Então, optei por criar uma imagem com todas as dependências que utilizo instaladas.

## Variáveis de ambiente
- criar um arquivo .env na raiz do projeto

```
touch .env
```

## Exemplo da estrutura do arquivo .env

```
# Global
TZ=America/Sao_Paulo

# Rails
RAILS_ENV=development
PORT=3000
RAILS_LOG_TO_STDOUT=enabled
RAILS_SERVE_STATIC_FILES=enabled
RAILS_MAX_THREADS=5
RAILS_MASTER_KEY=

# conexão com o banco de Dados
DB_HOST=postgres_db
DB_PORT=5432
DB_PASS=
DB_USER=

# Variáveis do postgresql
POSTGRES_USER=
POSTGRES_PASSWORD=

# Variáveis do Sidekiq
SIDEKIQ_USERNAME=
SIDEKIQ_PASSWORD=
SIDEKIQ_WORKERS=5
REDIS_URL=redis://redis_db:6379/0
```

- Você também pode optar por criar arquivos .env específicos para cada container, ao fazer isso será necessário atualizar o arquivo docker-compose.yml
