#!/bin/bash

echo "=== COMPORTAMIENTO DE HARDWARE Y SOFTWARE ==="
echo ""

# --- SECCIÓN HARDWARE ---

echo "[+] HARDWARE: CPU"
    # Muestra el modelo del procesador y su uso actual
    lscpu | grep "Model name"
    top -bn1 | grep "Cpu(s)"
    echo ""

echo "[+] HARDWARE: RAM"
    # Muestra la memoria en formato comprensible (Gigabytes)
    free -h
    echo ""

echo "[+] HARDWARE: Almacenamiento"
    # Analiza el uso del disco en la partición principal
    df -h /
    echo ""

# --- SECCIÓN SOFTWARE ---

echo "[+] SOFTWARE: Top 5 Procesos (Consumo)"
    # Lista procesos ordenados por consumo de procesador (mayor a menor)
    ps -eo pid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
    echo ""

echo "[+] SOFTWARE: Programas Instalados (Principales)"
    # Muestra una lista de los paquetes y aplicaciones instaladas en el sistema
    snap list
    echo ""
