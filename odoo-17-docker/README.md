# odoo project

https://github.com/odoo/docker/tree/master

abcd.1234

###

- docker-compose up -d

### crear modulos

- Ingresar al contenedor como root

  - docker exec -u root -t -i odoo /bin/bash

- ejecutar

  - odoo scaffold [nombre_modulo] /mnt/extra-addons
