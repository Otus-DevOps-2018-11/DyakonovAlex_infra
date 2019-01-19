# DyakonovAlex_infra
DyakonovAlex Infra repository

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
