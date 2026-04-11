# Build — Site Web 3D Scroll-Driven

Tu es un expert en création de sites web avec animations 3D scroll-driven. 
Quand on te demande de builder un site 3D, tu appliques ces techniques précises.

---

## Architecture du projet

```
mon-site-3d/
├── CLAUDE.md          # contexte entreprise
├── index.html         # site complet
├── assets/
│   ├── produit.png    # image Nano Banana 2
│   └── animation.mp4  # vidéo Kling AI
└── frames/            # généré automatiquement
    ├── frame_001.webp
    ├── frame_002.webp
    └── ...
```

---

## Étape 1 — Extraction des frames (FFmpeg)

```bash
# Extraire les frames de la vidéo (30fps, 5 secondes = ~150 frames)
ffmpeg -i assets/animation.mp4 -vf "fps=30" frames/frame_%03d.png

# Convertir en WEBP pour performance optimale (25-35% plus léger que JPEG)
for f in frames/*.png; do
  cwebp -q 80 "$f" -o "${f%.png}.webp"
  rm "$f"
done
```

Objectif : poids total < 15-20 MB pour une fluidité optimale.

---

## Étape 2 — JavaScript scroll-driven (le cœur du système)

```javascript
// Preload intelligent des frames
const totalFrames = 150; // adapter selon le nombre de frames générées
const frames = [];
let loadedFrames = 0;

function preloadFrames() {
  // Précharger les 30 premières frames en priorité
  for (let i = 1; i <= Math.min(30, totalFrames); i++) {
    const img = new Image();
    img.src = `frames/frame_${String(i).padStart(3, '0')}.webp`;
    img.onload = () => { loadedFrames++; };
    frames[i] = img;
  }
  // Charger le reste en arrière-plan
  for (let i = 31; i <= totalFrames; i++) {
    const img = new Image();
    img.src = `frames/frame_${String(i).padStart(3, '0')}.webp`;
    frames[i] = img;
  }
}

// Lier le scroll au frame
function updateFrame() {
  const scrollTop = window.scrollY;
  const heroHeight = document.getElementById('hero').offsetHeight;
  const scrollProgress = Math.min(scrollTop / heroHeight, 1);
  const frameIndex = Math.max(1, Math.round(scrollProgress * totalFrames));
  
  const canvas = document.getElementById('animation-canvas');
  const ctx = canvas.getContext('2d');
  
  if (frames[frameIndex] && frames[frameIndex].complete) {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.drawImage(frames[frameIndex], 0, 0, canvas.width, canvas.height);
  }
}

// Optimisation performance avec requestAnimationFrame
let ticking = false;
window.addEventListener('scroll', () => {
  if (!ticking) {
    requestAnimationFrame(() => {
      updateFrame();
      ticking = false;
    });
    ticking = true;
  }
});

preloadFrames();
```

---

## Étape 3 — Structure HTML de base

```html
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>[Entreprise]</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body { background: #0a0a0a; color: #fff; font-family: -apple-system, BlinkMacSystemFont, 'SF Pro Display', sans-serif; }
    
    /* Hero section sticky pour l'animation scroll */
    #hero {
      height: 400vh; /* 4x la hauteur viewport = zone de scroll pour l'animation */
      position: relative;
    }
    
    #hero-sticky {
      position: sticky;
      top: 0;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    
    #animation-canvas {
      width: 100%;
      height: 100%;
      object-fit: contain;
    }
    
    /* Sections suivantes */
    .section {
      padding: 120px 40px;
      max-width: 1200px;
      margin: 0 auto;
    }
  </style>
</head>
<body>

  <!-- HERO — Animation 3D scroll-driven -->
  <section id="hero">
    <div id="hero-sticky">
      <canvas id="animation-canvas" width="1920" height="1080"></canvas>
      <!-- Overlay texte optionnel -->
      <div class="hero-text" style="position:absolute; text-align:center;">
        <h1 style="font-size:clamp(2rem,5vw,4rem); font-weight:700;">[Headline]</h1>
        <p style="font-size:1.2rem; opacity:0.7; margin-top:1rem;">[Sous-titre]</p>
      </div>
    </div>
  </section>

  <!-- SECTIONS CONTENU -->
  <section class="section">
    <!-- Contenu personnalisé selon CLAUDE.md -->
  </section>

  <script>
    // Insérer le code scroll-driven ici
  </script>
</body>
</html>
```

---

## Checklist qualité avant déploiement

- [ ] Animation fluide sans saccades (testé au scroll manuel)
- [ ] Poids total < 20 MB (DevTools > Network > filtre img)
- [ ] Responsive : testé à 375px, 768px, 1440px
- [ ] Premier frame visible sans scroll (pas d'écran blanc)
- [ ] Preload des premières frames avant interaction
- [ ] Textes du CLAUDE.md intégrés (pas de lorem ipsum)

---

## Hébergement local pour tests

```bash
# Option 1 — Python (disponible partout)
python3 -m http.server 8000

# Option 2 — Node.js via npx
npx serve .

# Option 3 — Bun
bun --bun serve .
```

Ouvrir : http://localhost:8000

---

## Déploiement Vercel

```bash
npm install -g vercel
vercel login
vercel --prod
```

Le site est en ligne en < 2 minutes avec une URL publique.

---

## Optimisations avancées

**Si l'animation saccade :**
- Réduire à 24fps lors de l'extraction (moins de frames = moins de poids)
- Augmenter la compression WEBP (`-q 70` au lieu de `-q 80`)
- Utiliser `will-change: transform` sur le canvas

**Si le chargement est lent :**
- Extraire uniquement 100 frames au lieu de 150
- Précharger en lazy loading par blocs de 20 frames
- Ajouter un écran de loading avec barre de progression

**Pour mobile :**
- Réduire la résolution des frames à 1280x720 sur mobile
- Détecter avec `window.innerWidth < 768` et charger des frames plus légères
