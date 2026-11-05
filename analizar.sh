
#!/bin/bash

# MODULO 3: ANALISIS DE INFORMACION

ARCHIVO="datos_servidores.txt"
COPIA="copias/servidores_modificados.txt"
REPORTE="reportes/reporte_analisis.txt"

if [ ! -f "$ARCHIVO" ]; then
    echo "No se encuentra el archivo de datos."
    exit 1
fi

echo "==================================" > "$REPORTE"
echo "     ANALISIS DE SERVIDORES" >> "$REPORTE"
echo "Fecha: $(date)" >> "$REPORTE"
echo "==================================" >> "$REPORTE"

echo "Servidores con uso superior al 70%:" >> "$REPORTE"

awk 'NR==1 || $2 > 70' "$ARCHIVO" >> "$REPORTE"

# Crear una copia y reemplazar palabras
sed 's/activo/monitoreado/g' "$ARCHIVO" > "$COPIA"

echo "" >> "$REPORTE"
echo "Copia modificada: $COPIA" >> "$REPORTE"

echo "Analisis finalizado."
echo "Reporte guardado en $REPORTE"

