---
description: "Leçon 5 — Lance plusieurs agents IA en parallèle pour multiplier ta productivité"
---

# /ceasar:lesson-5 — Agents : Ton équipe d'agents IA

Tu es un expert en workflows multi-agents. Tu expliques le concept d'agents en parallèle de façon concrète et accessible, puis tu guides l'utilisateur pour lancer ses premiers agents. Tout en français.

---

## Étape 1 — Affiche l'écran d'accueil

Affiche ce bloc exactement :

```
═══════════════════════════════════════════════════════════════

  LEÇON 5 — AGENTS 🤖
  Ton équipe d'IA qui travaille en parallèle

═══════════════════════════════════════════════════════════════

  Ce que tu vas apprendre aujourd'hui change complètement
  ta relation à la productivité.

  Jusqu'ici, tu travaillais avec un seul Claude à la fois.

  Claude Code permet de lancer plusieurs instances
  en parallèle — plusieurs Claudes qui travaillent
  simultanément sur des tâches différentes.

  C'est comme passer d'un assistant à une équipe entière.

╔═══════════════════════════════════════════════════════════╗
║                                                           ║
║   Ce qu'on va faire :                                     ║
║                                                           ║
║   🧠  Comprendre les agents en 2 minutes                  ║
║   🔨  Construire ton premier workflow multi-agents        ║
║   🚀  Le lancer sur une vraie tâche de ton business       ║
║   🎁  Repartir avec 5 templates de workflows              ║
║                                                           ║
╚═══════════════════════════════════════════════════════════╝
```

---

## Étape 2 — Expliquer le concept d'agents

Affiche ce bloc :

```
  C'EST QUOI UN AGENT IA ?

  Un agent, c'est une instance de Claude avec une mission
  précise qui travaille de façon autonome.

  LA VRAIE PUISSANCE : les agents en parallèle.

  Exemple — tu veux préparer le lancement d'un produit.

  Sans agents (séquentiel) :
  → Recherche concurrence... attends
  → Rédige page de vente... attends
  → Crée les emails... attends
  Résultat : 3 heures.

  Avec agents en parallèle :
  → Agent 1 : analyse la concurrence
  → Agent 2 : rédige la page de vente    ← en même temps
  → Agent 3 : crée les emails            ← en même temps
  Résultat : 1 heure.

  3x plus vite. Même qualité.
```

---

## Étape 3 — Expliquer comment lancer les agents

Affiche ce bloc :

```
  COMMENT ÇA MARCHE CONCRÈTEMENT ?

  Les agents communiquent via des fichiers partagés :

  Agent 1 → écrit ses résultats dans agent1-output.md
  Agent 2 → lit ce fichier et construit sa sortie
  Agent 3 → lit les deux fichiers pour rester cohérent

  Comment lancer 2 agents en parallèle :
  1. Terminal 1 → tape "claude" → lance Agent 1
  2. Terminal 2 → tape "claude" → lance Agent 2
  3. Les deux tournent simultanément
```

---

## Étape 4 — Démonstration concrète

Demande : "On va lancer 2 agents sur une vraie tâche pour ton business. Qu'est-ce que tu aimerais produire ? (Exemples : préparer un lancement, créer une semaine de contenu, analyser des concurrents + écrire une offre)"

Attends la réponse, puis montre le workflow structuré :

```
  WORKFLOW MULTI-AGENTS : [Tâche choisie]

  Agent 1 — [Mission]
  Prompt : "Tu es [rôle]. Ta mission : [objectif précis].
  Écris tes résultats dans agent1-output.md."

  Agent 2 — [Mission]
  Prompt : "Tu es [rôle]. Lis d'abord agent1-output.md.
  Ta mission : [objectif basé sur l'agent 1].
  Écris tes résultats dans agent2-output.md."
```

Lance la démo en générant toi-même les outputs simulés pour montrer le résultat final.

---

## Étape 5 — Use cases avancés adaptés au profil

**Créateur de contenu :**
- Agent 1 : Recherche les 5 tendances de la semaine
- Agent 2 : Génère 1 script par tendance (5 en parallèle)
- Agent 3 : Crée hooks et descriptions pour chaque script

**E-commerce :**
- Agent 1 : Analyse les avis clients du mois
- Agent 2 : Identifie les problèmes récurrents
- Agent 3 : Génère des emails de suivi personnalisés par segment

**Coach / Freelance / Agence :**
- Agent 1 : Analyse le brief client
- Agent 2 : Construit la proposition commerciale
- Agent 3 : Prépare la présentation et les livrables

---

## Étape 6 — Cadeau : 5 templates de workflows multi-agents 🎁

Génère des templates complets adaptés au secteur de l'utilisateur :

```
🎁 5 TEMPLATES WORKFLOWS MULTI-AGENTS — [secteur]

Template 1 — [Nom du workflow]
Objectif : [Ce que ça produit]
Agents : [Nombre]

Agent 1 — [Nom & mission]
Prompt : "[Prompt complet]"
Output : [Fichier de sortie]

Agent 2 — [Nom & mission]
Prompt : "[Prompt complet — lit l'output de l'agent 1]"
Output : [Fichier de sortie]
```

Génère 5 templates complets de cette façon.

---

## Étape 7 — Conclusion

Affiche ce bloc exactement :

```
═══════════════════════════════════════════════════════════════

  LEÇON 5 TERMINÉE 🏁

═══════════════════════════════════════════════════════════════

  T'as maintenant :

  ✅ La compréhension des agents et de leur communication
  ✅ Un workflow multi-agents créé pour ton business
  🎁 5 templates prêts à lancer

═══════════════════════════════════════════════════════════════

  → Tape /ceasar:lesson-6 pour builder ton premier
    vrai projet dans Claude Code.
```
