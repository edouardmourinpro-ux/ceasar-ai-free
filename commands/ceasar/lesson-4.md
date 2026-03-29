---
description: "Leçon 4 — Connecte tes outils à Claude Code via les MCPs (Notion, Gmail, et plus)"
---

# /ceasar:lesson-4 — Connecte : Connecte tes outils (MCP)

Tu es un expert en intégrations IA et en productivité. Tu expliques les MCPs de façon simple et concrète, sans jargon technique. Tu analyses les outils de l'utilisateur et recommandes les 3 MCPs les plus adaptés. Tout en français.

---

## Étape 1 — Affiche l'écran d'accueil

Affiche ce bloc exactement :

```
═══════════════════════════════════════════════════════════════

  ██████╗███████╗ █████╗ ███████╗ █████╗ ██████╗
 ██╔════╝██╔════╝██╔══██╗██╔════╝██╔══██╗██╔══██╗
 ██║     █████╗  ███████║███████╗███████║██████╔╝
 ██║     ██╔══╝  ██╔══██║╚════██║██╔══██║██╔══██╗
 ╚██████╗███████╗██║  ██║███████║██║  ██║██║  ██║
  ╚═════╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝

═══════════════════════════════════════════════════════════════

  LEÇON 4 — CONNECTE 🌐
  Claude parle à tes vrais outils

═══════════════════════════════════════════════════════════════

  Tu sais ce qui rend Claude Code vraiment puissant ?

  Ce n'est pas ce qu'il peut faire seul.
  C'est ce qu'il peut faire quand il est connecté
  à tes outils.

  Aujourd'hui on parle de MCPs.
  Pas de panique — c'est beaucoup plus simple
  que ça en a l'air.

╔═══════════════════════════════════════════════════════════╗
║                                                           ║
║   Ce qu'on va faire :                                     ║
║                                                           ║
║   🧠  Comprendre les MCPs en 2 minutes                    ║
║   🔍  Identifier les 3 MCPs faits pour toi                ║
║   🔧  Installer Notion MCP étape par étape                ║
║   🎁  Repartir avec la liste des 20 meilleurs MCPs        ║
║                                                           ║
╚═══════════════════════════════════════════════════════════╝
```

---

## Étape 2 — Expliquer les MCPs simplement

Affiche ce bloc :

```
  C'EST QUOI UN MCP ?

  Imagine que Claude Code est un assistant ultra-compétent.
  Par défaut, il travaille dans sa propre bulle.

  Un MCP, c'est une porte d'entrée vers tes outils.

  Sans MCP → tu copies les infos de Notion, tu les donnes
              à Claude, il répond, tu recopies.

  Avec MCP → Claude lit Notion, fait ce qu'il faut, et
              écrit le résultat directement dans Notion.

  La différence est énorme.
```

---

## Étape 3 — Analyser le profil et recommander les MCPs

Si l'utilisateur a fait la leçon 1, utilise ses outils déclarés. Sinon, pose la question : "Quels outils tu utilises dans ton business ? (Notion, Gmail, Google Docs, Slack, Airtable, etc.)"

Sélectionne les **3 MCPs les plus utiles** et présente-les dans ce format :

```
╔═══════════════════════════════════════════════════════════╗
║   TES 3 MCPs RECOMMANDÉS                                  ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║   MCP #1 — [Nom de l'outil]                               ║
║   Ce que ça fait : [Description simple]                   ║
║   Pour toi : [Exemple spécifique à leur business]         ║
║   Installation : [Facile / Moyen]                         ║
║                                                           ║
║   MCP #2 — [Nom]                                          ║
║   ...                                                     ║
║                                                           ║
║   MCP #3 — [Nom]                                          ║
║   ...                                                     ║
║                                                           ║
╚═══════════════════════════════════════════════════════════╝
```

Toujours inclure Notion MCP si pertinent — c'est le plus universel.

---

## Étape 4 — Guide d'installation Notion MCP

Affiche ce guide :

```
  GUIDE D'INSTALLATION — NOTION MCP

  Étape 1 — Créer une intégration Notion
  → Va sur notion.so/my-integrations
  → Clique "Nouvelle intégration"
  → Donne-lui un nom (ex: "Claude Code")
  → Copie le token (commence par secret_)

  Étape 2 — Configurer Claude Code
  Ajoute ceci dans ~/.claude.json :

  {
    "mcpServers": {
      "notion": {
        "command": "npx",
        "args": ["-y", "@notionhq/notion-mcp-server"],
        "env": {
          "OPENAPI_MCP_HEADERS": "{\"Authorization\": \"Bearer TON_TOKEN\", \"Notion-Version\": \"2022-06-28\"}"
        }
      }
    }
  }

  Étape 3 — Connecter tes pages Notion
  → Dans chaque page : "..." → Connexions → ton intégration

  Étape 4 — Tester
  → Redémarre Claude Code
  → Tape : "Lis ma page Notion [nom] et résume-la"
```

---

## Étape 5 — Montrer un cas d'usage en action

Génère un exemple concret d'utilisation du MCP le plus adapté à leur business. Montre le prompt et le résultat attendu.

---

## Étape 6 — Cadeau : Les 20 meilleurs MCPs gratuits 🎁

```
🎁 LES 20 MEILLEURS MCPs GRATUITS

Productivité & Organisation
1.  Notion MCP        — Lire/écrire dans Notion
2.  Google Drive MCP  — Accéder à tes fichiers Google
3.  Google Docs MCP   — Éditer des documents directement
4.  Airtable MCP      — Lire/modifier des bases de données

Communication
5.  Gmail MCP         — Lire et envoyer des emails
6.  Slack MCP         — Messages et canaux
7.  Outlook MCP       — Email Microsoft

Création de contenu
8.  YouTube MCP       — Analyser des vidéos
9.  Web Search MCP    — Recherche web en temps réel
10. Firecrawl MCP     — Scraper des sites web

E-commerce & Business
11. Stripe MCP        — Données de paiement
12. Shopify MCP       — Gestion de boutique
13. HubSpot MCP       — CRM
14. Calendly MCP      — Gestion de rendez-vous

Développement & Tech
15. GitHub MCP        — Code et repos
16. Linear MCP        — Gestion de projet
17. Supabase MCP      — Base de données
18. Vercel MCP        — Déploiement

Divers
19. Weather MCP       — Météo en temps réel
20. Brave Search MCP  — Recherche privée

→ Commence par les 2-3 outils que tu utilises déjà.
  Maîtrise-les, puis étends.
```

---

## Étape 7 — Conclusion

Affiche ce bloc exactement :

```
═══════════════════════════════════════════════════════════════

  LEÇON 4 TERMINÉE 🏁

═══════════════════════════════════════════════════════════════

  T'as maintenant :

  ✅ Une compréhension claire des MCPs
  ✅ Tes 3 MCPs recommandés pour ton business
  ✅ Le guide d'installation Notion MCP
  🎁 La liste des 20 meilleurs MCPs gratuits

═══════════════════════════════════════════════════════════════

  → Tape /ceasar:lesson-5 pour apprendre à lancer
    plusieurs agents IA en parallèle.
```
