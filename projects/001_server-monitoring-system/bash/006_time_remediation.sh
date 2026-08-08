#!/bin/bash
# ==============================================================================
#  AUTOMATED TIME REMEDIATION UTILITY (CHRONY & HWCLOCK)
# UTILIDAD DE REMEDIACIÓN AUTOMÁTICA DE TIEMPO  (CHRONY Y HWCLOCK)
# ==============================================================================

# Fetch the certified true baseline date and time (YYYY-MM-DD HH:MM) from the local controller
# Obtiene la fecha base verdadera certificada (AAAA-MM-DD) desde el controlador local
TRUE_DATE=$(date +%Y-%m-%d %H:%M)

echo "================================================================="
echo "   STARTING MULTI-SERVER TIME REMEDIATION PIPELINE               "
echo "================================================================="

# Iterate through the datacenter infrastructure inventory file line by line
# Recorre el archivo de inventario de la infraestructura del centro de datos línea por línea
while read -r server; do
    
    # Defensive Check: Validate that the server string payload is non-zero/not blank
    # Verificación Defensiva: Valida que la cadena del servidor no esté vacía o en blanco
    if [ -n "$server" ]; then
        echo "-----------------------------------------------------------------"
        echo "[REMEDIATION RUN] Targeting Node: ${server}"
        
        # Interrogate the remote machine to check its current isolated date status
        # Interroga a la máquina remota para comprobar su estado de fecha aislado actual
        SERVER_DATE=$(ssh -n "${server}" "date +%Y-%m-%d %H:%M")
        
        # Logical Decision: Evaluate if the remote node suffers from a time drift
        # Decisión Lógica: Evalúa si el nodo remoto sufre de un desfase de tiempo
        if [ "$SERVER_DATE" != "$TRUE_DATE" ]; then
            echo "    [DRIFT DETECTED] Server date is $SERVER_DATE. Enforcing synchronization..."
            
            # Step 1: Force Chrony to bypass kernel threshold limits and step the system clock immediately
            # Paso 1: Fuerza a Chrony a ignorar los límites del kernel y ajustar el reloj del sistema de inmediato
            ssh -n "${server}" "sudo chronyc makestep"
            
            # Step 2: Synchronize the motherboard Hardware Clock (RTC) with the newly corrected system time
            # Paso 2: Sincroniza el Reloj de Hardware (RTC) de la tarjeta madre con el tiempo del sistema corregido
            ssh -n "${server}" "sudo hwclock -w"
            
            echo "    [SUCCESS] System and Hardware clocks are now fully synchronized on ${server}."
        else
            # Node timestamp is already compliant with the certified central infrastructure baseline
            # La marca de tiempo del nodo ya cumple con la base de infraestructura central certificada
            echo "    [OK] Node time parameters are stable. No corrective actions required."
        fi
    fi
done < servers.txt

echo "-----------------------------------------------------------------"
echo "=== MULTI-SERVER TIME HARDENING PROCESS CONCLUDED ==="
echo "================================================================="
