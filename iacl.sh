#!/bin/bash

echo "Criando diretorios"

mkdir /publico /adm /sec /ven

echo "Criando grupo de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123)

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123)
useradd roberta -m -s /bin/bash -p $(openssl passwd -crypt senha123)

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123)

echo "Adicionando aos grupos"
usermod -g GRP_ADM carlos
usermod -g GRP_ADM maria
usermod -g GRP_ADM joao

usermod -g GRP_VEN debora
usermod -g GRP_VEN sebastiana
usermod -g GRP_VEN roberta

usermod -g GRP_SEC josefina
usermod -g GRP_SEC amanda
usermod -g GRP_SEC rogerio

echo "Especificando permossoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
