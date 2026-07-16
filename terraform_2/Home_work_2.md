# Домашняя работа «Основы Terraform. Yandex Cloud»

------

### Задание 1

- скриншот ЛК Yandex Cloud с созданной ВМ, где видно внешний ip-адрес
<img width="1755" height="291" alt="изображение" src="https://github.com/user-attachments/assets/8cc92ea5-0917-40ae-bb84-bde50a309b61" />  

- скриншот консоли, curl  
<img width="419" height="39" alt="изображение" src="https://github.com/user-attachments/assets/fe9a568d-4f24-4a86-8ecc-54a5d4555e49" />  

- ответы на вопросы.

**Синтаксические ошибки**: В resource "yandex_compute_instance" "platform" допущена ошибка в аргументе  platform_id = "standart-v4" необходимо указывать standard и указана несуществующая версия платформы, заменил на   platform_id = "standard-v3" которая поддерживает от 2 ядер, как следствие cores = 2 и core_fraction = 20.
В metadata было не верное имя переменной для SSH-ключа vms_ssh_root_key не соответствовало названию созданного файла публичного ключа созданного по ТЗ (vms_ssh_public_root_key).  

**Оба параметра помогают экономить ресурсы гранта в процессе обучения.**  
```preemptible = true``` указывает на создание ВМ с режимом прерывания, это значит что оператор в случае нехватки ресурсов может прерывать её работу, сохраняя все её данные при этом, работает не более 24 часов.
```core_fraction=5``` указывает на процент использования ядер, выделенных при создание ВМ, изначально в конфигурации было указано 5%, но я создал с 20%
  

### Задание 2

3. Проверка terraform plan, после объявления необходимых переменных в файле variables.tf: 
<img width="891" height="174" alt="изображение" src="https://github.com/user-attachments/assets/2422ae08-a7e8-4afd-8015-0cfbf4046454" />



### Задание 3
  
<img width="1763" height="389" alt="изображение" src="https://github.com/user-attachments/assets/e2710770-8a29-4ce7-8cad-c460f91aa2ea" />




### Задание 4

Вывод команды ```terraform output```  
<img width="583" height="198" alt="изображение" src="https://github.com/user-attachments/assets/3bd55451-afea-4f64-8dac-03c7f3a0f06f" />  



### Задание 5

3. Применение изменений после создания locals.tf
<img width="1097" height="697" alt="изображение" src="https://github.com/user-attachments/assets/d4aed9c4-d3bf-4404-b74e-70254b61e2ad" />  



### Задание 6

6. Проверка наличия изменений через команду terraform plan.  
<img width="904" height="219" alt="изображение" src="https://github.com/user-attachments/assets/222a5d15-4f57-48d0-af13-65ab97fb7a97" />


-----
