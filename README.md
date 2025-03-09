# Entrega Proyecto de Modelado de Datos y SQL

Este proyecto fue creado con el fin de ejercitar y demostrar los conocimientos adquiridos en clases virtuales sobre el Modelado de Datos y SQL hante un caso que se pueda dentro de la vida cotidiana.

## El contenido de este proyecto incluye:

- Uso de **Base de Datos**, **Diagramas de Modelado de Datos** y **SQL**.
- Identificación de:
   - Entidades y Relaciones.
   - Atributos y Tipos.
   - Claves Primarias y Foráneas.
   - Cardinalidad I-II-III
   - Normalizacion I-II-III-IV-V-VI-VII
- **Creación**, **Modificación**, **Borrado** de Tablas.
- **Incercion** y **Extracción** de datos hacia las Tablas Creadas.

## Objetivo del Proyecto

Los principales objetivos son de dar una solucion informatica a traves del maquetado de una base de datos hante una problematica que puede ocurrir en la vida real y ser capas de aplicar los contenidos enseñados en clases online de forma efectiva.

## Detalles del Proyecto

Se posee un Video Club que no posee el sofware adecuado para manejar el negocio de forma eficiente, por lo cual se nos pide confeccionar una nueva base de datos segun los datos que nos proporciona el cliente.

- Se necesita registrar los **Socios** que van al Video Club. Se necesita el Nombre, Apellidos, Fecha de Nacimiento, Teléfono y número de Identificación.
- Se necesita registrar la **Dirección de Correspondencia** de los Socios. Se necesita el Código postal, Calle, Número y Piso. La Dirección es **opcional** registrarlo.
- Se necesita registrar **Películas**. Se necesita el Título, Género, Director y Sinopsis de cada una. Además cada Película puede tener más de una copia.
- Se necesita saber que Socio a **Prestado** cada copia y cuando, oséa, la fecha en la que se la ha llevado y la fecha de la devolucion. Cuando una película no tiene fecha de devolucion, se considera prestada.
- Además se necesita consultar que películas estan disponibles para alquilar en este momento (las que no estan prestadas). Se requiere saber el título de la película y el numero de copias disponibles

## Tecnologías

- **SQL**

## Instrucciones de instalación y uso

Requisitos de Software:

- **draw.io** https://app.diagrams.net/
- **DBeaver** https://dbeaver.io/ - Tested Version: 25.0.0.202503021833

Para utilizar este proyecto, sigue estos pasos:

1. Si quieres puedes descargar los archivos directamente desde el navegador o clonar el repositorio desde GitHub (Mediante SourceTree si te es más comodo):
   ```bash
   git clone https://github.com/PabloSch26/SQL_Entrega.git
2.1 Abre el archivo "Diagrama Modelado de Datos VideoClub.drawio" a través de la página **draw.io**.

2.2 Abre el archivo "Script SQL VideoClub.sql" a través de la aplicación  **DBeaver**. Tenga en cuanta que el código SQL fué escrito mediante PostgreSQL.

## Descripción de Archivos

- **draw.io :** Representación visual de la base de datos.
- **DBeaver :** Contiene las consultas y estructuras necesarias para crear la base de datos en PostgreSQL.

## Sin contribuciones ni licencias

Este proyecto no cuenta con contribuciones externas ni licencias.
