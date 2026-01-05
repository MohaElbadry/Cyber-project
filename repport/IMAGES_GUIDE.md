# 📸 Guide des Images pour le Rapport LaTeX

## ✅ Images Renommées et Organisées

### 📁 Phase 1 : Configuration AWS (6 images)

- `01-vpc-creation.png` - Création du VPC
- `02-subnet-configuration.png` - Configuration du Subnet public
- `03-internet-gateway.png` - Internet Gateway attaché au VPC
- `04-route-table.png` - Configuration de la table de routage
- `05-security-groups-zabbix.png` - Security Groups pour Zabbix Server
- `06-security-groups-clients.png` - Security Groups pour les Clients

### 📁 Phase 2 : Instances EC2 (6 images)

- `07-instance-zabbix-server-launch.png` - Lancement instance Zabbix Server
- `08-instance-zabbix-server-config.png` - Configuration Zabbix Server
- `09-instance-client-linux-config.png` - Configuration Client Linux
- `10-instance-client-windows-config.png` - Configuration Client Windows
- `11-instances-running-overview.png` - ⭐ Vue d'ensemble 3 instances Running
- `12-instances-details.png` - Détails des instances

### 📁 Phase 3 : Docker et Zabbix (11 images)

- `13-ssh-connection-zabbix-server.png` - Connexion SSH au serveur
- `14-docker-installation.png` - Installation de Docker
- `15-docker-version.png` - ⭐ Docker version installée
- `16-docker-compose-yml.png` - Fichier docker-compose.yml
- `17-docker-containers-starting.png` - Démarrage des conteneurs
- `18-docker-containers-running.png` - ⭐ Conteneurs en cours d'exécution
- `19-zabbix-web-login.png` - ⭐ Interface de connexion Zabbix
- `20-zabbix-dashboard.png` - ⭐ Dashboard Zabbix après connexion
- `21-zabbix-dashboard-initial.png` - Dashboard initial
- `22-zabbix-global-view.png` - Vue globale Zabbix
- `23-zabbix-menu.png` - Menu Zabbix

### 📁 Phase 4 : Configuration des Agents (6 images)

- `24-agent-linux-installation.png` - Installation agent Linux
- `25-agent-linux-config.png` - ⭐ Configuration zabbix_agentd.conf (Linux)
- `26-agent-linux-service-status.png` - ⭐ Service agent Linux actif
- `27-agent-windows-installation.png` - ⭐ Installation agent Windows
- `28-agent-windows-config.png` - Configuration agent Windows
- `29-agent-windows-service.png` - ⭐ Service agent Windows actif

### 📁 Phase 5 : Configuration Monitoring (7 images)

- `30-zabbix-add-host-linux.png` - Ajout hôte Linux dans Zabbix
- `31-zabbix-host-linux-templates.png` - Templates Linux
- `32-zabbix-add-host-windows.png` - Ajout hôte Windows dans Zabbix
- `33-zabbix-host-windows-templates.png` - Templates Windows
- `34-zabbix-hosts-list.png` - Liste des hôtes configurés
- `35-zabbix-hosts-zbx-green.png` - ⭐⭐ Statut ZBX vert des clients
- `36-zabbix-monitoring-overview.png` - Vue d'ensemble monitoring

### 📁 Phase 6 : Visualisation des Données (6 images)

- `37-zabbix-latest-data-linux.png` - Latest data Linux
- `38-zabbix-latest-data-windows.png` - Latest data Windows
- `39-zabbix-graphs-cpu.png` - ⭐ Graphique utilisation CPU
- `40-zabbix-graphs-memory.png` - Graphique utilisation mémoire
- `41-zabbix-graphs-network.png` - Graphique réseau
- `42-zabbix-graphs-disk.png` - Graphique disque

### 📁 Phase 7 : Test de Stress et Alertes (11 images)

- `43-stress-test-command.png` - Commande stress test
- `44-stress-test-running.png` - Test en cours d'exécution
- `45-zabbix-cpu-spike-graph.png` - ⭐ Pic CPU sur graphique
- `46-zabbix-cpu-metrics.png` - Métriques CPU détaillées
- `47-zabbix-latest-data-stress.png` - Latest data pendant stress
- `48-zabbix-problems-alerts.png` - ⭐⭐ Alertes déclenchées
- `49-zabbix-alert-details.png` - Détails des alertes
- `50-zabbix-monitoring-problems.png` - Monitoring des problèmes
- `51-zabbix-events-history.png` - Historique des événements
- `52-zabbix-triggers-list.png` - Liste des triggers
- `53-zabbix-triggers-config.png` - Configuration des triggers

### 📁 Phase 8 : Vues Finales (4 images)

- `54-zabbix-global-dashboard.png` - Dashboard global final
- `55-zabbix-infrastructure-overview.png` - Vue infrastructure complète
- `56-zabbix-final-monitoring.png` - Monitoring final
- `57-zabbix-complete-setup.png` - Setup complet

### 🎨 Logos et Ressources (2 fichiers)

- `logo-enset.png` - Logo ENSET pour page de garde
- `footer.png` - Footer pour le rapport

---

## 📊 Statistiques

- **Total images** : 57 captures d'écran + 2 logos = **59 fichiers**
- **Images essentielles (⭐)** : ~15 images clés pour le rapport
- **Images très importantes (⭐⭐)** : 2 images (ZBX vert, alertes)

---

## 🗑️ Images à Potentiellement Supprimer (Doublons/Redondance)

### Suggestion de simplification pour le rapport :

**Phase 3 - Docker/Zabbix (réduire de 11 à 6)** :

- ❌ Supprimer : `21-zabbix-dashboard-initial.png` (similaire à 20)
- ❌ Supprimer : `22-zabbix-global-view.png` (non essentiel)
- ❌ Supprimer : `23-zabbix-menu.png` (non essentiel)
- ❌ Supprimer : `17-docker-containers-starting.png` (doublon avec 18)
- ❌ Supprimer : `13-ssh-connection-zabbix-server.png` (basique)

**Phase 5 - Configuration Monitoring (réduire de 7 à 4)** :

- ❌ Supprimer : `31-zabbix-host-linux-templates.png` (détail non critique)
- ❌ Supprimer : `33-zabbix-host-windows-templates.png` (détail non critique)
- ❌ Supprimer : `34-zabbix-hosts-list.png` (redondant avec 35)

**Phase 6 - Visualisation (réduire de 6 à 3)** :

- ❌ Supprimer : `38-zabbix-latest-data-windows.png` (similaire à 37)
- ❌ Supprimer : `40-zabbix-graphs-memory.png` (un graphique suffit)
- ❌ Supprimer : `41-zabbix-graphs-network.png` (non essentiel)
- ❌ Supprimer : `42-zabbix-graphs-disk.png` (non essentiel)

**Phase 7 - Stress Test (réduire de 11 à 5)** :

- ❌ Supprimer : `44-stress-test-running.png` (doublon)
- ❌ Supprimer : `46-zabbix-cpu-metrics.png` (redondant)
- ❌ Supprimer : `49-zabbix-alert-details.png` (trop détaillé)
- ❌ Supprimer : `50-zabbix-monitoring-problems.png` (similaire à 48)
- ❌ Supprimer : `51-zabbix-events-history.png` (non essentiel)
- ❌ Supprimer : `52-zabbix-triggers-list.png` (technique, non requis)
- ❌ Supprimer : `53-zabbix-triggers-config.png` (trop technique)

**Phase 8 - Vues Finales (réduire de 4 à 1)** :

- ❌ Supprimer : `55-zabbix-infrastructure-overview.png` (redondant)
- ❌ Supprimer : `56-zabbix-final-monitoring.png` (redondant)
- ❌ Supprimer : `57-zabbix-complete-setup.png` (redondant)

---

## 📝 Rapport Optimisé : 31 Images Essentielles

### Images à CONSERVER pour un rapport professionnel :

| Phase            | Images à garder        | Total |
| ---------------- | ---------------------- | ----- |
| Phase 1 - AWS    | Toutes (01-06)         | 6     |
| Phase 2 - EC2    | 08, 09, 10, 11         | 4     |
| Phase 3 - Docker | 14, 15, 16, 18, 19, 20 | 6     |
| Phase 4 - Agents | 24, 25, 26, 27, 29     | 5     |
| Phase 5 - Config | 30, 32, 35, 36         | 4     |
| Phase 6 - Data   | 37, 39                 | 2     |
| Phase 7 - Stress | 43, 45, 47, 48         | 4     |
| Phase 8 - Final  | 54                     | 1     |

**Total recommandé : 32 images** (31 + 1 logo)

---

## 💡 Pour votre rapport LaTeX

### Code exemple pour inclure les images :

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.8\textwidth]{images/11-instances-running-overview.png}
    \caption{Vue d'ensemble des 3 instances en état Running}
    \label{fig:instances-running}
\end{figure}
```

### Structure recommandée dans le rapport :

1. **Introduction** : 0 image
2. **Architecture Réseau** : 4-5 images (Phase 1)
3. **Déploiement EC2** : 3-4 images (Phase 2)
4. **Installation Zabbix** : 5-6 images (Phase 3)
5. **Configuration Agents** : 4-5 images (Phase 4)
6. **Monitoring** : 5-6 images (Phase 5-6)
7. **Tests et Alertes** : 3-4 images (Phase 7)
8. **Conclusion** : 1 image (Dashboard final)

---

## ✅ Action suivante

Voulez-vous que je :

1. **Supprime les images redondantes** (réduire à 32 images) ?
2. **Garde toutes les images** pour que vous choisissiez ?
3. **Crée le code LaTeX** pour inclure les images dans votre rapport ?
