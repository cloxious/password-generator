#!/bin/bash

# Función para crear directorios
function crear_directorio() {
  directorio="$1"
  if ! [[ -d "$directorio" ]]; then
    mkdir -p "$directorio"
  fi
}

# Función para crear archivos
function crear_archivo() {
  archivo="$1"
  if ! [[ -f "$archivo" ]]; then
    touch "$archivo"
  fi
}

# Crear directorios
crear_directorio Respaldo
crear_directorio BaseDatosI/IParcial
crear_directorio PrograI/Examenes
crear_directorio PrograII/Ejercicios
crear_directorio Negocios/Ejemplos
crear_directorio Artificial

# Crear archivos
crear_archivo BaseDatosI/IParcial/Manual.sql
crear_archivo PrograI/Examenes/PrimerParcial.doc
crear_archivo PrograII/Ejercicios/Guia1.doc
crear_archivo Negocios/Ejemplos/Ejemplos.gwz
crear_archivo Artificial/Evaluaciones.xls

# Mover carpeta "Artificial" a "Respaldo"
mv Artificial Respaldo/

# Agrupar carpeta "Artificial"
tar -cvf Respaldo/Artificial.tar -C Respaldo/Artificial .

# Comprimir archivo agrupado
zip -r Respaldo/Artificial.tar.zip Respaldo/Artificial.tar

# Eliminar carpeta "BaseDatosI"
rm -r BaseDatosI

# No se necesita renombrar archivo "PrimerParcial.doc" ya que se crea con ese nombre.

# Mensaje de finalización
echo "**Script finalizado**"
