# spring-boot-crud-example
## steps
1. maven build 
2. docker build -t app .
3. docker pull mysql:8.0  
4. docker volume ls
5. docker volume create mysql-data
6. docker network ls
7. docker network create spring-net
8. docker run -d -p 3307:3306 --name mysqldb --network spring-net -v mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=library mysql:8.0
9. or
10. sudo docker run -d -p 3307:3306 --name mysqldb --network spring-net -v mysql-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_USER=admin -e MYSQL_PASSWORD=root -e DATABASE_PORT=3306 -e DATABASE_HOST=docker-mysql -e MYSQL_DATABASE=library mysql:8.0
     

12. open mysql workbench and create a new connection to mysql container

![image](https://github.com/hasnain393/library-docker/assets/56108097/162afbfc-aac7-4204-8890-7aaa838b4c7b)

![image](https://github.com/hasnain393/library-docker/assets/56108097/6ec091e7-b792-4fb2-b798-cc7701560ea1)


these environment variables values will be repleaced in application.properties file
10. docker run -p 9196:9195 --name app --net spring-net -e MYSQL_USER=root -e MYSQL_PASSWORD=root -e MYSQL_HOST=mysqldb -e MYSQL_PORT=3306 app

11. http://localhost:9196/users
