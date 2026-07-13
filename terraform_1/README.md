# Домашняя работа
------

### Чек-лист готовности к домашнему заданию

1. Скриншот установленной версии terraform
<img width="820" height="96" alt="image" src="https://github.com/user-attachments/assets/cdc9614e-66c7-4318-9eb8-8509cd23deb7" />

------

### Задание 1

1. Согласно файлу **.gitignore** в terraform-файле **personal.auto.tfvars** допустимо сохранить личную, секретную информацию? 
2. После выполнения кода проекта в terraform.tfstate был создан рандомный ключ **"result": "lSAbkf69SaQk2ltu"**

3. После выполнения команды ```terraform validate``` возникают ошибки Missing name for resource и Invalid resource name. Отстутсвовало указание имени ресурса, недопустимое значение имени (начинается с цифры), и в переменной name не верное наименование **random_string_FAKE.resut** Исправленный файл:
<img width="691" height="708" alt="изображение" src="https://github.com/user-attachments/assets/a6b861ed-f741-49db-b810-3d0a35902e43" />

4. <img width="1390" height="1036" alt="изображение" src="https://github.com/user-attachments/assets/e0977365-1d2d-4f9e-9084-e23abdb0a7c8" />  

5. Опасность применения ключа ```-auto-approve``` в том что изменения применяются без запроса подтверждения и если в коде были допущены ошибки, то можно случайно удалить важный ресуср.  
Данный ключ необходим для автоматизации процессов в CI/CD, когда необходимо обойти ручной ввод подтверждения с клавиатуры.  
<img width="1039" height="52" alt="image" src="https://github.com/user-attachments/assets/ff25c3ae-ec7d-43f9-ac5c-e49e121b89ea" />  
6. <img width="551" height="195" alt="image" src="https://github.com/user-attachments/assets/c22b01ca-a4f8-4cee-b0c9-6c2d0fa4df2f" />  
 
7. **nginx:latest** остался в локале, так как в main.tf в блоке resource "docker_image" "nginx" явно задан параметр: keep_locally = true  
Согласно официальной документации  
**keep_locally (Boolean) If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.**
