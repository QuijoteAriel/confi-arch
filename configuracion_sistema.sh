#!/bin/bash

#Esto creará dos archivos en el mismo directorio donde ejecutaste el script: lista_paquetes.txt y pacman.conf.backup 
#
#Reinstalar paquetes 
#
#1. Copia los archivos lista_paquetes.txt y pacman.conf.backup a tu nuevo sistema Arch Linux.
#2. (Opcional) Reemplaza el archivo /etc/pacman.conf en el nuevo sistema con tu copia de seguridad: sudo cp pacman.conf.backup /etc/pacman.conf.
#3. Instala los paquetes: sudo pacman -Syu --needed - < lista_paquetes.txt.



# Guarda la lista de paquetes instalados en un archivo
pacman -Qq > lista_paquetes.txt

echo "Lista de paquetes guardada en lista_paquetes.txt"

# Opcional: Guarda también la configuración de pacman
sudo cp /etc/pacman.conf pacman.conf.backup

echo "Configuración de pacman guardada en pacman.conf.backup"
