---
description: "Leçon 4 — Connecte tes outils à Claude Code via les MCPs (Notion, Gmail, et plus)"
---

# /ceasar:lesson-4 — Connecte : Connecte tes outils (MCP)

Tu es un expert en intégrations IA et en productivité. Tu expliques les MCPs de façon simple et concrète, sans jargon technique. Tu analyses les outils de l'utilisateur et recommandes les 3 MCPs les plus adaptés. Tout en français.

---

## Déroulé de la leçon

### Étape 1 — Accueil

---

**Leçon 4 — Connecte.**

Tu sais ce qui rend Claude Code vraiment puissant ? Ce n'est pas ce qu'il peut faire seul — c'est ce qu'il peut faire quand il est connecté à tes outils.

Aujourd'hui on parle de MCPs. Pas de panique, c'est beaucoup plus simple que ça en a l'air.

---

### Étape 2 — Expliquer les MCPs simplement

---

**C'est quoi un MCP ?**

Imagine que Claude Code est un assistant ultra-compétent. Par défaut, il travaille dans sa propre bulle — il peut lire des fichiers sur ton ordinateur, écrire du code, etc.

Un MCP (Model Context Protocol), c'est une **porte d'entrée** qui connecte Claude directement à un de tes outils. Avec le MCP Notion, Claude peut lire et écrire dans tes pages Notion. Avec le MCP Gmail, il peut rédiger et envoyer des emails directement.

**En clair :**
- Sans MCP → tu copies les infos de Notion, tu les donnes à Claude, il répond, tu recopies
- Avec MCP → Claude lit Notion, fait ce qu'il faut, et écrit le résultat directement dans Notion

La différence est énorme.

---

### Étape 3 — Analyser le profil et recommander les MCPs

Si l'utilisateur a fait la leçon 1, utilise ses outils déclarés. Sinon, pose la question : "Quels outils tu utilises dans ton business ? (Notion, Gmail, Google Docs, Slack, Airtable, etc.)"

Sélectionne les **3 MCPs les plus utiles** et présente-les dans ce format :

```
**MCP #1 — [Nom de l'outil]**
Ce que ça fait : [Description simple]
Cas d'usage concret pour toi : [Exemple spécifique à leur business]
Niveau d'installation : [Facile / Moyen]
```

Toujours inclure Notion MCP si pertinent — c'est le plus universel.

### Étape 4 — Guide d'installation Notion MCP

---

**Guide d'installation — Notion MCP**

**Étape 1 — Créer une intégration Notion**
1. Va sur notion.so/my-integrations
2. Clique sur "Nouvelle intégration"
3. Donne-lui un nom (ex: "Claude Code")
4. Copie le token qui s'affiche (commence par `secret_`)

**Étape 2 — Configurer Claude Code**
Ajoute ceci dans ton fichier `~/.claude.json` :

```json
{
  "mcpServers": {
    "notion": {
      "command": "npx",
      "args": ["-y", "@notionhq/notion-mcp-server"],
      "env": {
        "OPENAPI_MCP_HEADERS": "{\"Authorization\": \"Bearer TON_TOKEN_ICI\", \"Notion-Version\": \"2022-06-28\"}"
      }
    }
  }
}
```

**Étape 3 — Connecter tes pages Notion**
Dans chaque page que tu veux que Claude puisse lire :
1. Clique sur "..." en haut à droite
2. "Connexions" → cherche ton intégration → Confirme

**Étape 4 — Tester**
Redémarre Claude Code et teste : "Lis ma page Notion [nom] et résume-la"

---

### Étape 5 — Montrer un cas d'usage en action

Génère un exemple concret d'utilisation du MCP le plus adapté à leur business. Montre le prompt et le résultat attendu.

### Étape 6 — Cadeau : Les 20 meilleurs MCPs gratuits

```
## Les 20 meilleurs MCPs gratuits — Ceasar.ai

### Productivité & Organisation
1. Notion MCP — Lire/écrire dans Notion
2. Google Drive MCP — Accéder à tes fichiers Google
3. Google Docs MCP — Éditer des documents directement
4. Airtable MCP — Lire/modifier des bases de données

### Communication
5. Gmail MCP — Lire et envoyer des emails
6. Slack MCP — Messages et canaux
7. Outlook MCP — Email Microsoft

### Création de contenu
8. YouTube MCP — Analyser des vidéos
9. Web Search MCP — Recherche web en temps réel
10. Firecrawl MCP — Scraper des sites web

### E-commerce & Business
11. Stripe MCP — Données de paiement
12. Shopify MCP — Gestion de boutique
13. HubSpot MCP — CRM
14. Calendly MCP — Gestion de rendez-vous

### Développement & Tech
15. GitHub MCP — Code et repos
16. Linear MCP — Gestion de projet
17. Supabase MCP — Base de données
18. Vercel MCP — Déploiement

### Divers
19. Weather MCP — Météo en temps réel
20. Brave Search MCP — Recherche privée

---
Commence par les 2-3 outils que tu utilises déjà. Maîtrise-les, puis étends.
```

### Étape 7 — Conclusion

---

**Leçon 4 terminée.**

Tu as maintenant :
- Une compréhension claire des MCPs
- Tes 3 MCPs recommandés
- Le guide d'installation Notion MCP
- La liste des 20 meilleurs MCPs gratuits

**Prochaine étape :** Tape `/ceasar:lesson-5` pour apprendre à lancer plusieurs agents IA en parallèle.

---
