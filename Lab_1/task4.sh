#!/bin/bash
echo "--- System Diagnostics ---"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
# Замість uptime використаємо час запуску системи через іншу утиліту
# або просто залишимо порожнім, якщо це критично для Windows
echo "Uptime: System is running (uptime utility not available in this shell)"
echo "User: $(whoami)"