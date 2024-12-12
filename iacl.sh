#!/bin/bash


echo "criando diretorios.."


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de users"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"

useradd carlos -m -s  /bin/bash -G GRP_ADM
echo "carlos:senha123" | chpasswd
useradd maria -m -s  /bin/bash -G GRP_ADM
echo "maria:senha123" | chpasswd
useradd joao  -m -s  /bin/bash -G GRP_ADM
echo "joao:senha123" | chpasswd


useradd debora -m -s  /bin/bash -G GRP_VEN
echo "debora:senha123" | chpasswd
useradd sebastiana -m -s  /bin/bash -G GRP_VEN
echo "sebastiana:senha123" | chpasswd
useradd roberto -m -s  /bin/bash -G GRP_VEN
echo "roberto:senha123" | chpasswd


useradd josefina -m -s  /bin/bash -G GRP_SEC
echo "josefina:senha123" | chpasswd
useradd amanda -m -s  /bin/bash -G GRP_SEC
echo "amanda:senha123" | chpasswd
useradd rogerio -m -s  /bin/bash -G GRP_SEC
echo "rogerio:senha123" | chpasswd

echo "especificando permissões dos diretorios"


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "final"




















