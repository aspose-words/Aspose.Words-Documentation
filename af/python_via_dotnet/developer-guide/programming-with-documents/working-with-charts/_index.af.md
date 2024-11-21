---
title: Werk Met Kaarte in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Kaarte
linktitle: Werk Met Kaarte
description: "Skep en verander kaarte van verskillende tipes in'n dokument met behulp van Python."
type: docs
weight: 310
url: /af/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Nuwe [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) metode is bygevoeg in die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klas. So, kom ons kyk hoe om'n eenvoudige kolom grafiek in die dokument te voeg met behulp van [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) metode:

### Hoe Om'n Grafiek In Te Voeg

In hierdie afdeling sal ons leer hoe om'n grafiek in'n dokument in te voeg.

### Voeg Kolomgrafiek In

Die volgende kode voorbeeld toon hoe om kolom grafiek in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Die kode lewer die volgende resultaat:

![create-column-chart-aspose-words-net](working-with-charts-1.png)


Daar is [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) en [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) metodes, wat blootgestel is om alle moontlike variante van databronne vir alle grafiek tipes te dek:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Die kode lewer die volgende resultaat:

![create-column-chart-from-datasource-aspose-words-net](working-with-charts-2.png)

### Voeg By Verstrooiingskaart

Hieronder voorbeeld toon hoe om'n verstrooiing grafiek in te voeg.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Die kode lewer die volgende resultaat:

![scatter-chart-aspose-words-net](working-with-charts-3.png)

### Voeg By Area Grafiek

Die volgende kode voorbeeld toon hoe om'n area grafiek in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Die kode lewer die volgende resultaat:

![area-chart-aspose-words-net](working-with-charts-4.png)

### Voeg By Borrelgrafiek

Die volgende kode voorbeeld toon hoe om'n borrel grafiek in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Die kode lewer die volgende resultaat:

![bubble-chart-aspose-words-net](working-with-charts-5.png)

## Werk Met Kaarte deur Vorm.kaart Voorwerp

Sodra die grafiek ingevoeg en gevul is met data, kan u die voorkoms daarvan verander. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) eiendom bevat alle grafiek verwante opsies beskikbaar deur die publiek API.

Byvoorbeeld, kom ons verander [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) titel of legende gedrag:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Die kode genereer die volgende resultate:

![line-chart-aspose-words-net](working-with-charts-6.png)

## Hoe om te Werk met ChartSeriesCollection Van Grafiek

Kom ons kyk na [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) versameling. Alle grafiekreekse is beskikbaar deur [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) versameling:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

U kan reekse een vir een verwyder of almal skoonmaak, asook'n nuwe een byvoeg indien nodig. Die nuut ingevoegde grafiek het'n paar standaardreekse by hierdie versameling gevoeg. Om hulle te verwyder moet jy [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) metode bel.

## Werk Met Enkele ChartSeries Klas

Hier is hoe om met'n spesifieke reeks te werk.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Sien asseblief die resultaat hieronder:

![line-chart-chartseries-aspose-words-net](working-with-charts-7.png)


Alle enkel [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) het verstek [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) opsies, probeer asseblief die volgende kode gebruik om hulle te verander:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Sien asseblief die resultaat hieronder:

![line-chart-chartdatapoint-aspose-words-net](working-with-charts-8.png)

## Hoe Om Te Werk met'n enkele ChartDataPoint van'n `ChartSeries`

Met behulp van [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) kan u die opmaak van'n enkele datapunt van die grafiekreeks aanpas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Sien asseblief die resultaat hieronder:

![line-chart-datapoint-aspose-words-net](working-with-charts-9.png)

## Hoe om te Werk met ChartDataLabel Van'n enkele ChartSeries

Gebruik [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) jy in staat is om die formatering van'n enkele data etiket van die grafiek reeks spesifiseer, soos wys / verberg LegendKey, CategoryName, SeriesName, Waarde ens.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Sien asseblief die resultaat hieronder:

![bar-chart-aspose-words-net](working-with-charts-10.png)

## Hoe Om Te Definieer Verstek Opsies vir ChartDataLabels van ChartSeries

Die [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) klas definieer eienskappe wat gebruik kan word om standaard opsies vir [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) vir Grafiek Reeks stel. Hierdie eienskappe sluit in:[show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) en so aan.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Sien asseblief die resultaat hieronder:

![pie-chart-aspose-words-net](working-with-charts-11.png)

## Hoe Om Die Aantal Grafiekdata-Etikette Te Formateer

Met behulp van [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) kan u die nommerformatering van'n enkele data-etiket van die grafiek spesifiseer.

Die volgende kode voorbeeld toon hoe om'n nommer van die data etiket te formateer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Hoe Om Grafiek As Eienskappe Te Stel

As jy wil werk met grafiek as, skaal, en vertoon eenhede vir die waarde as, gebruik asseblief [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), en [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) klasse.

Die volgende kode voorbeeld toon hoe Om x en Y-as eienskappe te definieer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Hoe Om Datum Tyd Waarde Van As Stel

Die volgende kode voorbeeld toon hoe om datum / tyd waardes te stel om as eienskappe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Hoe Om Die Nommerwaarde Van Die As Te Formateer

Die volgende kode voorbeeld toon hoe om die formaat van getalle op die waarde as te verander:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Hoe Om Grense Van As Te Stel

Die [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) klas verteenwoordig'n minimum of maksimum grens van as waardes. Gebind kan gespesifiseer word as'n numeriese, datum-tyd of'n spesiale "outomatiese" waarde.

Die volgende kode voorbeeld toon hoe om grense van'n as stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Hoe Om Intervaleenheid Tussen Etikette Te Stel

Die volgende kode voorbeeld toon hoe om die interval eenheid tussen etikette op'n as stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Hoe Om Grafiek As Te Verberg

As jy die kaartas wil wys of wegsteek, kan jy dit eenvoudig bereik deur die waarde van [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) eienskap in te stel.

Die volgende kode voorbeeld toon hoe om die Y-as van die grafiek te verberg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Hoe Om Grafiek Etiket In Lyn Te Bring

As jy'n teks belyning vir multi-lyn etikette wil stel, kan jy dit eenvoudig bereik deur die waarde van [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) eiendom te stel.

Die volgende kode voorbeeld toon hoe om etiket belyning merk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Woord pas Grafiek Etiket aan die middel by verstek.

{{% /alert %}}

## Hoe Om Vul En Beroerte Formatering Stel

Vul en slag formatering kan ingestel word vir grafiek reeks, data punte, en merkers. Om dit te doen, moet jy die eienskappe van die [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) tipe in die [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), en [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) klasse gebruik, asook aliasse vir sommige eienskappe, soos [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), en [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) in die [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) klas.

Die volgende kode voorbeeld toon hoe om reeks kleur stel:

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

Die volgende kode voorbeeld toon hoe om lyn kleur en gewig stel:

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
