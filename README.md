# API Ruby on Rails - [Nome da API]

Esta é uma API Ruby on Rails para [descrição da API].

## Pré-requisitos

* Ruby (versão X.X.X)
* Rails (versão X.X.X)
* PostgreSQL (ou outro banco de dados compatível)
* Git

## Instalação

1.  **Clone o repositório:**

    ```bash
    git clone [https://github.com/dolthub/dolt](https://github.com/dolthub/dolt)
    cd [nome do repositório]
    ```

2.  **Instale as dependências:**

    ```bash
    bundle install
    ```

3.  **Configure o banco de dados:**

    * Crie um arquivo `config/database.yml` com as configurações do seu banco de dados. Exemplo para PostgreSQL:

        ```yaml
        development:
          adapter: postgresql
          encoding: unicode
          database: [nome do banco de dados]
          username: [nome de usuário]
          password: [senha]
          host: localhost
        test:
          adapter: postgresql
          encoding: unicode
          database: [nome do banco de dados de teste]
          username: [nome de usuário]
          password: [senha]
          host: localhost
        production:
          adapter: postgresql
          encoding: unicode
          database: [nome do banco de dados de produção]
          username: [nome de usuário]
          password: [senha]
          host: localhost
        ```

    * Crie o banco de dados:

        ```bash
        rails db:create
        ```

4.  **Execute as migrações:**

    ```bash
    rails db:migrate
    ```

5.  **Inicie o servidor:**

    ```bash
    rails server
    ```

    A API estará disponível em `http://localhost:3000`.

