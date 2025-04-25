DB_USER=root
DB_PASSWORD=
DB_NAME=skywalker
SQL_FILE=docker/init.sql
MYSQL_PATH="C:/xampp2/mysql/bin/mysql.exe"
# change to your mysql path

db:
	$(MYSQL_PATH) -u $(DB_USER) -p$(DB_PASSWORD) -e "DROP DATABASE IF EXISTS $(DB_NAME); CREATE DATABASE $(DB_NAME);" && \
	$(MYSQL_PATH) -u $(DB_USER) -p$(DB_PASSWORD) $(DB_NAME) < $(SQL_FILE)
