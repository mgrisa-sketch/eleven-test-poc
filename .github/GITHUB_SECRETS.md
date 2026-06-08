# 🎯 Configuration Secrets GitHub Actions pour Vercel

Ce fichier explique comment configurer les secrets GitHub pour le déploiement automatique via GitHub Actions.

## Secrets requis

Pour que le workflow `.github/workflows/deploy.yml` fonctionne, vous devez configurer 3 secrets dans votre repository GitHub:

### 1. VERCEL_TOKEN
**Token d'authentification Vercel**

1. Visitez: https://vercel.com/account/tokens
2. Créez un nouveau token nommé "GitHub Actions - Eleven Test POC"
3. Copiez le token généré

### 2. VERCEL_ORG_ID
**ID de votre organisation/compte Vercel**

Récupérez-le avec la Vercel CLI:
```bash
vercel login
cd /c/Users/Nico/eleven-test-poc
vercel link
cat .vercel/project.json
```

Ou depuis le dashboard Vercel:
- Allez dans Settings > General
- Copiez "Team ID" ou "User ID"

### 3. VERCEL_PROJECT_ID
**ID du projet Vercel**

Après avoir lié le projet avec `vercel link`, récupérez l'ID:
```bash
cat .vercel/project.json
```

Ou depuis le dashboard Vercel:
- Allez dans Settings du projet
- Copiez "Project ID"

## Ajouter les secrets dans GitHub

1. Visitez: https://github.com/mgrisa-sketch/eleven-test-poc/settings/secrets/actions
2. Cliquez sur "New repository secret"
3. Ajoutez les 3 secrets un par un:
   - Name: `VERCEL_TOKEN`, Value: `<votre_token>`
   - Name: `VERCEL_ORG_ID`, Value: `<votre_org_id>`
   - Name: `VERCEL_PROJECT_ID`, Value: `<votre_project_id>`

## Stocker les secrets dans 1Password (Optionnel)

```bash
# Stocker le token Vercel
op item create \
  --category='API Credential' \
  --title='Vercel Token - GitHub Actions' \
  --vault='Eleven Group' \
  credential=<VERCEL_TOKEN> \
  org_id=<VERCEL_ORG_ID> \
  project_id=<VERCEL_PROJECT_ID>
```

## Déploiement automatique

Une fois les secrets configurés:
- ✅ Chaque push sur `master` déclenchera un déploiement en production
- ✅ Chaque pull request créera un déploiement preview
- ✅ Les logs de déploiement seront visibles dans l'onglet Actions de GitHub

## Alternative: Import Vercel (Plus simple)

Si vous préférez ne pas configurer GitHub Actions:

1. Visitez: https://vercel.com/new
2. Importez: `mgrisa-sketch/eleven-test-poc`
3. Vercel configurera automatiquement le déploiement automatique

---

**Note**: Le déploiement via l'interface Vercel est plus simple et recommandé pour commencer. GitHub Actions est utile pour des workflows personnalisés.
