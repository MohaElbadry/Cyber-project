#!/bin/bash
# Script de renommage corrigé après les modifications de l'utilisateur
# Date: 2026-01-05

cd /home/elbadry_/Dev/Other/Cyber-project/repport/images

echo "🔄 Renommage des images avec nouvelle numérotation..."

# Phase 1: Configuration AWS (VPC, Subnet) - Images 01-06
# Garder: 01-vpc-creation.png, 02-subnet-configuration.png

# Phase 2: Instances EC2 - Images 07-15
# Garder: 07, 08, 09
mv "10-instance-client-server-config.png" "10-instance-client-windows-config.png" 2>/dev/null
mv "instance-list-status.png" "11-instances-list-status.png" 2>/dev/null
mv "12-instances-client-details.png" "12-instances-details.png" 2>/dev/null
mv "instance-Server.png" "13-instance-zabbix-server-details.png" 2>/dev/null
mv "instance-client-linux.png" "14-instance-client-linux-details.png" 2>/dev/null
mv "instance-client-windows.png" "15-instance-client-windows-details.png" 2>/dev/null
mv "windows-get-password.png" "16-windows-get-password.png" 2>/dev/null

# Phase 3: Installation Docker et Zabbix - Images 17-22
mv "ssh-server.png" "17-ssh-connection-server.png" 2>/dev/null
# Garder: 13-ssh-connection-zabbix-server.png devient 18
mv "13-ssh-connection-zabbix-server.png" "18-ssh-zabbix-server.png" 2>/dev/null
mv "docker-installation+docker-compose-file.png" "19-docker-installation.png" 2>/dev/null
mv "docker-compose-up.png" "20-docker-compose-up.png" 2>/dev/null
mv "containers-status-running.png" "21-containers-running-status.png" 2>/dev/null

# Phase 4: Interface Web Zabbix - Images 22-25
mv "31-zabbix-login.png" "22-zabbix-web-login.png" 2>/dev/null
mv "32-zabbix-dashborad.png" "23-zabbix-dashboard.png" 2>/dev/null

# Phase 5: Configuration Agents - Images 26-32
mv "35-zabbix-client-linux-config.png" "24-agent-linux-configuration.png" 2>/dev/null
mv "37-zabbix-windows-RDP.png" "25-windows-rdp-connection.png" 2>/dev/null
mv "41-zabbix-windows-installation.png" "26-agent-windows-installation.png" 2>/dev/null

# Phase 6: Ajout des Hôtes dans Zabbix - Images 33-38
mv "44-add-client-linux-host.png" "27-zabbix-add-host-linux.png" 2>/dev/null
mv "45-list-host.png" "28-zabbix-hosts-list.png" 2>/dev/null
mv "48-zabbix-list-host-status-availble.png" "29-zabbix-hosts-status-green.png" 2>/dev/null

# Phase 7: Monitoring et Dashboard - Images 39-42
mv "54-zabbix-global-dashboard.png" "30-zabbix-monitoring-dashboard.png" 2>/dev/null

# Phase 8: Test de Stress et Alertes - Images 43-50
mv "command-stress-out-cpu.png" "31-stress-test-command.png" 2>/dev/null
mv "56-cpu-stress-out-cpu.png" "32-stress-test-cpu-spike.png" 2>/dev/null
mv "50-zabbix-monitoring-problems.png" "33-zabbix-monitoring-problems.png" 2>/dev/null
mv "57-zabbix-problmes-list.png" "34-zabbix-problems-list.png" 2>/dev/null
mv "51-zabbix-events-history.png" "35-zabbix-events-history.png" 2>/dev/null
mv "52-zabbix-triggers-list.png" "36-zabbix-triggers-list.png" 2>/dev/null
mv "53-zabbix-triggers-config.png" "37-zabbix-triggers-config.png" 2>/dev/null

# Logos et ressources - pas de numéros
# Garder: logo-enset.png, footer.png

echo ""
echo "✅ Renommage terminé !"
echo ""
echo "📊 Résumé :"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
ls -1 *.png | grep -E '^[0-9]{2}-' | nl
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🎨 Ressources :"
ls -1 logo-*.png footer.png 2>/dev/null
echo ""
echo "📁 Total images numérotées :"
ls -1 *.png | grep -E '^[0-9]{2}-' | wc -l
