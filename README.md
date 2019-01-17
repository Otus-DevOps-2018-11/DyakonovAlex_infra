# DyakonovAlex_infra
DyakonovAlex Infra repository

## Homework 5
<details>
параметризированы:  
- ID проекта (обязательно)  
- source_image_family (обязательно)  
- machine_type  
- описание образа  
- размер и тип диска  
- название сети  
- тег сети  

Создан базовый образ семейства reddit-base
</details>

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
