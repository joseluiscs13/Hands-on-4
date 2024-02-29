#!/bin/bash

# Función para listar el contenido de un fichero (carpeta)
listar_contenido() {
    read -p "Ingrese la ruta absoluta al fichero o carpeta: " ruta
    ruta=$(eval echo "$ruta")
    ls "$ruta"
}

# Función para crear un archivo de texto con una línea de texto
crear_archivo() {
    read -p "Ingrese la cadena de texto para almacenar en el archivo: " texto
    echo "$texto" > nuevo_archivo.txt
    echo "Archivo creado exitosamente."
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    read -p "Ingrese la ruta absoluta del primer archivo: " archivo1
    archivo1=$(eval echo "$archivo1")
    
    read -p "Ingrese la ruta absoluta del segundo archivo: " archivo2
    archivo2=$(eval echo "$archivo2")

    # Utilizando el comando diff para comparar archivos
    diff "$archivo1" "$archivo2"
}

# Función para mostrar el uso de awk
uso_awk() {
    echo "Ejemplo de uso de awk:"
    echo "ls -l | awk '{print \$9}'"
}

# Función para mostrar el uso de grep
uso_grep() {
    echo "Ejemplo de uso de grep:"
    echo "grep 'patrón' archivo.txt"
}

# Menú principal
while true; do
    echo "=== Servicios ==="
    echo "1. Listar contenido de un fichero (carpeta)"
    echo "2. Crear archivo de texto con una línea de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar uso de awk"
    echo "5. Mostrar uso de grep"
    echo "6. Salir"

    read -p "Seleccione una opción (1-6): " opcion

    case $opcion in
        1) listar_contenido ;;
        2) crear_archivo ;;
        3) comparar_archivos ;;
        4) uso_awk ;;
        5) uso_grep ;;
        6) echo "Saliendo del script. ¡Hasta luego!"; exit ;;
        *) echo "Opción no válida. Por favor, seleccione una opción válida." ;;
    esac
done
