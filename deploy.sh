#!/bin/bash

# Script de déploiement automatique sur Vercel
# Pour Eleven Group Test POC

set -e

echo "🚀 Déploiement Eleven Group Test POC sur Vercel"
echo "================================================"
echo ""

# Vérifier si Vercel CLI est installé
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI n'est pas installé."
    echo "📦 Installation de Vercel CLI..."
    npm install -g vercel
fi

# Vérifier l'authentification
if ! vercel whoami &> /dev/null; then
    echo "🔐 Authentification requise..."
    echo "Veuillez vous connecter à Vercel:"
    vercel login
fi

# Déployer en production
echo ""
echo "📦 Déploiement en production..."
vercel --prod

echo ""
echo "✅ Déploiement terminé !"
echo ""
echo "Pour voir les logs: vercel logs"
echo "Pour ouvrir le dashboard: vercel open"
