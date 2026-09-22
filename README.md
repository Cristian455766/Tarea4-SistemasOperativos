# Tarea 4 - Sistemas Operativos

## Script de monitoreo de hardware y software en Ubuntu

**Autores:**
- Karlos Joel Aquise Zea
- Elvis Cristian Canazas Choquemamani

**Curso:** Sistemas Operativos  
**Docente:** Ruelas Acero Donia Alizandra  
**Universidad:** Universidad Nacional del Altiplano  
**Fecha:** Septiembre 2026

---

## 📋 Descripción

Script en **Bash** que automatiza el diagnóstico del sistema operativo **Ubuntu**, mostrando información del **hardware** (CPU, RAM, disco) y del **software** (programas instalados, procesos y consumo de recursos) en tiempo real.

Ejecutado en un entorno virtualizado con **Oracle VirtualBox** (modo Live - Try Ubuntu).

---

## 🖥️ Información que muestra

### Hardware
- **CPU:** modelo y porcentaje de uso/inactividad
- **RAM:** memoria total, usada, libre y swap
- **Almacenamiento:** espacio total, usado y disponible de la partición raíz

### Software
- **Programas instalados:** listado de paquetes Snap instalados en el sistema
- **Top 5 procesos** ordenados por consumo de CPU
- **PID, comando, %RAM y %CPU** de cada proceso activo

---

## ⚙️ Comandos utilizados

| Comando | Función |
|---|---|
| `lscpu` | Muestra la arquitectura y modelo del procesador |
| `top -bn1` | Toma una muestra instantánea del uso del CPU |
| `free -h` | Muestra la memoria RAM en formato legible |
| `df -h /` | Muestra el espacio en disco de la partición raíz |
| `ps -eo pid,cmd,%mem,%cpu` | Lista procesos activos con su consumo |
| `snap list` | Lista los programas instalados mediante Snap |

---

## 🚀 Cómo ejecutarlo

```bash
chmod +x TAREA.sh
./TAREA.sh
