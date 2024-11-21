---
title: Práce s grafy v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s grafy
linktitle: Práce s grafy
description: "Úvod do funkce Graf, jak vytvářet a manipulovat grafy pomocí C#."
type: docs
weight: 310
url: /cs/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Nový [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) metoda byla přidána do [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) třída. Podívejme se, jak vložit jednoduchý sloupcový graf do dokumentu pomocí [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) metoda.

## Jak vložit graf

V této části se naučíme, jak vložit graf do dokumentu.

### Vložit graf sloupce

Následující příklad kódu ukazuje, jak vložit sloupec graf:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Kód produkuje následující výsledek:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Existují čtyři různé přetížení pro série Přidat metodu, která byla vystavena pokrytí všech možných variant zdrojů dat pro všechny typy grafů:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Kód produkuje následující výsledek:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Vložit rozptýlit Graf

Následující příklad kódu ukazuje, jak vložit graf Scatter:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Kód produkuje následující výsledek:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Vložit oblast Graf

Následující příklad kódu ukazuje, jak vložit graf plochy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Kód produkuje následující výsledek:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Vložit graf bubliny

Následující příklad kódu ukazuje, jak vložit bublinový graf:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Kód produkuje následující výsledek:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Práce s grafy přes `Shape.Chart` Předmět

Jakmile byl graf vložen a vyplněn daty, jste schopni změnit jeho vzhled. `Shape.Chart` vlastnost obsahuje všechny možnosti související s mapou dostupné prostřednictvím veřejnosti API.

Například, pojďme změnit Titulek grafu nebo legendární chování:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Kód generuje následující výsledky:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Jak pracovat s ChartSeriesShromažďování grafu

Podívejme se na to. [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) kolekce. Všechny řady grafů jsou k dispozici přes [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) sběr, který je **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Můžete odstranit sérii jeden po druhém nebo vymazat všechny z nich, stejně jako přidat nový v případě potřeby. Nově vložený graf má k této kolekci přidánu defaultní řadu. Chcete-li odstranit, musíte zavolat **graf.Series.Clear()** metoda.

## Práce s jednou třídou grafů

Zde je, jak pracovat s konkrétní sérii:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Viz níže uvedený výsledek:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Všechny nezadané [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) mít výchozí [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) možnosti, zkuste prosím pomocí následujícího kódu změnit:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Viz níže uvedený výsledek:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Jak pracovat s jedním grafDataPoint `ChartSeries`

Použití [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) jste schopni přizpůsobit formátování jednoho datového bodu řady grafu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Viz níže uvedený výsledek:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Jak pracovat s ChartDataLabel jedné řady grafů

Použití [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) jste schopni určit formátování jednoho datového štítku série grafu, jako je show/hide LegendKey, CategoryName, SeriesName, Hodnota atd.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Viz níže uvedený výsledek:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Jak definovat výchozí možnosti pro grafDataLabels of ChartSeries

• [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) třída definuje vlastnosti, které lze použít pro nastavení výchozích možností **ChartDataLabels** pro graf **Series**. Tyto vlastnosti zahrnují ShowCategoryName, ShowBubbleSize, ShowProcentage, ShowSeriesName, Show Hodnota atd.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Viz níže uvedený výsledek:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Jak formátovat počet znaků

Použití [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) jste schopni určit formátování čísel jednoho datového štítku grafu.

Následující příklad kódu ukazuje, jak formátovat číslo štítku:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Jak nastavit vlastnosti grafu Osa

Pokud chcete pracovat s osou grafu, škálování a zobrazování jednotek pro hodnotovou osu, použijte prosím [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), a [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) třídy.

Následující příklad kódu ukazuje, jak definovat vlastnosti osy X a Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Jak nastavit Date Časová hodnota osy

Následující příklad kódu ukazuje, jak nastavit hodnoty datumu a času na vlastnosti osy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Jak formátovat hodnotu čísla osy

Následující příklad kódu ukazuje, jak změnit formát čísel na ose hodnoty:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Jak nastavit hranice osy

• `AxisBound` třída představuje minimální nebo maximální hranici hodnot osy. Hranice může být uvedena jako numerická, data-time nebo speciální "auto" hodnota.

Následující příklad kódu ukazuje, jak nastavit hranice osy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Jak nastavit mezi značkami mezilehlou jednotku

Následující příklad kódu ukazuje, jak nastavit intervalovou jednotku mezi štítky na osu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Jak skrýt grafovou osu

Pokud chcete zobrazit nebo skrýt osu grafu, můžete toho jednoduše dosáhnout nastavením hodnoty `ChartAxis.Hidden` majetek.

Následující příklad kódu ukazuje, jak skrýt osu Y grafu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Jak zarovnat štítek grafu

Pokud chcete nastavit nastavení textu pro víceřádkové etikety, můžete toho jednoduše dosáhnout nastavením hodnoty [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Zarovnání** majetek.

Následující příklad kódu ukazuje, jak zaškrtnout zarovnání štítků:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word Zarovnání Nálepka do centra ve výchozím nastavení.

{{% /alert %}}

## Jak nastavit formátování fill a mrtvice

Formátování výplně a zdvihu lze nastavit pro grafové řady, datové body a značky. K tomu musíte použít vlastnosti **ChartFormat** typ **ChartSeries**, **ChartDataPoint**, a **ChartMarker** třídy, jakož i aliasy pro některé vlastnosti, jako ForeColor, BackColor, Viditelné, a transparentnost v `Stroke` třída.

Následující příklad kódu ukazuje, jak nastavit barvu série:

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Column, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Create category names array.
string[] categories = new string[] { "AW Category 1", "AW Category 2" };

// Adding new series. Value and category arrays must be the same size.
ChartSeries series1 = seriesColl.Add("AW Series 1", categories, new double[] { 1, 2 });
ChartSeries series2 = seriesColl.Add("AW Series 2", categories, new double[] { 3, 4 });
ChartSeries series3 = seriesColl.Add("AW Series 3", categories, new double[] { 5, 6 });

// Set series color.
series1.Format.Fill.ForeColor = Color.Red;
series2.Format.Fill.ForeColor = Color.Yellow;
series3.Format.Fill.ForeColor = Color.Blue;

doc.Save(dir + "ColumnColor.docx");
{{< /highlight >}}

Následující příklad kódu ukazuje, jak nastavit barvu řádku a hmotnost:

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Line, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 },
	new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 },
	new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save(dir + "LineColorAndWeight.docx");
{{< /highlight >}}
