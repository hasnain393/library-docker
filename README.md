# spring-boot-crud-example
## steps
maven build 
docker build -t app .
docker pull mysql:8.0  
docker volume ls
docker volume create mysql-data
docker network ls
docker network create spring-net
docker run -d -p 3307:3306 --name mysqldb --network spring-net -v mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=library mysql:8.0

open mysql workbench and create a new connection to mysql container

![image](https://github.com/hasnain393/library-docker/assets/56108097/162afbfc-aac7-4204-8890-7aaa838b4c7b)


these environment variables values will be repleaced in application.properties file
docker run -p 9196:9195 --name app --net spring-net -e MYSQL_USER=root -e MYSQL_PASSWORD=root -e MYSQL_HOST=mysqldb -e MYSQL_PORT=3306 app

http://localhost:9196/users
