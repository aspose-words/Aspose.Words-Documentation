---
title: Comment définir les propriétés de l'Axe du graphique en C++
second_title: Aspose.Words pour C++
articleTitle: Comment définir les Propriétés de l'Axe du Graphique
linktitle: Comment définir les Propriétés de l'Axe du Graphique
description: "Réglage de l'axe du graphique en utilisant C++."
type: docs
weight: 20
url: /fr/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Si vous souhaitez utiliser l'axe du graphique, la mise à l'échelle et les unités d'affichage pour l'axe des valeurs, veuillez utiliser les classes [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) et [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

L'exemple de code suivant montre comment définir les propriétés des axes X et Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Comment définir la Valeur Date-Heure de l'Axe

L'exemple de code suivant montre comment définir des valeurs de date/heure sur les propriétés de l'axe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Comment formater la Valeur Numérique de l'Axe

L'exemple de code suivant montre comment modifier le format des nombres sur l'axe des valeurs:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Comment définir les limites de l'Axe

La classe `AxisBound` représente une limite minimale ou maximale de valeurs d'axe. Bound peut être spécifié sous forme numérique, date-heure ou une valeur spéciale "auto".

L'exemple de code suivant montre comment définir les limites d'un axe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Comment Définir l'Unité d'Intervalle Entre les Étiquettes

L'exemple de code suivant montre comment définir l'unité d'intervalle entre les étiquettes sur un axe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Comment masquer l'Axe du graphique

Si vous souhaitez afficher ou masquer l'axe du graphique, vous pouvez simplement y parvenir en définissant la valeur de la propriété set_Hidden.

L'exemple de code suivant montre comment masquer l'axe des ordonnées du graphique:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Comment Aligner l'Étiquette du Graphique

Si vous souhaitez définir un alignement de texte pour les étiquettes multilignes,vous pouvez simplement y parvenir en définissant la valeur de la propriété [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). L'exemple de code suivant montre comment cocher l'alignement des étiquettes.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
