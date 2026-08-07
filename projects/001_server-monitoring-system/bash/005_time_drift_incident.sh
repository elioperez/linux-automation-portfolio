#!/bin/bash

# ==============================================================================
# INFRASTRUCTURE AUDIT: CHECKING ROCKY TIME CONTROLLER vs. TIME SERVERS
# AUDITORÍA DE INFRAESTRUCTURA: COMPROBANDO EL CONTROLADOR ROCKY vs. SERVIDORES
# ==============================================================================

# 1. LOCAL AUDIT: Verify the baseline time status on the master controller machine
# 1. AUDITORÍA LOCAL: Verifica el estado del tiempo base en la máquina controladora maestra
echo "=========================================================="
echo "CHECKING THE TIME IN CONTROLLER MACHINE"
echo "__________________________________________"
hostname && timedatectl | grep -E "Local time|synchronized"

# 2. REMOTE AUDIT: Loop through the inventory to sweep all infrastructure nodes
# 2. AUDITORÍA REMOTA: Recorre el inventario para escanear todos los nodos de la infraestructura
while read -r server
do
    # Safety Check: Enforce execution only if the server string length is non-zero
    # Verificación de Seguridad: Fuerza la ejecución solo si la cadena del servidor no está vacía
    if [ -n "$server" ]; then
        echo "============================================================"
        echo "CHECKING TIME IN SERVER ${server}"
        echo "____________________________________________"
        
        # Execute cross-server query over secure SSH data channels
        # Ejecuta la consulta cruzada entre servidores sobre canales de datos seguros SSH
        ssh -n ${server} '
            hostname && timedatectl | grep -E "Local time|synchronized"
        '
    fi
done < servers.txt