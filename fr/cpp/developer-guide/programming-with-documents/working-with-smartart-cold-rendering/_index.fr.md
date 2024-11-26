---
title: Travailler avec SmartArt Rendu à froid en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec SmartArt Rendu à froid
linktitle: Travailler avec SmartArt Rendu à froid
type: docs
description: "Aspose.Words pour C++ effectue SmartArt Rendu à froid, ce qui signifie qu'il dispose et rend SmartArt objets si le dessin SmartArt pré-rendu est manquant ou incorrect."
weight: 330
url: /fr/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt les graphiques sont utilisés pour créer rapidement et facilement une représentation visuelle de l'information. Vous choisissez simplement parmi un grand nombre de mises en page qui conviennent le mieux à votre situation. Cette facilité d'utilisation rend les graphiques SmartArt très populaires à certaines fins.

Microsoft Word génère et enregistre le dessin pré-rendu avec l'objet `SmartArt`. Dans la plupart des cas, le dessin pré-rendu est bien rendu par Aspose.Words et aucune action supplémentaire n'est requise. Cependant, si le document est enregistré par d'autres applications, le dessin SmartArt pré-rendu peut être manquant ou incorrect. Dans ce cas, l'objet `SmartArt` lui-même doit être mis en page et rendu à l'aide de Aspose.Words. Nous appelons ce processus le `SmartArt` Rendu à froid.

## Utilisation de SmartArt Rendu à froid

Aspose.Words vous permet d'utiliser un dessin pré-rendu ou d'effectuer un rendu à froid:

* Si un dessin pré-rendu est disponible, Aspose.Words l'utilise pour rendre l'objet `SmartArt`.
* Si le dessin pré-rendu est manquant, Aspose.Words effectue implicitement un rendu à froid pour rendre l'objet `SmartArt`.
* Si un dessin pré-rendu est présent mais est incorrect, il est nécessaire d'effectuer SmartArt rendu à froid explicitement en appelant la méthode [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/).

L'exemple de code suivant montre comment mettre à jour les dessins pour tous les diagrammes du document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Prise en charge des dispositions standard SmartArt

Actuellement, seul un nombre limité de mises en page Microsoft Word SmartArt standard sont prises en charge. De plus, certaines de ces dispositions sont partiellement prises en charge, ce qui signifie que des nœuds et des formes significatifs du diagramme sont rendus, mais il peut y avoir des différences entre Microsoft Word et la disposition du diagramme Aspose.Words.

Le tableau ci-dessous répertorie les mises en page entièrement et partiellement prises en charge:

| SmartArt Groupe de mises en page | Mises en page entièrement prises en charge | Dispositions partiellement prises en charge |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Liste de Blocage de Base</li><li>Hexagones Alternés</li><li>Liste à Puces Verticale</li><li>Liste des Boîtes Verticales</li><li>Liste de Largeur Variable</li><li>Liste à Puces Horizontale</li><li>Liste Groupée</li><li>Liste de Blocage Verticale</li><li>Liste Verticale de Chevrons</li><li>Liste des Flèches Verticales</li><li>Liste des Trapèzes</li><li>Liste des Tableaux</li><li>Liste des Pyramides</li><li>Liste des Cibles</li></ul> | <ul><li>Liste Doublée</li><li>Liste des Parenthèses Verticales</li><li>Liste des Onglets</li><li>Liste Empilée</li><li>Liste des Accents Verticaux</li><li>Liste des Cercles Verticaux</li></ul> |
| `Process` | <ul><li>Processus de Base</li><li>Processus d'Accentuation</li><li>Processus de Bloc Continu</li><li>Augmentation du Processus de Flèche</li><li>Texte Convergent</li><li>Chronologie de Base</li><li>Processus de Chevron de Base</li><li>Procédé d'Accentuation des Chevrons</li><li>Procédé à Chevrons Fermés</li><li>Liste de Chevrons</li><li>Processus Vertical</li><li>Processus Échelonné</li><li>Liste des Processus</li><li>Processus de Pliage de Base</li><li>Processus de Pliage Répété</li><li>Processus Détaillé</li><li>Flèche Vers Le Haut</li><li>Processus Descendant</li><li>Processus de Pliage Circulaire</li></ul> | <ul><li>Processus d'Intensification</li><li>Processus d'abandon</li><li>Débit Alternatif</li><li>Processus de Cercle Croissant</li><li>Processus de Tarte</li><li>Processus de Bloc Interconnecté</li><li>Flèches de Processus</li><li>Chronologie de l'Accent Circulaire</li><li>Processus de Cercle</li><li>Processus de Sous-Étape</li><li>Processus Par Étapes</li><li>Aléatoire au processus de résultat</li><li>Processus de Flèche Circulaire</li></ul> |
| `Cycle` |  | <ul><li>Cycle Segmenté</li><li>Hexagone Radial</li></ul> |
| `Hierarchy` |  | <ul><li>Hiérarchie des Tables</li><li>Mise en Page de l'Architecture</li></ul> |
| `Relationship` | <ul><li>Solde</li><li>Entonnoir</li><li>Équipement</li><li>Plus Et Moins</li><li>Ruban Flèche</li><li>Flèches de Contrepoids</li><li>Flèches Opposées</li><li>Cible imbriquée</li><li>Cible de Base</li><li>Tarte de Base</li><li>Venn de Base</li><li>Venn Empilé</li><li>Anneau Interconnecté</li></ul> | <ul><li>Relation de Cercle</li><li>Idées Opposées</li><li>Équation</li><li>Équation Verticale</li><li>Venn Linéaire</li></ul> |
| `Matrix` | <ul><li>Matrice de Base</li><li>Intitulé Matrice</li><li>Matrice de Grille</li><li>Matrice de Cycle</li></ul> |  |
| `Pyramid` |  | <ul><li>Pyramide Segmentée</li></ul> |

## Comparaison du rendu SmartArt dans Aspose.Words et Microsoft

Le tableau ci-dessous montre des exemples d'images de Aspose.Words Rendu à froid de certaines mises en page standard par rapport à la sortie Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
