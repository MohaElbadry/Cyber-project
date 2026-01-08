#!/bin/bash
# =============================================================================
# Script d'installation de l'Agent Zabbix sur Ubuntu 22.04
# Pour le projet Zabbix AWS Monitoring
# =============================================================================

set -e

# Configuration - MODIFIEZ CES VALEURS
ZABBIX_SERVER_IP="10.0.1.X"  # IP PRIVÉE du serveur Zabbix
HOSTNAME="Client-Linux-VotreNom"  # Nom de l'hôte dans Zabbix

echo "=========================================="
echo "  Installation de l'Agent Zabbix 7.0"
echo "=========================================="

# Vérification des paramètres
if [[ "$ZABBIX_SERVER_IP" == "10.0.1.X" ]]; then
    echo "⚠️  ERREUR: Modifiez ZABBIX_SERVER_IP dans ce script!"
    echo "   Ouvrez le fichier et remplacez 10.0.1.X par l'IP privée du serveur"
    exit 1
fi

if [[ "$HOSTNAME" == "Client-Linux-VotreNom" ]]; then
    echo "⚠️  ERREUR: Modifiez HOSTNAME dans ce script!"
    echo "   Ouvrez le fichier et remplacez VotreNom par votre nom"
    exit 1
fi

# Télécharger et installer le dépôt Zabbix
echo "[1/5] Téléchargement du dépôt Zabbix..."
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_latest_7.0+ubuntu22.04_all.deb
sudo apt update

# Installer l'agent
echo "[2/5] Installation de l'agent Zabbix..."
sudo apt install -y zabbix-agent

# Sauvegarder la configuration originale
echo "[3/5] Sauvegarde de la configuration..."
sudo cp /etc/zabbix/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf.backup

# Configurer l'agent
echo "[4/5] Configuration de l'agent..."
sudo sed -i "s/^Server=127.0.0.1/Server=$ZABBIX_SERVER_IP/" /etc/zabbix/zabbix_agentd.conf
sudo sed -i "s/^ServerActive=127.0.0.1/ServerActive=$ZABBIX_SERVER_IP/" /etc/zabbix/zabbix_agentd.conf
sudo sed -i "s/^Hostname=Zabbix server/Hostname=$HOSTNAME/" /etc/zabbix/zabbix_agentd.conf

# Démarrer l'agent
echo "[5/5] Démarrage de l'agent..."
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent

# Vérification
echo ""
echo "=========================================="
echo "  Installation terminée!"
echo "=========================================="
echo ""
echo "Configuration:"
echo "  - Serveur Zabbix: $ZABBIX_SERVER_IP"
echo "  - Hostname: $HOSTNAME"
echo ""
echo "Statut de l'agent:"
sudo systemctl status zabbix-agent --no-pager
echo ""
echo "✅ N'oubliez pas d'ajouter cet hôte dans l'interface Zabbix!"
echo "   - Host name: $HOSTNAME"
echo "   - IP: $(hostname -I | awk '{print $1}')"
echo "   - Template: Linux by Zabbix agent"
