#!/bin/bash
# Script de Build et Test - Commande Linux/Bash

echo "--- Démarrage du processus de Build ---"

# 1. Vérification de la version de Node (commande Linux)
echo "Version de Node installée : $(node --version)"

# 2. Installation des dépendances (commande npm/Linux)
echo "Installation des dépendances npm..."
npm install

# 3. Exécution des tests (commande npm/Linux)
echo "Exécution des tests npm..."
npm run test

# Vérification du statut de la commande précédente
if [ $? -ne 0 ]; then
    echo "❌ Le test a échoué. Arrêt du build."
    exit 1
fi

echo "✅ Build et Tests réussis."
exit 0
