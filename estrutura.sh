#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários administradores..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd -e carlos
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd -e maria
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd -e joao

echo "Criando usuários vendedores..."

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd -e debora
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd -e sebastiana
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd -e roberto

echo "Criando usuários secretários..."

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd -e josefina
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd -e amanda
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd -e rogerio


echo "Criando permissões..."

chmod 777 /publico

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Configurações finalizadas." 
