# Домашнее задание к занятию 5. «Практическое применение Docker»

## Задача 0
<img width="801" height="172" alt="изображение" src="https://github.com/user-attachments/assets/3a70625d-80f7-4c37-93ae-1cb3413fe5e7" />

---

## Задача 1
Сделан fork в своем GitHub пространстве (https://github.com/DrDevSpiderAl/shvirtd-example-python/)

Создан файл .dockerignore  

<img width="177" height="170" alt="изображение" src="https://github.com/user-attachments/assets/2bae57e0-ad7c-4207-85e9-d0ba65b9777d" />

Создан Dockerfile.python с multistage сборкой   
<img width="583" height="290" alt="изображение" src="https://github.com/user-attachments/assets/174729a8-b80d-4b3e-a3f4-6fba9f43c757" />
 
Тест сборки 2.1 
<img width="1574" height="999" alt="изображение" src="https://github.com/user-attachments/assets/22c5eaff-6f01-4d68-bf6a-aec93edef66c" />

## Задача 3
Создан файл ```compose.yaml``` и описаны сервисы:`web`, `db`.  
<img width="541" height="717" alt="изображение" src="https://github.com/user-attachments/assets/26df1eaa-0954-403c-85f7-cdad9e035ba5" />

Проект локально запущен с помощью docker compose и возвращает в качестве ответа время и локальный IP-адрес.
<img width="1632" height="222" alt="изображение" src="https://github.com/user-attachments/assets/f3b33023-2719-4c2f-8578-7fc9a070bf01" />

Подключился к контейнеру БД mysql и ввел запросы  
<img width="850" height="849" alt="изображение" src="https://github.com/user-attachments/assets/2357191f-24f1-4268-9821-c2200e191f75" />

## Задача 4
bash-скрипт, который скачает мой fork-репозиторий в каталог /opt и запустит проект целиком
<img width="601" height="366" alt="изображение" src="https://github.com/user-attachments/assets/beab94ec-edbd-43e9-9a2e-4ffbf38644a5" />
Запуск скрипта на ВМ Яндекс  
<img width="1860" height="730" alt="изображение" src="https://github.com/user-attachments/assets/75036fd5-18d4-4f7d-abbd-82eb4fc7b31a" />  
<img width="1860" height="730" alt="изображение" src="https://github.com/user-attachments/assets/11b76470-c154-49d3-a30e-062fe9b630b0" />  
<img width="1860" height="730" alt="изображение" src="https://github.com/user-attachments/assets/458fb1bd-0bff-48c4-8826-f01cb30a2ca9" />
<img width="1860" height="586" alt="изображение" src="https://github.com/user-attachments/assets/6a1ea331-eb1c-4bbd-9914-00ed3e0c0722" />

Проверка http подключений с `https://check-host.net/check-http`  
<img width="850" height="959" alt="изображение" src="https://github.com/user-attachments/assets/69dd5733-eab1-4dbf-91c5-46d9f357f910" />

Скриншоты SQL-запроса на сервере ВМ Яндекса  
<img width="1687" height="759" alt="изображение" src="https://github.com/user-attachments/assets/e4ebdcde-f245-4769-95e3-4f245eedac05" />
<img width="1781" height="759" alt="изображение" src="https://github.com/user-attachments/assets/098fe318-7038-491d-a6ed-99c9fc506b8a" />
Ссылка на [fork репозитарий](https://github.com/DrDevSpiderAl/shvirtd-example-python/)  

## Задача 6
Скачайте docker образ ```hashicorp/terraform:latest``` и скопируйте бинарный файл ```/bin/terraform``` на свою локальную машину, используя dive и docker save.
Предоставьте скриншоты  действий .

## Задача 6.1
Добейтесь аналогичного результата, используя docker cp.  
Предоставьте скриншоты  действий .
