# Ответы на занятие 'Оркестрация группой Docker контейнеров на примере Docker Compose'

## Задача 1
Ссылка на docker hub

- https://hub.docker.com/repository/docker/kictaf/custom-nginx/general

## Задача 2
Скриншот выполнения всех команд из задачи

![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/2.png)

## Задача 3
- Я подключился к стандартному вводу/выводу контейнера с помощью команды docker attach
- Когда нажали Ctrl+C, это отправило сигнал SIGINT в контейнер, что обычно интерпретируется как запрос на завершение работы, поэтому контейнер оставновился.
![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z3.1-4.png)

![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z3.5-8.png)

![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z3.9-12.png)

Ошибка возникла из за того, что мы запустили контейнер с параметром -p 127.0.0.1:8080:80, хост слушает соединения на порту 8080 и перенаправляет их на порт 80 внутри контейнера. Но после последних действий, nginx внутри контейнера слушает порт 81. Поэтому мы не получаем никакой информации при выполнении посленей команды.


## Задача 4
![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/4.png)


## Задача 5
![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z5.1.png)

Путь по умолчанию для файла Compose — compose.yaml или compose.yml. Compose также поддерживает docker-compose.yaml и docker-compose.yml. Если оба файла существуют, Compose предпочитает канонический compose.yaml. Поэтому запустился compose.yml

![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z5.2.png)

![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z5.3.png)

![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z5.4-6.png)

![Консоль](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/raw/main/dz2/files_and_images/z5.7.png)

Warninig означает, что обнаружены "заблудившиеся" контейнеры ([docker-portainer-1]) для этого проекта.

Файл compose.yml находится в ссылке ниже

[Файл](https://github.com/mimimimimimimimimimimi/Vot-tak-vot/tree/main/dz2/files_and_images/compose.yml)
