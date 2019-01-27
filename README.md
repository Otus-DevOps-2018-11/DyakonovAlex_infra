# DyakonovAlex_infra
DyakonovAlex Infra repository

## Homework 7  

- Добавлено правило файрволла для ssh  
- Добавлен IP для инстанса с приложением  
- Добавлены шаблоны packer для VM: db.json и app.json  
- Добавлены шаблоны terraform для развёртывания VM: db.tf и app.tf  
- Добавлены модули terraform на основе шаблонов db.tf, app.tf и vpc.tf
- Добавлен модуль SweetOps/storage-bucket/google
- Создан бакет

### Самостоятельные задание 1  

1. Проверил работу параметризованного модуля vpc. Ввёл в source_ranges чужой IP адрес, применил правило и проверил отсутствие соединения к обоим хостам по ssh. Проконтролировал, как изменилось правило файрвола в веб консоли.
2. Ввёл в source_ranges свой IP адрес, применил правило и проверил наличие соединения к обоим хостам по ssh.
3. Вернул 0.0.0.0/0 в source_ranges.

### Самостоятельные задания 2  

1. Удалил из папки terraform файлы main.tf, outputs.tf, terraform.tfvars, variables.tf, так как они теперь перенесены в stage и prod
2. Параметризировал конфигурацию модулей насколько считаю нужным:  
   Добавил настройки имён инстансов через переменные.  
3. Отформатировал конфигурационные файлы, используя команду terraform fmt

### Задание со * 1  

1. Настроил хранение стейт файла в удаленном бекенде (remote backends) для окружений stage и prod, используя Google Cloud Storage в качестве бекенда. Описание бекенда вынес в отдельный файл backend.tf 
2. Перенёс конфигурационные файлы Terraform в другую директорию (вне репозитория). Проверил, что state-файл (terraform.tfstate) отсутствует. Запустил Terraform в обеих директориях и проконтролировал, что он "видит" текущее состояние независимо от директории, в которой запускается  
3. Попробовал запустить применение конфигурации одновременно, чтобы проверить работу блокировок  

### Задание с ** 2  

1. Добавил необходимые provisioner в модули для деплоя и работы приложения и бд. Файлы, используемые в provisioner, расположены в директории модулей 



## Homework 6  
- установлен terraform
- создан инстанс с помощью terraform
- добавлен ssh-ключ
- добавлен тег файрволла
- добавлен скрипт деплоя
- переразвёрнут инстанс с деплоем приложения
- добавлены входные переменные
- переменные определены в terraform.tfvars
- удалён и создан инстанс

### Самостоятельные задания  

- Определена input переменная для приватного ключа 
- Определена input переменная для задания зоны 
- Отформатированы все конфигурационные файлы через terraform fmt  
- Добавлен файл terraform.tfvars.example в котором указаны переменные для образца


## Homework 5
параметризированы:  
- ID проекта (обязательно)  
- source_image_family (обязательно)  
- machine_type  
- описание образа  
- размер и тип диска  
- название сети  
- тег сети  

Создан базовый образ семейства reddit-base

## Homework 4
<details>
testapp_IP = 35.187.112.233
testapp_port = 9292
</details>

## Homework 3
<details>
bastion_IP = 35.187.112.233
someinternalhost_IP = 10.132.0.3

### One line connection to someinternalhost
ssh -o ProxyCommand='ssh -i ~/.ssh/appuser -W %h:%p appuser@35.187.112.233' appuser@10.132.0.3

### Connection to someinternalhost by alias

create file ~/.ssh/config

add to ~/.ssh/config:

HOST bastion
  user appuser
  IdentityFile ~/.ssh/appuser
  hostname 35.187.112.233


HOST someinternalhost
  user appuser
  IdentityFile ~/.ssh/appuser
  hostname 10.132.0.3
  ProxyCommand ssh bastion -W %h:%p
</details>
