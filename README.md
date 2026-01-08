# 🖥️ Infrastructure de Supervision Centralisée - AWS & Zabbix

[![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws)](https://aws.amazon.com/)
[![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker)](https://www.docker.com/)
[![Zabbix](https://img.shields.io/badge/Zabbix-7.0-red?logo=zabbix)](https://www.zabbix.com/)

## 📋 Description

Ce projet déploie une **infrastructure de monitoring centralisée** sur AWS en utilisant **Zabbix** conteneurisé avec Docker pour surveiller un parc hybride composé de machines **Linux** et **Windows**.

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                      AWS VPC (10.0.0.0/16)                      │
│                                                                 │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │              Subnet Public (10.0.1.0/24)                │   │
│  │                                                          │   │
│  │  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐   │   │
│  │  │   Zabbix     │  │    Client    │  │    Client    │   │   │
│  │  │   Server     │  │    Linux     │  │   Windows    │   │   │
│  │  │  (t3.large)  │  │ (t3.medium)  │  │  (t3.large)  │   │   │
│  │  │   Docker     │  │   Agent      │  │   Agent      │   │   │
│  │  └──────────────┘  └──────────────┘  └──────────────┘   │   │
│  │         │                  │                 │          │   │
│  │         └──────────────────┴─────────────────┘          │   │
│  └──────────────────────────────────────────────────────────┘   │
│                               │                                 │
│                    ┌──────────┴──────────┐                     │
│                    │  Internet Gateway   │                     │
│                    └─────────────────────┘                     │
└─────────────────────────────────────────────────────────────────┘
```

## 📦 Composants

| Composant                  | Description                              |
| -------------------------- | ---------------------------------------- |
| **Zabbix Server**          | Serveur de monitoring principal (Docker) |
| **Zabbix Web**             | Interface web Nginx                      |
| **MySQL**                  | Base de données                          |
| **Zabbix Agent (Linux)**   | Agent sur Ubuntu                         |
| **Zabbix Agent (Windows)** | Agent sur Windows Server                 |

## 🚀 Déploiement Rapide

### Prérequis

- Compte AWS Academy/Learner Lab
- Région : `us-east-1` (N. Virginia)
- Instances autorisées : `t3.medium`, `t3.large`

### Installation

#### 1. Configuration AWS

Suivez le guide détaillé dans [`GUIDE_COMPLET.md`](GUIDE_COMPLET.md)

#### 2. Déploiement Zabbix

```bash
# Sur le serveur Zabbix
mkdir ~/zabbix && cd ~/zabbix

# Copier le docker-compose.yml de ce dépôt
# Puis lancer les conteneurs
docker compose up -d

# Vérifier
docker compose ps
```

#### 3. Accès à l'interface

- **URL** : `http://<IP-PUBLIQUE-ZABBIX-SERVER>`
- **Username** : `Admin`
- **Password** : `zabbix`

## 📁 Structure du Projet

```
.
├── README.md                     # Ce fichier
├── GUIDE_COMPLET.md             # Guide d'installation détaillé
├── docker-compose.yml           # Configuration Docker Zabbix
├── configs/
│   ├── zabbix_agentd_linux.conf    # Config agent Linux
│   └── zabbix_agentd_windows.conf  # Config agent Windows
├── scripts/
│   └── install-docker.sh        # Script installation Docker
└── screenshots/                  # Captures d'écran (à ajouter)
```

## 🔧 Configuration des Agents

### Linux

```bash
# Installation
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_latest_7.0+ubuntu22.04_all.deb
sudo apt update && sudo apt install -y zabbix-agent

# Configuration
sudo nano /etc/zabbix/zabbix_agentd.conf
# Modifier: Server, ServerActive, Hostname

# Démarrage
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent
```

### Windows

1. Télécharger l'agent MSI depuis [zabbix.com/download_agents](https://www.zabbix.com/download_agents)
2. Installer avec les paramètres appropriés
3. Vérifier le service dans `services.msc`

## 📊 Ports Utilisés

| Port   | Service         | Direction |
| ------ | --------------- | --------- |
| 22     | SSH             | Entrant   |
| 80/443 | Zabbix Web      | Entrant   |
| 3389   | RDP             | Entrant   |
| 10050  | Agent (passif)  | Entrant   |
| 10051  | Trapper (actif) | Sortant   |

## ⚠️ Limitations Learner Lab

| Limitation  | Solution                             |
| ----------- | ------------------------------------ |
| Instances   | `t3.medium` ou `t3.large` uniquement |
| Région      | `us-east-1` obligatoire              |
| Arrêt auto  | Relancer `docker compose up -d`      |
| Budget ~50$ | Stop instances quand inutilisées     |


## 📄 Licence

Ce projet est réalisé à des fins éducatives dans le cadre du cours de supervision d'infrastructures cloud.

---

⭐ Si ce projet vous a aidé, n'hésitez pas à lui donner une étoile !
