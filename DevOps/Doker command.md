| command | description |
| --- | ---|
|docker -v | Версия Docker Engine
|docker ps  | Список Бегущих контейнеров
|docket ps -a| Список ВСЕХ контейнеров
|docker images |Список локальных images
| docker search tomcat | найти Image tomcat в DockerHub
|docker pull tomcat |  Скачать Image tomcat из DockerHub
| docker run -it -p 7777:8080 tomcat |  Запустить интерактивно контейнер tomcat на порте 7777
| docker run -d -p 8888:8080 tomcat |  Запустить НЕинтерактивно контейнер tomcat на порте 8888
| docker run -d -p 80:80 nginx |  Запустить НЕинтерактивно контейнер nginx на порте 80
| docker tag oldname:vi newname:v2 |  Создать копию Image с другим именем и тагом|
| docker build -t myimage:latest . |  Создать Image с именем myimage:latest из локального Dockerfile
| docker run -d myimage:latest |  Запустить НЕинтерактивно контеинер myimage:latest
| docker rm 1234567890 |  Удалить контейнер с ID 1234567890
| docker mi 1112227778 |  Удалит локальный Image c ID 1112227778
| docker exec -it 526721d140 /bin/bash |  Запустить интерактивно /bin/bash на контейнере с ID 5267e21d140
| echo "New Version v2" >> /var/www/html/index.html|  изменить фаил в контеинере
| exit |  Выйти из контейнера
| docker commit 5267e21d140 newimage_v:latest |  Создать Image с именем newimage_V2:latest из контейнера с ID 5267e21d140
