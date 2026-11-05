
#!/bin/bash

crear_archivo() {
    echo "Nombre del archivo:"
    read -r nombre

    if [ -z "$nombre" ] || [[ "$nombre" == */* ]]; then
        echo "Nombre no valido."
    else
        touch "archivos/$nombre"
        echo "Archivo creado correctamente."
    fi
}

copiar_archivo() {
    echo "Nombre del archivo que deseas copiar:"
    read -r nombre

    if [ -f "archivos/$nombre" ] && [[ "$nombre" != */* ]]; then
        cp "archivos/$nombre" "copias/$nombre"
        echo "Archivo copiado correctamente."
    else
        echo "El archivo no existe."
    fi
}

cambiar_permisos() {
    echo "Nombre del archivo:"
    read -r nombre

    if [ -f "archivos/$nombre" ] && [[ "$nombre" != */* ]]; then
        chmod 644 "archivos/$nombre"
        echo "Permisos cambiados a 644."
    else
        echo "El archivo no existe."
    fi
}

eliminar_archivo() {
    echo "Nombre del archivo que deseas eliminar:"
    read -r nombre

    if [ -f "archivos/$nombre" ] && [[ "$nombre" != */* ]]; then
        echo "¿Estas seguro de eliminar $nombre? (s/n)"
        read -r respuesta

        if [ "$respuesta" = "s" ] || [ "$respuesta" = "S" ]; then
            rm -- "archivos/$nombre"
            echo "Archivo eliminado."
        else
            echo "Operacion cancelada."
        fi
    else
        echo "El archivo no existe."
    fi
}

while true
do
    echo ""
    echo "=============================="
    echo "     GESTOR DE ARCHIVOS"
    echo "=============================="
    echo "1. Crear archivo"
    echo "2. Copiar archivo"
    echo "3. Cambiar permisos a 644"
    echo "4. Eliminar archivo"
    echo "5. Salir"
    echo "=============================="

    read -r -p "Selecciona una opcion: " opcion

    case "$opcion" in
        1) crear_archivo ;;
        2) copiar_archivo ;;
        3) cambiar_permisos ;;
        4) eliminar_archivo ;;
        5) echo "Saliendo del gestor..."; break ;;
        *) echo "Opcion incorrecta." ;;
    esac
done
