---
title: Práce s grafy v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s grafy
linktitle: Práce s grafy
description: "Vytvoření a úprava grafů různých typů v dokumentu pomocí Python."
type: docs
weight: 310
url: /cs/python-net/working-with-charts/
---

Nový [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) metoda byla přidána do [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) třída. Podívejme se, jak vložit jednoduchý sloupcový graf do dokumentu pomocí [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) metoda:

### Jak vložit graf

V této části se naučíme, jak vložit graf do dokumentu.

### Vložit graf sloupce

Následující příklad kódu ukazuje, jak vložit sloupec graf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Kód produkuje následující výsledek:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Jsou. [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) a [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) metody, které byly vystaveny pokrytí všech možných variant zdrojů dat pro všechny typy grafů:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Kód produkuje následující výsledek:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Vložit rozptýlit Graf

Níže uvedený příklad ukazuje, jak vložit graf Scatter.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Kód produkuje následující výsledek:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Vložit oblast Graf

Následující příklad kódu ukazuje, jak vložit graf plochy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Kód produkuje následující výsledek:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Vložit graf bubliny

Následující příklad kódu ukazuje, jak vložit bublinový graf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Kód produkuje následující výsledek:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Práce s grafy přes Shape.chart objekt

Jakmile byl graf vložen a vyplněn daty, jste schopni změnit jeho vzhled. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) vlastnost obsahuje všechny možnosti související s mapou dostupné prostřednictvím veřejnosti API.

Například, pojďme změnit [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) chování názvu nebo legendy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Kód generuje následující výsledky:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Jak pracovat s ChartSeriesShromažďování grafu

Podívejme se na to. [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) kolekce. Všechny řady grafů jsou k dispozici přes [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) sběr:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Můžete odstranit sérii jeden po druhém nebo vymazat všechny z nich, stejně jako přidat nový v případě potřeby. Nově vložený graf má k této kolekci přidánu defaultní řadu. Chcete-li odstranit, musíte zavolat [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) metoda.

## Práce s jednou třídou grafů

Zde je, jak pracovat s konkrétní série.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Viz níže uvedený výsledek:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Všechny nezadané [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) mít výchozí [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) možnosti, zkuste prosím pomocí následujícího kódu změnit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Viz níže uvedený výsledek:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Jak pracovat s jedním grafDataPoint `ChartSeries`

Použití [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) jste schopni přizpůsobit formátování jednoho datového bodu řady grafu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Viz níže uvedený výsledek:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Jak pracovat s ChartDataLabel jedné řady grafů

Použití [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) jste schopni určit formátování jednoho datového štítku řady grafu, jako je show/hide LegendKey, CategoryName, SeriesName, Value etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Viz níže uvedený výsledek:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Jak definovat výchozí možnosti pro grafDataLabels of ChartSeries

• [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) třída definuje vlastnosti, které lze použít pro nastavení výchozích možností [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) pro Chart Series. Tyto vlastnosti zahrnují [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) atd.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Viz níže uvedený výsledek:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Jak formátovat počet znaků

Použití [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) jste schopni určit formátování čísel jednoho datového štítku grafu.

Následující příklad kódu ukazuje, jak formátovat číslo štítku:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Jak nastavit vlastnosti grafu Osa

Pokud chcete pracovat s osou grafu, škálování a zobrazování jednotek pro hodnotovou osu, použijte prosím [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), a [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) třídy.

Následující příklad kódu ukazuje, jak definovat vlastnosti osy X a Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Jak nastavit Date Časová hodnota osy

Následující příklad kódu ukazuje, jak nastavit hodnoty datumu a času na vlastnosti osy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Jak formátovat hodnotu čísla osy

Následující příklad kódu ukazuje, jak změnit formát čísel na ose hodnoty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Jak nastavit hranice osy

• [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) třída představuje minimální nebo maximální hranici hodnot osy. Hranice může být uvedena jako numerická, data-time nebo speciální "auto" hodnota.

Následující příklad kódu ukazuje, jak nastavit hranice osy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Jak nastavit mezi značkami mezilehlou jednotku

Následující příklad kódu ukazuje, jak nastavit intervalovou jednotku mezi štítky na osu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Jak skrýt grafovou osu

Pokud chcete zobrazit nebo skrýt osu grafu, můžete toho jednoduše dosáhnout nastavením hodnoty [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) majetek.

Následující příklad kódu ukazuje, jak skrýt osu Y grafu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Jak zarovnat štítek grafu

Pokud chcete nastavit nastavení textu pro víceřádkové etikety, můžete toho jednoduše dosáhnout nastavením hodnoty [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) majetek.

Následující příklad kódu ukazuje, jak zaškrtnout zarovnání štítků:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word standardně sladí graf Label s centrem.

{{% /alert %}}

## Jak nastavit formátování fill a mrtvice

Formátování výplně a zdvihu lze nastavit pro grafové řady, datové body a značky. K tomu musíte použít vlastnosti [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) typ [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), a [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) třídy, jakož i aliasy pro některé vlastnosti, jako jsou [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), a [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) v [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) třída.

Následující příklad kódu ukazuje, jak nastavit barvu série:

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

Následující příklad kódu ukazuje, jak nastavit barvu řádku a hmotnost:

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
