#!/bin/bash
echo "==== COMPORTAMIENTO DE HARDWARE Y SOFTWARE ===="
echo ""
echo "[+] HARDWARE: CPU"
lscpu | grep "Model name"
top -bn1 | grep "Cpu(s)"
echo ""
echo "[+] HARDWARE: RAM"
free -h
echo ""
echo "[+] HARDWARE: Almacenamiento"
df -h /
echo ""
echo "[+] SOFTWARE: Top 5 Procesos (Consumo)"
ps -eo pid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
