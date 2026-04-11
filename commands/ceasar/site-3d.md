# Ceasar.ai — Site Web 3D Animé

Tu es le guide du workflow **Nano Banana 2 x Kling AI x Claude Code** pour créer des sites web avec animations 3D scroll-driven en 30-45 minutes.

---

## Ce qu'on va builder

Un site web one-page premium avec une animation 3D qui se déclenche au scroll — le genre de site qu'une agence facturerait 3 000 à 5 000€. En 30-45 minutes. Avec Claude Code.

**Le stack :**
- **Nano Banana 2** — génère l'image principale (CLI + Google Gemini, gratuit)
- **Kling AI** — transforme l'image en vidéo animée avant/après
- **Claude Code** — extrait les frames, convertit en WEBP, construit le site, le déploie
- **Vercel** — mise en ligne en 1 commande

---

## Étape 1 — Installer Nano Banana 2

```bash
git clone https://github.com/kingbootoshi/nano-banana-2-skill.git ~/tools/nano-banana-2
cd ~/tools/nano-banana-2
bun install
bun link

# Clé API gratuite sur aistudio.google.com
mkdir -p ~/.nano-banana
echo GEMINI_API_KEY=ta_cle_ici > ~/.nano-banana/.env
```

> Prérequis : Bun installé (`curl -fsSL https://bun.sh/install | bash`)

---

## Étape 2 — Générer ton image

```bash
nano-banana "ton prompt descriptif ici" -s 2K -a 16:9 -o mon-produit
```

**Comment écrire un bon prompt :**
- Décris comme si tu briefais un photographe humain
- Précise : style, éclairage, angle de caméra, ambiance, matières
- Pense à l'animation : l'image doit se prêter à un mouvement fluide

**Exemple :**
```bash
nano-banana "photorealistic luxury perfume bottle on black marble, dramatic side lighting, 
shallow depth of field, premium product photography, 45 degree angle" -s 2K -a 16:9 -m pro -o parfum
```

**Options utiles :**
| Option | Usage |
|--------|-------|
| `-s 2K` | Résolution 2K (recommandé web) |
| `-a 16:9` | Format paysage |
| `-m pro` | Modèle Gemini 3 Pro (meilleure qualité) |
| `-r image.png` | Style transfer depuis une référence |
| `-t` | Fond transparent (retiré via FFmpeg) |

---

## Étape 3 — Créer la vidéo sur Kling AI

1. Va sur **klingai.com** → section vidéo IA
2. Sélectionne **Image to Video**
3. Upload ton image Nano Banana 2 comme **Start Frame**
4. Rédige un prompt de **mouvement** (pas d'image finale)
5. Durée : **5 secondes** (≈150 frames, idéal pour le scroll)
6. Qualité : 1080p minimum
7. Télécharge la vidéo

**Prompt Kling (exemple) :**
```
Smooth cinematic camera movement, the product rotates slowly revealing all angles 
with light particles appearing gradually. Professional product advertisement style, 
slow and elegant motion.
```

> Astuce : Mots-clés qui marchent : "smooth", "gradual", "cinematic", "slow and elegant"

---

## Étape 4 — Préparer le projet Claude Code

```bash
mkdir mon-site-3d && cd mon-site-3d
mkdir assets

# Copie tes fichiers
cp ~/Downloads/mon-produit.png assets/produit.png
cp ~/Downloads/kling_video.mp4 assets/animation.mp4
```

Crée le fichier `CLAUDE.md` dans le dossier :

```markdown
# Projet : Site Web [Nom de l'Entreprise]

## Contexte
[Description de l'entreprise, son activité, sa cible]

## Objectif
Créer un site web one-page premium avec animation 3D scroll-driven
à partir des images et vidéos dans assets/

## Assets disponibles
- assets/produit.png (image Nano Banana 2)
- assets/animation.mp4 (vidéo Kling AI)

## Style
Design premium, minimaliste, style Apple. Fond sombre, typographie élégante.

## Ton de communication
[Professionnel / Luxe / Moderne / Accessible — selon ta marque]
```

---

## Étape 5 — Générer le site avec Claude Code

Lance Claude Code depuis le dossier :

```bash
claude
```

Puis donne ce prompt :

```
Génère un site web complet pour [Nom entreprise] à partir des assets dans assets/.

Le site doit avoir :
- Hero section plein écran avec animation scroll-driven basée sur assets/animation.mp4
- Extrais les frames avec FFmpeg, convertis en WEBP (max 15-20 MB total), preload intelligent
- Design premium style Apple : fond sombre, typo élégante
- Sections de présentation avec le contexte du CLAUDE.md
- Responsive design (mobile + desktop)
- Host le site localement pour que je puisse le tester
```

**Ce que Claude Code fait automatiquement :**
1. Extrait 150-300 frames de la vidéo via FFmpeg
2. Convertit en WEBP (25-35% plus léger que JPEG)
3. Génère le JS qui lie le scroll au changement de frame → effet 3D
4. Construit le HTML/CSS/JS complet avec le contexte entreprise
5. Lance un serveur local

---

## Étape 6 — Tester en local

Ouvre le navigateur sur l'URL locale fournie par Claude. Vérifie :
- Animation fluide au scroll (pas de saccades)
- Poids total < 20 MB (DevTools > Network)
- Responsive sur mobile
- Textes et branding corrects

---

## Étape 7 — Déployer sur Vercel

```bash
# Installer Vercel CLI (une seule fois)
npm install -g vercel

# Se connecter
vercel login

# Déployer en production
vercel --prod
```

Vercel te donne une URL publique immédiatement. Tu peux connecter ton domaine depuis le dashboard.

---

## Récapitulatif timeline

| Étape | Durée |
|-------|-------|
| Génération image (Nano Banana 2) | 2-5 min |
| Vidéo avant/après (Kling AI) | 3-5 min |
| Setup Claude Code | 5 min |
| Génération du site | 10-15 min |
| Test + déploiement Vercel | 5-10 min |
| **TOTAL** | **30-45 min** |

---

## Prérequis à installer une seule fois

```bash
# Bun (runtime JS)
curl -fsSL https://bun.sh/install | bash

# FFmpeg (traitement vidéo)
brew install ffmpeg

# ImageMagick (traitement images)
brew install imagemagick

# Vercel CLI
npm install -g vercel
```

---

## Idées de projets pour commencer

- **Portfolio freelance** — montre ton meilleur travail avec un effet 3D
- **Landing page produit** — pour un produit physique ou digital
- **Site agence** — démo client impressionnante en 30 min
- **Page de vente** — pour une offre de coaching ou formation
