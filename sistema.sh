
#!/bin/bash

# MODULO 1: MONITOREO DEL SISTEMA

REPORTE="reportes/reporte_sistema.txt"

echo "====================================" > "$REPORTE"
echo "     REPORTE DE MONITOREO LINUX" >> "$REPORTE"
echo "====================================" >> "$REPORTE"

echo "Usuario actual:" >> "$REPORTE"
whoami >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Fecha y hora:" >> "$REPORTE"
date >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Distribucion Linux:" >> "$REPORTE"
cat /etc/os-release | grep PRETTY_NAME >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Espacio disponible en disco:" >> "$REPORTE"
df -h >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Monitoreo finalizado." >> "$REPORTE"

echo "Reporte generado correctamente."
echo "Ubicacion: $REPORTE"
