# Plantilla Boletín

Plantilla para el Boletín de la [Coordinación de Educación a Distancia](http://www.utbvirtual.edu.co) de la Universidad Tecnológica de Bolívar.

# Créditos

- Diseño gráfico: Jose Gelvis
- Desarrollo e implementación: [Santiago Mendoza](http://www.santiagomendoza.org), [Andrés Morelos](https://www.linkedin.com/in/andresmorelos), Richard Velásquez

# ¿Cómo usar los scripts?

## Crear una nueva versión del boletin
```shell
  ./make.sh <Nombre_del_boletín>
```
Esto creará la rama de la nueva versión y el archivo **boletinName** en donde se almacena el nombre del boletin; **OJO: es el mismo de la rama**

ejemplo:
  ```shell
  ./make.sh Boletin39
```
Se crea la rama **Boletin39** y se genera el archivo **boletinName** con el texto Boletin39.

## Crear el .zip para subir al servidor
```shell
  ./compress.sh
```
esto genera el archivo **Boletin39.zip**
