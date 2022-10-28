#! /bin/bash

echo "Creating directories..."

mkdir /public && mkdir /adm && mkdir /ven && mkdir /sec

echo "Directories created."
echo "Creating groups..."

groupadd -g 1000 GRP_ADM && groupadd -g 1001 GRP_VEN && groupadd -g 1002 GRP_SEC

echo "Groups created."
echo "Creating users..."

useradd carlos -c "Carlos Moreira" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Rita" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora de Borba" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana de Jesus" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Carvalho" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina das Dores" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Moraes" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Martins" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e

echo "Users created."
echo "Especifying permissions..."

chown root:GRP_ADM /public
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Permissions specified."
echo "Finish script!"
