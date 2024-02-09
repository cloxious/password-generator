#!/bin/bash

# Se crean los directorios
mkdir -p Respaldo
mkdir -p BaseDatosI/IParcial
mkdir -p PrograI/Examenes
mkdir -p PrograII/Ejercicios
mkdir -p Negocios/Ejemplos
mkdir -p Artificial

# Se crean los archivos
touch BaseDatosI/IParcial/Manual.sql
touch PrograI/Examenes/PrimerP.doc
touch PrograII/Ejercicios/Guia1.doc
touch Negocios/Ejemplos/Ejemplos.gwz
touch Artificial/Evaluaciones.xls

# Se mueve la carpeta "Artificial" a "Respaldo"
mv Artificial Respaldo/

# Se agrupa la carpeta "Artificial"
tar -cvf Respaldo/Artificial.tar -C Respaldo/Artificial .

# Se comprime el archivo agrupado
zip Respaldo/Artificial.tar.zip Respaldo/Artificial.tar

# Se elimina la carpeta "BaseDatosI" y sus archivos
rm -r BaseDatosI

# Se renombra el documento "PrimerP.doc" a "PrimerParcial.doc"
mv PrograI/Examenes/PrimerP.doc PrograI/Examenes/PrimerParcial.doc
