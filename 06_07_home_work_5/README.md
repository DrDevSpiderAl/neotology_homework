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

### ВНИМАНИЕ!
!!! В процессе последующего выполнения ДЗ НЕ изменяйте содержимое файлов в fork-репозитории! Ваша задача ДОБАВИТЬ 5 файлов: ```Dockerfile.python```, ```compose.yaml```, ```.gitignore```, ```.dockerignore```,```bash-скрипт```. Если вам понадобилось внести иные изменения в проект - вы что-то делаете неверно!
---

## Задача 3
Создан файл ```compose.yaml``` и описаны сервисы:`web`, `db`.  
<img width="541" height="717" alt="изображение" src="https://github.com/user-attachments/assets/26df1eaa-0954-403c-85f7-cdad9e035ba5" />

Проект локально запущен с помощью docker compose и возвращает в качестве ответа время и локальный IP-адрес.
<img width="1632" height="222" alt="изображение" src="https://github.com/user-attachments/assets/f3b33023-2719-4c2f-8578-7fc9a070bf01" />

Подклюлся к контейнеру БД mysql и ввел запросы  
<img width="850" height="849" alt="изображение" src="https://github.com/user-attachments/assets/2357191f-24f1-4268-9821-c2200e191f75" />

## Задача 4
1. Запустите в Yandex Cloud ВМ (вам хватит 2 Гб Ram).
2. Подключитесь к Вм по ssh и установите docker.
3. Напишите bash-скрипт, который скачает ваш fork-репозиторий в каталог /opt и запустит проект целиком.
4. Зайдите на сайт проверки http подключений, например(или аналогичный): ```https://check-host.net/check-http``` и запустите проверку вашего сервиса ```http://<внешний_IP-адрес_вашей_ВМ>:8090```. Таким образом трафик будет направлен в ingress-proxy. Трафик должен пройти через цепочки: Пользователь → Internet → Nginx → HAProxy → FastAPI(запись в БД) → HAProxy → Nginx → Internet → Пользователь
5. (Необязательная часть) Дополнительно настройте remote ssh context к вашему серверу. Отобразите список контекстов и результат удаленного выполнения ```docker ps -a```
6. Повторите SQL-запрос на сервере и приложите скриншот и ссылку на fork.

## Задача 5 (*)
1. Напишите и задеплойте на вашу облачную ВМ bash скрипт, который произведет резервное копирование БД mysql в директорию "/opt/backup" с помощью запуска в сети "backend" контейнера из образа ```schnitzler/mysqldump``` при помощи ```docker run ...``` команды. Подсказка: "документация образа."
2. Протестируйте ручной запуск
3. Настройте выполнение скрипта раз в 1 минуту через cron, crontab или systemctl timer. Придумайте способ не светить логин/пароль в git!!
4. Предоставьте скрипт, cron-task и скриншот с несколькими резервными копиями в "/opt/backup"

## Задача 6
Скачайте docker образ ```hashicorp/terraform:latest``` и скопируйте бинарный файл ```/bin/terraform``` на свою локальную машину, используя dive и docker save.
Предоставьте скриншоты  действий .

## Задача 6.1
Добейтесь аналогичного результата, используя docker cp.  
Предоставьте скриншоты  действий .
