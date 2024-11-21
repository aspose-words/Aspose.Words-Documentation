---
title: Créer des graphiques OOXML à partir de zéro
second_title: Aspose.Words pour C++
articleTitle: Créer des graphiques OOXML à partir de zéro
linktitle: Créer des graphiques OOXML à partir de zéro
description: "Comment créer différents graphiques dans votre document en utilisant C++."
type: docs
weight: 10
url: /fr/cpp/creating-ooxml-charts-from-scratch-using-aspose-words/
timestamp: 2024-01-27-14-07-04
---

## Création de graphiques OOXML à partir de zéro en utilisant Aspose.Words

Aspose.Words fournit la méthode `InsertChart` qui a été ajoutée à la classe `DocumentBuilder`. Voyons donc comment insérer un simple histogramme dans le document en utilisant la méthode `DocumentBuilder->InsertChart`:

### Comment insérer un graphique à colonnes

L'exemple de code ci - dessous montre comment insérer un histogramme.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cpp" >}}

Le code produit le résultat suivant:

![insert-column-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-2.png)

Il existe quatre surcharges différentes pour la méthode d'ajout de séries, qui a été exposée pour couvrir toutes les variantes possibles de sources de données pour tous les types de graphiques:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cpp" >}}

Le code produit le résultat suivant:

![insert-column-chart-aspose-words-cpp-2](creating-ooxml-charts-using-aspose-words-3.png)


### Comment faire InsertScatterChart

L'exemple de code ci - dessous montre comment insérer un graphique en nuage de points.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cpp" >}}

Le code produit le résultat suivant:

![insert-scatter-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-4.png)


### Comment Insérer un Graphique en Aires

L'exemple de code ci - dessous montre comment insérer un graphique en aires.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cpp" >}}

Le code produit le résultat suivant:

![insert-area-chart-aspose-words-cpp-1](creating-ooxml-charts-using-aspose-words-5.png)


### Comment insérer un Graphique à Bulles

L'exemple de code ci - dessous montre comment insérer un graphique à bulles.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cpp" >}}

Le code produit le résultat suivant:

![insert-bubble-chart-aspose-words-cpp-1](creating-ooxml-charts-from-scratch-using-aspose-words-1.png)




