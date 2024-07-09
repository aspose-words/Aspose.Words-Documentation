---
title: Travailler avec Smart Art froid rendu dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec Smart Rendre l'art froid
linktitle: Travailler avec Smart Rendre l'art froid
type: docs
description: "Aspose.Words pour Java exécute Smart Art Cold Rendering, ce qui signifie qu'il établit et rend des objets SmartArt si le dessin SmartArt pré-rendu est manquant ou incorrect."
weight: 330
url: /fr/java/working-with-smartart-cold-rendering/
---

Les graphiques SmartArt sont utilisés pour créer rapidement et facilement une représentation visuelle de l'information. Vous choisissez simplement parmi un grand nombre de mises en page qui conviennent le mieux à votre situation. Cette facilité d'utilisation rend les graphiques SmartArt très populaires pour certains usages.

Microsoft Word génère et enregistre le dessin pré-rendu avec le `SmartArt` objet. Dans la plupart des cas, le dessin pré-rendu est bien rendu par Aspose.Words et aucune autre mesure n'est nécessaire. Cependant, si le document est sauvegardé par d'autres applications, le dessin SmartArt pré-rendu peut être manquant ou incorrect. Dans ce cas, `SmartArt` objet lui-même devrait être mis en place et rendu en utilisant Aspose.Words. Nous appelons ce processus le `SmartArt` Rendu froid.

## Utilisation de Smart Rendre l'art froid

Aspose.Words vous permet d'utiliser un dessin pré-rendu ou d'effectuer un rendu à froid:

* Si un dessin pré-rendu est disponible, Aspose.Words l'utilise pour rendre la `SmartArt` objet.
* Si le dessin pré-rendu est manquant, Aspose.Words effectue implicitement le rendu à froid pour rendre le `SmartArt` objet.
* Si un dessin pré-rendu est présent mais est incorrect, il est nécessaire d'effectuer le rendu à froid SmartArt explicitement en appelant [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) méthode.

L'exemple de code suivant montre comment mettre à jour les dessins pour tous les diagrammes du document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Prise en charge des mises en page SmartArt standard

Actuellement, seul un nombre limité de normes Microsoft Word Les mises en page SmartArt sont prises en charge. En outre, certaines de ces mises en page sont partiellement supportées, ce qui signifie que des nœuds et des formes significatifs du diagramme sont rendus, mais il peut y avoir des différences entre Microsoft Word et Aspose.Words schéma.

Le tableau ci-dessous énumère les mises en page entièrement et partiellement supportées:

|  Intelligent Art Layouts Group |  Aménagements entièrement pris en charge |  Mises en page partiellement prises en charge |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Liste des blocs de base</li><li>Hexagones alternés</li><li>Liste des balles verticales</li><li>Liste des boîtes verticales</li><li>Liste des largeurs variables</li><li>Liste horizontale des balles</li><li>GroupListe</li><li>Liste des blocs verticaux</li><li>Liste verticale de Chevron</li><li>Liste des flèches verticales</li><li>Liste des trapézoïdes</li><li>Liste des tableaux</li><li>Liste des pyramides</li><li>Liste des cibles</li></ul> |  <ul><li>Liste linéaire</li><li>Liste verticale des supports</li><li>Liste des onglets</li><li>Liste empilée</li><li>Liste d'entrée verticale</li><li>Liste des cercles verticaux</li></ul> |
|  `Process`  |  <ul><li>Processus de base</li><li>Processus accéléré</li><li>Processus de bloc continu</li><li>Augmentation du processus Arrow</li><li>Texte de conversation</li><li>Calendrier de base</li><li>Processus de base Chevron</li><li>Processus accéléré de Chevron</li><li>Processus Chevron fermé</li><li>Liste de Chevron</li><li>Processus vertical</li><li>Processus échelonné</li><li>Liste des processus</li><li>Processus de financement de base</li><li>Répéter le processus de pliage</li><li>Processus détaillé</li><li>Flèche vers le haut</li><li>Processus descendant</li><li>Processus de pliage circulaire</li></ul> |  <ul><li>Étapes du processus</li><li>Étape vers le bas</li><li>Flux alternatif</li><li>Augmentation du processus du cercle</li><li>Processus de tarte</li><li>Processus de bloc interconnecté</li><li>Flèches du processus</li><li>Chronologie du cercle Accent</li><li>Processus du cercle</li><li>Processus de sous-étape</li><li>Processus échelonné</li><li>Processus aléatoire au résultat</li><li>Processus de flèche circulaire</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Cycle segmenté</li><li>Hexagone Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hiérarchie des tableaux</li><li>Structure de l'architecture</li></ul> |
|  `Relationship`  |  <ul><li>Solde</li><li>Entonnoir</li><li>Équipement</li><li>Plus et moins</li><li>Ruban fléché</li><li>Flèches de contrepoids</li><li>Flèches opposées</li><li>Cible imbriquée</li><li>Objectif de base</li><li>Pie de base</li><li>Venne de base</li><li>Venn piquée</li><li>Anneau interconnecté</li></ul> |  <ul><li>Relations de cercle</li><li>Les idées opposées</li><li>Équation</li><li>Équation verticale</li><li>Venn linéaire</li></ul> |
|  `Matrix`  |  <ul><li>Matrice de base</li><li>Matrice titrée</li><li>Matrice de grille</li><li>Matrice du cycle</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Pyramide segmentée</li></ul> |

## Comparaison du rendu SmartArt dans Aspose.Words et Microsoft

Le tableau ci-dessous montre des exemples Aspose.Words Froid Rendu de certains schémas standard par rapport à Microsoft Word sortie & #160;:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
