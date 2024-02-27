---
title: Travailler avec le rendu à froid SmartArt dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec le rendu à froid SmartArt
linktitle: Travailler avec le rendu à froid SmartArt
description: "Introduction aux formes SmartArt à l'aide de C#."
type: docs
description: "Aspose.Words pour .NET effectue le rendu à froid SmartArt, ce qui signifie qu'il présente et restitue les objets SmartArt si le dessin SmartArt pré-rendu est manquant ou incorrect à l'aide de C#."
weight: 330
url: /fr/net/working-with-smartart-cold-rendering/
---

Les graphiques SmartArt sont utilisés pour créer rapidement et facilement une représentation visuelle des informations. Vous choisissez simplement parmi un grand nombre d’agencements celui qui convient le mieux à votre situation. Cette facilité d'utilisation rend les graphiques SmartArt très populaires à certaines fins.

Microsoft Word génère et enregistre le dessin pré-rendu avec l'objet `SmartArt`. Dans la plupart des cas, le dessin pré-rendu est bien rendu par Aspose.Words et aucune action supplémentaire n'est requise. Toutefois, si le document est enregistré par d'autres applications, le dessin SmartArt pré-rendu peut être manquant ou incorrect. Dans ce cas, l'objet `SmartArt` lui-même doit être présenté et rendu en utilisant Aspose.Words. Nous appelons ce processus le rendu à froid `SmartArt`.

## Utilisation du rendu à froid SmartArt

Aspose.Words vous permet d'utiliser un dessin pré-rendu ou d'effectuer un rendu à froid:

* Si un dessin pré-rendu est disponible, Aspose.Words l'utilise pour restituer l'objet `SmartArt`.
* Si le dessin pré-rendu est manquant, Aspose.Words effectue implicitement un rendu à froid pour restituer l'objet `SmartArt`.
* Si un dessin pré-rendu est présent mais est incorrect, il est nécessaire d'effectuer explicitement un rendu à froid SmartArt en appelant la méthode [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/).

L'exemple de code suivant montre comment mettre à jour les dessins de tous les diagrammes du document:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## Prise en charge des mises en page SmartArt standard

Actuellement, seul un nombre limité de mises en page Microsoft Word SmartArt standard sont prises en charge. En outre, certaines de ces mises en page sont partiellement prises en charge, ce qui signifie que les nœuds et les formes importants du diagramme sont rendus, mais il peut y avoir des différences entre la mise en page des diagrammes Microsoft Word et Aspose.Words.

Le tableau ci-dessous répertorie les mises en page entièrement et partiellement prises en charge:

|  Mises en page SmartArt Group |  Mises en page entièrement prises en charge |  Mises en page partiellement prises en charge |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Liste de blocage de base</li><li>Hexagones alternés</li><li>Liste à puces verticale</li><li>Liste des cases verticales</li><li>Liste de largeur variable</li><li>Liste à puces horizontale</li><li>Liste Group</li><li>Liste de blocage verticale</li><li>Liste de chevrons verticaux</li><li>Liste de flèches verticales</li><li>Liste des trapèzes</li><li>Liste des tableaux</li><li>Liste des pyramides</li><li>Liste cible</li></ul> |  <ul><li>Liste lignée</li><li>Liste des supports verticaux</li><li>Liste des onglets</li><li>Liste empilée</li><li>Liste d'accents verticaux</li><li>Liste de cercles verticaux</li></ul> |
|  `Process`  |  <ul><li>Processus de base</li><li>Processus d'accentuation</li><li>Processus de bloc continu</li><li>Processus de flèche croissant</li><li>Texte convergent</li><li>Chronologie de base</li><li>Processus Chevron de base</li><li>Processus d'accentuation en chevron</li><li>Processus Chevron Fermé</li><li>Liste des chevrons</li><li>Processus vertical</li><li>Processus échelonné</li><li>Liste des processus</li><li>Processus de pliage de base</li><li>Processus de pliage répété</li><li>Processus détaillé</li><li>Flèche vers le haut</li><li>Processus descendant</li><li>Processus de pliage circulaire</li></ul> |  <ul><li>Processus intensifié</li><li>Processus progressif</li><li>Flux alternatif</li><li>Processus de cercle croissant</li><li>Processus de tarte</li><li>Processus de blocs interconnectés</li><li>Flèches de processus</li><li>Chronologie de l'accent de cercle</li><li>Processus de cercle</li><li>Processus de sous-étape</li><li>Processus par étapes</li><li>Processus aléatoire à résultat</li><li>Processus de flèche circulaire</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Cycle segmenté</li><li>Hexagone Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Hiérarchie des tableaux</li><li>Disposition architecturale</li></ul> |
|  `Relationship`  |  <ul><li>Équilibre</li><li>Entonnoir</li><li>Engrenage</li><li>Plus et moins</li><li>Ruban de flèche</li><li>Flèches de contrepoids</li><li>Flèches opposées</li><li>Cible imbriquée</li><li>Cible de base</li><li>Tarte de base</li><li>Venn de base</li><li>Venn empilé</li><li>Anneau interconnecté</li></ul> |  <ul><li>Relation de cercle</li><li>Idées opposées</li><li>Équation</li><li>Équation verticale</li><li>Venn linéaire</li></ul> |
|  `Matrix`  |  <ul><li>Matrice de base</li><li>Matrice intitulée</li><li>Matrice de grille</li><li>Matrice de cycle</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Pyramide segmentée</li></ul> |

## Comparaison du rendu SmartArt dans Aspose.Words et Microsoft

Le tableau ci-dessous montre des exemples d'images de rendu à froid Aspose.Words de certaines mises en page standard par rapport à la sortie Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="mot_processus_de base"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
