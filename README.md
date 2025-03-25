# Script de Respaldo y Restauración de Paquetes Arch Linux

Este script facilita el respaldo y la restauración de paquetes instalados en Arch Linux. Permite guardar una lista de los paquetes instalados y la configuración de `pacman` para su uso en una nueva instalación del sistema.

## Funcionalidades

* **Respaldo de la lista de paquetes:** Crea un archivo `lista_paquetes.txt` que contiene la lista de todos los paquetes instalados a través de `pacman`.
* **Respaldo de la configuración de pacman (opcional):** Guarda una copia del archivo `/etc/pacman.conf` como `pacman.conf.backup`.
* **Restauración de paquetes:** Permite reinstalar todos los paquetes listados en `lista_paquetes.txt` en un nuevo sistema.
* **Restauración de configuracion de pacman (opcional):** Permite restaurar la configuracion de pacman.

## Uso

### Respaldo

1.  Guarda el script como `guardar_paquetes.sh`.
2.  Dale permisos de ejecución: `chmod +x guardar_paquetes.sh`.
3.  Ejecuta el script: `./guardar_paquetes.sh`.

Esto creará los archivos `lista_paquetes.txt` y `pacman.conf.backup` en el mismo directorio.

### Restauración

1.  Copia los archivos `lista_paquetes.txt` y `pacman.conf.backup` al nuevo sistema Arch Linux.
2.  (Opcional) Restaura la configuración de `pacman`: `sudo cp pacman.conf.backup /etc/pacman.conf`.
3.  Instala los paquetes: `sudo pacman -Syu --needed - < lista_paquetes.txt`.

### Consideraciones adicionales

* Este script solo maneja paquetes instalados a través de `pacman`. Los paquetes instalados desde otras fuentes (AUR, Flatpak, Snap, pip, docker, etc.) deben respaldarse y restaurarse por separado.
* Algunos paquetes pueden tener archivos de configuración que no se restauran automáticamente. Deberás restaurarlos manualmente si es necesario.
* Para respaldar paquetes de AUR, puedes utilizar comandos como `yay -Qeq > lista_aur.txt` o `paru -Qeq > lista_aur.txt`.
* Para respaldar aplicaciones Flatpak, puedes utilizar `flatpak list --app --all > flatpak_list.txt`.
* Para respaldar aplicaciones Snap, puedes utilizar `snap list > snap_list.txt`.
* Para respaldar paquetes instalados por medio de PIP (python) se puede usar `pip freeze > requirements.txt`.
* Para respaldar imagenes de docker `docker images -q > docker_images.txt`.

## Contribución

¡Las contribuciones son bienvenidas! Si tienes ideas para mejorar el script, por favor, abre un issue o envía un pull request.

## Licencia

Este script se distribuye bajo la licencia MIT. Consulta el archivo `LICENSE` para obtener más información.
