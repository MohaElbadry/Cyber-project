#!/bin/bash
# Script de renommage des captures d'écran pour le rapport Zabbix
# Basé sur la chronologie du projet

cd /home/elbadry_/Dev/Other/Cyber-project/repport/images

# Phase 1: Configuration AWS (VPC, Subnet, IGW, Security Groups)
mv "Screenshot from 2026-01-04 17-53-54.png" "01-vpc-creation.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-07-21.png" "02-subnet-configuration.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-07-45.png" "03-internet-gateway.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-08-39.png" "04-route-table.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-08-46.png" "05-security-groups-zabbix.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-09-33.png" "06-security-groups-clients.png" 2>/dev/null

# Phase 2: Instances EC2
mv "Screenshot from 2026-01-04 18-11-26.png" "07-instance-zabbix-server-launch.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-11-46.png" "08-instance-zabbix-server-config.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-11-49.png" "09-instance-client-linux-config.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-20-53.png" "10-instance-client-windows-config.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-30-26.png" "11-instances-running-overview.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-30-48.png" "12-instances-details.png" 2>/dev/null

# Phase 3: Installation Docker et Zabbix
mv "Screenshot from 2026-01-04 18-46-09.png" "13-ssh-connection-zabbix-server.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-46-14.png" "14-docker-installation.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-48-45.png" "15-docker-version.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-48-47.png" "16-docker-compose-yml.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-50-48.png" "17-docker-containers-starting.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-50-51.png" "18-docker-containers-running.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-50-54.png" "19-zabbix-web-login.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-52-23.png" "20-zabbix-dashboard.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-52-24.png" "21-zabbix-dashboard-initial.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-52-53.png" "22-zabbix-global-view.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-53-21.png" "23-zabbix-menu.png" 2>/dev/null

# Phase 4: Configuration des Agents
mv "Screenshot from 2026-01-04 18-55-38.png" "24-agent-linux-installation.png" 2>/dev/null
mv "Screenshot from 2026-01-04 18-55-46.png" "25-agent-linux-config.png" 2>/dev/null
mv "Screenshot from 2026-01-04 19-17-41.png" "26-agent-linux-service-status.png" 2>/dev/null
mv "Screenshot from 2026-01-04 19-22-27.png" "27-agent-windows-installation.png" 2>/dev/null
mv "Screenshot from 2026-01-04 19-23-39.png" "28-agent-windows-config.png" 2>/dev/null
mv "Screenshot from 2026-01-04 19-39-57.png" "29-agent-windows-service.png" 2>/dev/null

# Phase 5: Configuration Monitoring dans Zabbix
mv "Screenshot from 2026-01-04 19-44-34.png" "30-zabbix-add-host-linux.png" 2>/dev/null
mv "Screenshot from 2026-01-04 19-50-52.png" "31-zabbix-host-linux-templates.png" 2>/dev/null
mv "Screenshot from 2026-01-04 19-57-52.png" "32-zabbix-add-host-windows.png" 2>/dev/null
mv "Screenshot from 2026-01-04 19-58-34.png" "33-zabbix-host-windows-templates.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-07-03.png" "34-zabbix-hosts-list.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-07-17.png" "35-zabbix-hosts-zbx-green.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-07-24.png" "36-zabbix-monitoring-overview.png" 2>/dev/null

# Phase 6: Visualisation des données
mv "Screenshot from 2026-01-04 20-14-37.png" "37-zabbix-latest-data-linux.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-15-04.png" "38-zabbix-latest-data-windows.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-26-22.png" "39-zabbix-graphs-cpu.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-26-25.png" "40-zabbix-graphs-memory.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-30-13.png" "41-zabbix-graphs-network.png" 2>/dev/null
mv "Screenshot from 2026-01-04 20-31-35.png" "42-zabbix-graphs-disk.png" 2>/dev/null

# Phase 7: Test de stress et alertes
mv "Screenshot from 2026-01-04 23-44-54.png" "43-stress-test-command.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-45-02.png" "44-stress-test-running.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-49-31.png" "45-zabbix-cpu-spike-graph.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-49-37.png" "46-zabbix-cpu-metrics.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-49-43.png" "47-zabbix-latest-data-stress.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-54-50.png" "48-zabbix-problems-alerts.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-55-05.png" "49-zabbix-alert-details.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-56-37.png" "50-zabbix-monitoring-problems.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-57-05.png" "51-zabbix-events-history.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-58-24.png" "52-zabbix-triggers-list.png" 2>/dev/null
mv "Screenshot from 2026-01-04 23-58-26.png" "53-zabbix-triggers-config.png" 2>/dev/null

# Phase 8: Vues finales et dashboard
mv "Screenshot from 2026-01-05 00-00-01.png" "54-zabbix-global-dashboard.png" 2>/dev/null
mv "Screenshot from 2026-01-05 00-03-58.png" "55-zabbix-infrastructure-overview.png" 2>/dev/null
mv "Screenshot from 2026-01-05 00-26-45.png" "56-zabbix-final-monitoring.png" 2>/dev/null
mv "Screenshot from 2026-01-05 00-27-36.png" "57-zabbix-complete-setup.png" 2>/dev/null

# Garder les logos
# logo-enset.png - OK
# footer.png - OK

echo "✅ Renommage terminé !"
echo ""
echo "📊 Résumé des images renommées :"
ls -1 *.png | grep -E '^[0-9]{2}-' | wc -l
echo " images de documentation"
echo ""
echo "🎨 Logos conservés :"
ls -1 logo-*.png footer.png 2>/dev/null
