# 🚀 Déploiement Vercel - Eleven Group Test POC

## Repository GitHub
✅ **Créé avec succès**: https://github.com/mgrisa-sketch/eleven-test-poc

## Étapes de déploiement

### Option 1: Import via Vercel Dashboard (Recommandé - 2 minutes)

1. **Visitez**: https://vercel.com/new/import
2. **Connectez GitHub** (si pas encore fait)
3. **Importez le repo**: Recherchez `eleven-test-poc` ou collez l'URL:
   ```
   https://github.com/mgrisa-sketch/eleven-test-poc
   ```
4. **Configurez** (optionnel - Vercel détecte automatiquement Next.js):
   - Project Name: `eleven-test-poc`
   - Framework Preset: Next.js (détecté automatiquement)
   - Root Directory: `./`
   - Build Command: `npm run build` (automatique)
   - Output Directory: `.next` (automatique)

5. **Cliquez sur "Deploy"** 🎉

Vercel va:
- ✅ Installer les dépendances
- ✅ Builder le projet Next.js 15
- ✅ Déployer sur une URL live
- ✅ Configurer le déploiement automatique pour chaque push

**Temps estimé**: ~2 minutes

### Option 2: Via Vercel CLI (Nécessite authentification)

```bash
# 1. Se connecter à Vercel
vercel login
# Suivez les instructions dans le navigateur

# 2. Déployer
cd /c/Users/Nico/eleven-test-poc
vercel --prod
```

### Option 3: One-Click Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/mgrisa-sketch/eleven-test-poc)

## Après le déploiement

Vous obtiendrez une URL comme:
- Production: `https://eleven-test-poc.vercel.app`
- Preview: `https://eleven-test-poc-git-master-mgrisa-sketch.vercel.app`

## Stocker le token Vercel dans 1Password (Optionnel)

Pour l'automatisation future:

1. Créez un token: https://vercel.com/account/tokens
2. Stockez-le dans 1Password:
   ```bash
   op item create \
     --category='API Credential' \
     --title='Vercel Token' \
     --vault='Eleven Group' \
     credential=<VOTRE_TOKEN>
   ```

## Test du POC

Le POC contient:
- ✅ Page d'accueil avec "Test Stack Eleven Group"
- ✅ Bouton interactif "Tester la Stack"
- ✅ Design moderne avec Tailwind CSS
- ✅ Next.js 15 + TypeScript
- ✅ Build optimisé et performant

---

**Repository GitHub**: https://github.com/mgrisa-sketch/eleven-test-poc  
**Status**: ✅ Prêt pour le déploiement Vercel
