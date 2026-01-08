#!/bin/bash
# =============================================================================
# Script d'installation de Docker sur Ubuntu 22.04
# Pour le projet Zabbix AWS Monitoring
# =============================================================================

set -e  # Exit on error

echo "=========================================="
echo "  Installation de Docker pour Zabbix"
echo "=========================================="

# Mise à jour du système
echo "[1/6] Mise à jour du système..."
sudo apt update && sudo apt upgrade -y

# Installation des dépendances
echo "[2/6] Installation des dépendances..."
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    gnupg \
    lsb-release

# Ajout de la clé GPG Docker
echo "[3/6] Ajout de la clé GPG Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Ajout du dépôt Docker
echo "[4/6] Ajout du dépôt Docker..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Installation de Docker
echo "[5/6] Installation de Docker..."
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Configuration des permissions
echo "[6/6] Configuration des permissions..."
sudo usermod -aG docker $USER

# Vérification
echo ""
echo "=========================================="
echo "  Installation terminée avec succès!"
echo "=========================================="
echo ""
docker --version
docker compose version
echo ""
echo "⚠️  IMPORTANT: Déconnectez-vous et reconnectez-vous"
echo "   pour appliquer les permissions Docker."
echo ""
echo "   Ou exécutez: newgrp docker"
echo ""
