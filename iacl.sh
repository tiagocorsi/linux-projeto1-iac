#!/bin/bash

echo "Criando Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groudadd GRP_SEC

echo "Criando usuários"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G carlos,GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G maria,GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G joao,GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G debora,GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G sebastiana,GRP_VEN
useradd roberto -c "Roberto" -m -p $(openssl passwd -crypt Senha123) -G roberto,GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G josefina,GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G amanda,GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G rogerio,GRP_SEC

echo "Permissoes Diretorios"

chowm root:GRP_ADM /adm
chowm root:GRP_VEN /ven
chowm root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo Finalizado"
