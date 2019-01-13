# DyakonovAlex_infra
DyakonovAlex Infra repository

bastion_IP = 35.187.112.233
someinternalhost_IP = 10.132.0.3

# One line connection to someinternalhost
ssh -o ProxyCommand='ssh -i ~/.ssh/appuser -W %h:%p appuser@35.187.112.233' appuser@10.132.0.3

# Connection to someinternalhost by alias
1. create file ~/.ssh/config

2. add to ~/.ssh/config:

HOST bastion
  user appuser
  IdentityFile ~/.ssh/appuser
  hostname 35.187.112.233


HOST someinternalhost
  user appuser
  IdentityFile ~/.ssh/appuser
  hostname 10.132.0.3
  ProxyCommand ssh bastion -W %h:%p

