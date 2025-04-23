FROM php:8.2-cli

# Instala extensões necessárias
RUN docker-php-ext-install pdo pdo_mysql

# Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Define diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY . /app

# Instala dependências PHP
RUN composer install

# Comando padrão ao iniciar o container
CMD ["php", "src/backend/db.php"]
