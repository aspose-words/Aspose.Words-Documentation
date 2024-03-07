---
title: Travailler avec des graphiques dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des graphiques
linktitle: Travailler avec des graphiques
description: "Créez et modifiez des graphiques de différents types dans un document à l'aide de Python."
type: docs
weight: 310
url: /fr/python-net/working-with-charts/
---

Une nouvelle méthode [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) a été ajoutée à la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Voyons donc comment insérer un simple histogramme dans le document à l'aide de la méthode [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Comment insérer un graphique

Dans cette section, nous apprendrons comment insérer un graphique dans un document.

### Insérer un histogramme

L'exemple de code suivant montre comment insérer un histogramme:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Le code produit le résultat suivant:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Il existe des méthodes [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) et [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), qui ont été exposées pour couvrir toutes les variantes possibles de sources de données pour tous les types de graphiques:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Le code produit le résultat suivant:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Insérer un graphique à nuages de points

L'exemple ci-dessous montre comment insérer un graphique à nuages de points.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Le code produit le résultat suivant:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Insérer un graphique en aires

L'exemple de code suivant montre comment insérer un graphique en aires:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Le code produit le résultat suivant:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Insérer un graphique à bulles

L'exemple de code suivant montre comment insérer un graphique à bulles:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Le code produit le résultat suivant:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Travailler avec des graphiques via l'objet Shape.chart

Une fois le graphique inséré et rempli de données, vous pouvez modifier son apparence. La propriété [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) contient toutes les options liées aux graphiques disponibles via le API public.

Par exemple, modifions le comportement du titre ou de la légende [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Le code génère les résultats suivants:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Comment travailler avec ChartSeriesCollection de graphiques

Examinons la collection [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Toutes les séries de graphiques sont disponibles via la collection [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Vous pouvez supprimer les séries une par une ou toutes les effacer ainsi qu'en ajouter une nouvelle si nécessaire. Le graphique nouvellement inséré comporte des séries par défaut ajoutées à cette collection. Pour les supprimer, vous devez appeler la méthode [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Travailler avec une seule classe ChartSeries

Voici comment travailler avec une série particulière.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Tous les [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) uniques ont des options [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) par défaut, veuillez essayer d'utiliser le code suivant pour les modifier:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Comment travailler avec un seul ChartDataPoint d'un `ChartSeries`

À l'aide de [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), vous pouvez personnaliser le formatage d'un seul point de données de la série de graphiques:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Comment travailler avec ChartDataLabel d'une seule ChartSeries

En utilisant [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/), vous pouvez spécifier le formatage d'une seule étiquette de données de la série de graphiques, comme afficher/masquer LegendKey, CategoryName, SeriesName, Value, etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Veuillez voir le résultat ci-dessous:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Comment définir les options par défaut pour ChartDataLabels de ChartSeries

La classe [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) définit des propriétés qui peuvent être utilisées pour définir les options par défaut pour [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) pour Chart Series. Ces propriétés incluent [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/), etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Veuillez voir le résultat ci-dessous:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Comment formater l'étiquette du numéro de données du graphique

En utilisant [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/), vous pouvez spécifier le formatage numérique d'une seule étiquette de données du graphique.

L'exemple de code suivant montre comment formater un numéro de l'étiquette de données:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Comment définir les propriétés de l'axe du graphique

Si vous souhaitez travailler avec l'axe du graphique, la mise à l'échelle et les unités d'affichage pour l'axe des valeurs, veuillez utiliser les classes [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) et [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

L'exemple de code suivant montre comment définir les propriétés des axes X et Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Comment définir la valeur temporelle Date de l'axe

L'exemple de code suivant montre comment définir les valeurs de date/heure sur les propriétés de l'axe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Comment formater la valeur numérique de l'axe

L'exemple de code suivant montre comment modifier le format des nombres sur l'axe des valeurs:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Comment définir les limites de l'axe

La classe [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) représente une limite minimale ou maximale des valeurs d'axe. La limite peut être spécifiée sous la forme d'une valeur numérique, date-heure ou d'une valeur "auto" spéciale.

L'exemple de code suivant montre comment définir les limites d'un axe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Comment définir l'unité d'intervalle entre les étiquettes

L'exemple de code suivant montre comment définir l'unité d'intervalle entre les étiquettes sur un axe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Comment masquer l'axe du graphique

Si vous souhaitez afficher ou masquer l'axe du graphique, vous pouvez simplement y parvenir en définissant la valeur de la propriété [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

L'exemple de code suivant montre comment masquer l'axe Y du graphique:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Comment aligner l'étiquette du graphique

Si vous souhaitez définir un alignement de texte pour les étiquettes multilignes, vous pouvez simplement y parvenir en définissant la valeur de la propriété [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

L'exemple de code suivant montre comment cocher l'alignement des étiquettes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word aligne l'étiquette du graphique au centre par défaut.

{{% /alert %}}

## Comment définir le formatage du remplissage et du contour

Le formatage du remplissage et du contour peut être défini pour les séries de graphiques, les points de données et les marqueurs. Pour ce faire, vous devez utiliser les propriétés de type [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) dans les classes [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) et [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), ainsi que des alias pour certaines propriétés, telles que [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) et [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) dans la classe [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

L'exemple de code suivant montre comment définir la couleur de la série:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.COLUMN, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Create category names array.
categories = [ "AW Category 1", "AW Category 2" ]

# Adding new series. Value and category arrays must be the same size.
series1 = seriesColl.add("AW Series 1", categories, [ 1, 2 ])
series2 = seriesColl.add("AW Series 2", categories, [ 3, 4 ])
series3 = seriesColl.add("AW Series 3", categories, [ 5, 6 ])

# Set series color.
series1.format.fill.fore_color = drawing.Color.red
series2.format.fill.fore_color = drawing.Color.yellow
series3.format.fill.fore_color = drawing.Color.blue

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.set_series_color.docx")
{{< /highlight >}}

L'exemple de code suivant montre comment définir la couleur et l'épaisseur des lignes:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.LINE, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Adding new series.
series1 = seriesColl.add_double("AW Series 1", [ 0.7, 1.8, 2.6 ], [ 2.7, 3.2, 0.8 ])
series2 = seriesColl.add_double("AW Series 2", [ 0.5, 1.5, 2.5 ], [ 3, 1, 2 ])

# Set series color.
series1.format.stroke.fore_color = drawing.Color.red
series1.format.stroke.weight = 5
series2.format.stroke.fore_color = drawing.Color.light_green
series2.format.stroke.weight = 5

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.line_color_and_weight.docx")
{{< /highlight >}}
