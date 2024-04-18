---
title: Werken met grafieken in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met grafieken
linktitle: Werken met grafieken
description: "Maak en wijzig grafieken van verschillende soorten in een document met behulp van Python."
type: docs
weight: 310
url: /nl/python-net/working-with-charts/
---

Nieuw [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) de methode is toegevoegd aan de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Klasse. Dus, laten we eens kijken hoe je een eenvoudige kolom grafiek in het document in te voegen met behulp van [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) methode:

### Hoe een grafiek in te voegen

In deze sectie zullen we leren hoe we een grafiek in een document kunnen plaatsen.

### Kolomdiagram invoegen

Het volgende voorbeeld van code laat zien hoe kolomdiagram invoegen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

De code levert het volgende resultaat op:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Er zijn [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) en [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) methoden, die zijn blootgesteld aan alle mogelijke varianten van gegevensbronnen voor alle grafiektypes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

De code levert het volgende resultaat op:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Scatter invoegen Grafiek

Hieronder laat je zien hoe je een scatter grafiek invoegt.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

De code levert het volgende resultaat op:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Gebied invoegen Grafiek

Het volgende voorbeeld van code laat zien hoe je een gebiedskaart invoegt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

De code levert het volgende resultaat op:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Bellendiagram invoegen

Het volgende voorbeeld van code laat zien hoe je een bubble grafiek invoegt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

De code levert het volgende resultaat op:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Werken met grafieken via Shape.chart Object

Zodra de grafiek werd ingevoegd en gevuld met gegevens, bent u in staat om zijn uiterlijk te veranderen. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) eigenschap bevat alle grafiek gerelateerde opties beschikbaar via het publiek API.

Bijvoorbeeld, laten we veranderen [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) titel of legende gedrag:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

De code genereert de volgende resultaten:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Hoe te werken met ChartSeriesCollectie van Grafiek

Laten we kijken naar [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) verzameling. Alle grafiek series zijn beschikbaar via [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) verzameling:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

U kunt de serie één voor één verwijderen of ze allemaal wissen en indien nodig een nieuwe toevoegen. De nieuw ingevoegde grafiek heeft een aantal standaard series toegevoegd aan deze collectie. Om ze te verwijderen moet je bellen [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) methode.

## Werken met een enkele ChartSeries klasse

Hier is hoe te werken met een bepaalde serie.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Zie het onderstaande resultaat:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Allemaal single [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) standaard [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) opties, probeer de volgende code te wijzigen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Zie het onderstaande resultaat:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Hoe te werken met Single ChartDataPoint van een `ChartSeries`

Gebruik [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) je bent in staat om de opmaak van een enkel datapunt van de grafiek serie aan te passen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Zie het onderstaande resultaat:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Hoe te werken met ChartDataLabel van een enkele Grafiekserie

Gebruik [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) u in staat bent om de opmaak van een enkele gegevenslabel van de grafiek serie, zoals tonen/verbergen LegendKey, CategorieNaam, Serienaam, Waarde enz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Zie het onderstaande resultaat:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Hoe de standaardopties voor ChartDataLabels van ChartSeries definiëren

De [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) klasse definieert eigenschappen die gebruikt kunnen worden voor het instellen van standaardopties voor [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) voor Grafiek Series. Deze eigenschappen omvatten [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) enz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Zie het onderstaande resultaat:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Hoe het aantal grafiekgegevens te formatteren

Gebruik [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) u in staat bent om nummeropmaak van een enkel gegevenslabel van de grafiek te specificeren.

Het volgende voorbeeld van code laat zien hoe je een nummer van het gegevenslabel formatteert:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Eigenschappen van grafiekas instellen

Als u wilt werken met kaartas, schaalverdeling, en display units voor de waarde as, gebruik dan [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), en [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) lessen.

Het volgende voorbeeld van code laat zien hoe X- en Y-as eigenschappen te definiëren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Hoe instellen Date Tijdswaarde van de as

Het volgende voorbeeld van code laat zien hoe u datum/tijdwaarden op aseigenschappen kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Hoe nummerwaarde van de as te formatteren

Het volgende voorbeeld van code laat zien hoe het formaat van de getallen op de waardeas kan worden gewijzigd:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Hoe de grenzen van de as instellen

De [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) klasse vertegenwoordigt een minimum- of maximumgrens aan aswaarden. Bound kan worden gespecificeerd als een numerieke, datum-tijd of een speciale "auto" waarde.

Het volgende codevoorbeeld laat zien hoe je grenzen van een as kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Hoe de Interval-eenheid tussen labels instellen

Het volgende codevoorbeeld laat zien hoe u de interval-eenheid tussen labels op een as kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Hoe kaartas te verbergen

Als u de kaartas wilt tonen of verbergen, kunt u dit eenvoudig bereiken door de waarde van [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) eigendom.

Het volgende voorbeeld van code laat zien hoe de Y-as van de grafiek te verbergen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Hoe kaartlabel uitlijnen

Als u een tekstuitlijning voor multi-line labels wilt instellen, kunt u dit gewoon bereiken door de waarde van [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) eigendom.

Het volgende voorbeeld van code laat zien hoe u label uitlijning aankruist:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word richt het Chart-label standaard uit op het centrum.

{{% /alert %}}

## Hoe vul en beroerde opmaak instellen

Vul en slag opmaak kan worden ingesteld voor grafiek serie, datapunten, en markers. Om dit te doen, moet u de eigenschappen van de [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) type in de [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), en [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) klassen, evenals aliassen voor sommige eigenschappen, zoals [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), en [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) in de [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) Klasse.

Het volgende voorbeeld van code laat zien hoe seriekleur te instellen:

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

Het volgende voorbeeld van code laat zien hoe je lijnkleur en gewicht kunt instellen:

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
