# Design System — Ceasar.ia

> Référence pour tous les agents qui créent des assets visuels (thumbnails, carousels, Remotion, landing pages, etc.)

---

## Identité

| Attribut | Valeur |
|---|---|
| **Nom de marque** | Ceasar.ia |
| **Tagline** | Apprends Claude Code, même sans savoir coder. |
| **Langue** | Français |
| **Ton** | Direct, concret, sans théorie. Résultats d'abord. |
| **Positionnement** | La communauté française de référence sur l'IA et Claude Code. |

---

## Couleurs

```
Primaire (bleu)     #1454F5   — bleu vif, actions, accents, liens
Primaire mid        #2F67FF   — hover état
Primaire pale       #EAF0FF   — backgrounds légers, badges
Primaire line       rgba(20,84,245,0.18) — borders bleus

Texte principal     #09101F   — titres, body principal
Texte secondaire    #374160
Texte tertiaire     #7B86A8   — sous-titres, captions
Texte quaternaire   #C2C8D8   — placeholders, meta

Background blanc    #FFFFFF
Background page     #F6F8FF   — légèrement bleuté
Separateur          #E4E8F0   — borders light

Dark principal      #06090F   — sections sombres, hero dark
Dark card           #0D1117   — terminal, code blocks (style GitHub)
```

### Gradients
```
Titre gradient     linear-gradient(135deg, #1454F5 0%, #7C3AFF 100%)
  Usage : H1, H2 highlights (.hl class), mots clés en gradient
  Application CSS :
    background: linear-gradient(135deg, #1454F5 0%, #7C3AFF 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;

CTA dark bg        linear-gradient(135deg, #06090F 0%, #0D1B3E 100%)
  Usage : sections CTA finales sur fond sombre

Pain glow          radial-gradient(ellipse, rgba(20,84,245,.3) 0%, transparent 65%)
  Usage : effet de lumière dans sections dark
```

---

## Typographie

### Polices
```
Display / UI       Manrope (Google Fonts)
  Weights : 300, 400, 500, 600, 700, 800
  Usage : tous les textes UI, headlines, body

Monospace          JetBrains Mono (Google Fonts)
  Weights : 400, 500, 600
  Usage : tags, badges, numéros, terminal, code, labels techniques
```

### Échelle typographique
```
H1 hero            clamp(2.8rem, 6vw, 5rem) · weight 800 · letter-spacing -.05em · line-height 1.05
H2 section         clamp(1.6rem, 3vw, 2.4rem) · weight 800 · letter-spacing -.03em · line-height 1.15
H3 card            1rem–1.125rem · weight 700 · letter-spacing -.01em
Body               1rem · weight 400–500 · line-height 1.65
Caption / label    0.68rem · JetBrains Mono · uppercase · letter-spacing .12em
Numéros éditoriaux clamp(1rem, 1.8vw, 1.1875rem) · weight 700 · letter-spacing -.02em
```

### Règles d'application
- Jamais d'emojis (ni dans les textes, ni dans les visuels)
- Les mots-clés importants dans les H1/H2 portent le gradient bleu→violet
- Les labels/tags mono sont en uppercase avec `letter-spacing: .12em`

---

## Composants

### Nav
- Fixed, fond `rgba(255,255,255,0.9)` + `backdrop-filter: blur(20px)`
- Logo `Ceasar.ia` — le `.ia` en bleu `#1454F5`
- Un seul CTA à droite : "Rejoindre gratuitement →"

### Boutons
```
Primaire (bleu)    bg #1454F5 · color #fff · radius 8–12px · padding 10–16px 20–40px
  Hover : bg #2F67FF + translateY(-1px) + box-shadow bleu

Secondaire (blanc) bg #fff · color #09101F · radius 12px · box-shadow: 0 2px 12px rgba(0,0,0,.25)
  Hover : translateY(-2px) + box-shadow plus profond
```

### Cards
```
Default card       bg #fff · border 1px solid #E4E8F0 · border-radius 16px · shadow-sm
  Hover : border-color bleu-line + shadow-md + translateY(-2px)

Highlighted card   bg #EAF0FF · border rgba(20,84,245,0.18)
  Usage : leçon finale, élément featured

Dark card          bg #0D1117 · border-radius 10–14px
  Usage : terminal, code preview
```

### Terminal mockup
```
Container  bg #0D1117 · radius 14px · shadow 0 32px 80px rgba(9,16,31,0.18)
Dots       3 ronds : #FF5F57, #FEBC2E, #28C840 (rouge/jaune/vert)
Header     border-bottom rgba(255,255,255,.06) · JetBrains Mono · texte rgba(255,255,255,.25)
Lignes     fadeUp animation avec delays staggerés (0.65s, 0.85s, 1.05s, 1.3s, 1.55s, 1.9s)
Couleurs texte :
  Commande (prompt $)  rgba(255,255,255,.35)
  Commande exécutée    #79C0FF (bleu clair)
  Résultat check       #3FB950 (vert)
  URL / output         #E3B341 (jaune/orange)
  Texte normal         rgba(255,255,255,.65)
  Dim                  rgba(255,255,255,.3)
```

### Stats bar
```
Layout    flex · centered · separateurs `·` dim
Format    NOMBRE bold + label petite caps
Exemples  60+ builders actifs · 6 leçons YouTube · 0€ pour toujours · Mis à jour chaque semaine
```

### Section dark (pain points)
```
Background  #06090F
Liste       numérotée 01–06, format éditorial
Numéros     JetBrains Mono · rgba(20,84,245,.5) · text-align right · width 28px
Texte       font-weight 700 · rgba(255,255,255,.88) · partie dim en <em> rgba(255,255,255,.35) weight 400
Séparateurs 1px solid rgba(255,255,255,.06) entre chaque item
```

### Vision pillars (3 colonnes)
```
Grid 3 col · gap 1px (le gap devient la bordure) · background var(--rule)
Chaque pillar : bg #fff · padding 32px 28px
Titre pillar : weight 700 · 1rem
Sous-titre   : weight 400 · color #7B86A8 · .875rem
```

### Value cards (grille 2×2)
```
Card         bg #fff · border 1px solid #E4E8F0 · radius 20px · padding 32px
Top accent   ::before height 3px · gradient bleu→violet · opacity 0 → 1 au hover
Hover        border-color bleu-line + shadow-md + translateY(-2px)
Arrow link   color bleu · "Accéder →"
```

### CTA final (dark)
```
Background   linear-gradient(135deg, #06090F 0%, #0D1B3E 100%) · radius 20px
Glow effect  radial-gradient bleu en top-right (::before pseudo)
Bouton       bg #fff · color #09101F · shadow 0 2px 12px rgba(0,0,0,.25)
```

---

## Espacements

```
Section padding     96px 28px (desktop) / 72px 20px (mobile)
Max-width contenu   1100px (centré)
Nav height          60px
Border-radius
  Petits éléments   6–8px (badges, inputs)
  Cards             14–16px
  Grandes sections  20px
  Terminal          14px
```

---

## Animations

```
Ease maison      cubic-bezier(0.16,1,0.3,1)  — utilisé partout
fadeUp           opacity 0→1 + translateY 16px→0 · durée .5s
Marquee          translateX(-50%) en 28s linear infinite
Stagger scroll   .stag class + IntersectionObserver · delays 0.1s → 0.52s
Terminal lines   fadeUp avec delays 0.65s / 0.85s / 1.05s / 1.3s / 1.55s / 1.9s
Hover transitions durée .14s–.2s
```

---

## Règles de contenu

- **Langue** : tout en français
- **Aucun emoji** dans le site, les thumbnails, ou les visuels de marque
- **Ton** : direct, concret, pas de théorie. Parler résultats et systèmes.
- **CTA principal** : "Rejoindre gratuitement →" (pointe vers Skool)
- **Lien Skool** : `https://www.skool.com/ceasar-ia-5256/about`
- **Instagram** : `https://instagram.com/ceasar.ia`
- **Footer copyright** : © 2026 Ceasar.ia

---

## Structure LP principale (`index-light.html`)

```
NAV          Logo Ceasar.ia + CTA unique
HERO         Pill badge + H1 gradient + subtitle + 2 CTAs + terminal mockup
STATS BAR    60+ builders · 6 leçons · 0€ · Mis à jour chaque semaine
MARQUEE      Sites 3D · Agents IA · MCP · CLAUDE.md · Mode Plan · Mode Swarm · ...
PAIN DARK    Titre sombre + liste 01–06 numérotée
VISION       H2 "On construit la plus grande communauté..." + 3 pillars
VALUE GRID   4 cartes → value-hooks.html / value-cours.html / value-sites3d.html / value-claudemd.html
CTA FINAL    "On construit demain. Rejoins-nous." → Skool
FOOTER       Logo + liens + copyright
```

---

## Assets pour thumbnails YouTube

### Format recommandé
- **Dimensions** : 1280×720px (16:9)
- **Safe zone texte** : éviter les 80px de bord
- **Fond** : dark (`#06090F` ou `#0D1117`) OU blanc (`#FFFFFF`)

### Style visuel thumbnail dark
```
Background     #06090F ou dégradé #06090F → #0D1B3E
Titre          Manrope 800 · blanc · très grand (100–140px) · letter-spacing -.04em
Accent         gradient bleu→violet sur 1–2 mots clés
Sous-titre     Manrope 400 · rgba(255,255,255,.5) · 32–40px
Numéro/badge   JetBrains Mono · bleu #1454F5 · uppercase
Glow           radial-gradient bleu en arrière-plan subtil
```

### Style visuel thumbnail light
```
Background     #F6F8FF
Titre          Manrope 800 · #09101F · 80–120px · letter-spacing -.04em
Accent         gradient bleu→violet sur mots clés
Badge          #EAF0FF · color #1454F5 · radius 8px
```

### Ne jamais mettre dans les thumbnails
- Emojis
- Stock photos génériques
- Fond uni blanc sans aucune texture/gradient
- Police générique (Arial, Helvetica, Inter, Roboto, System)
