
#!/bin/bash

# MODULO 4: AUTOMATIZACION

# Ubicacion del proyecto
cd "$(dirname "$0")" || exit 1

echo "Iniciando monitoreo: $(date)"

# Ejecutar monitoreo del sistema
./sistema.sh

# Ejecutar analisis de servidores
./analizar.sh

echo "Proceso finalizado: $(date)"
