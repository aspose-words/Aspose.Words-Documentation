---
title: Práce s grafy v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s grafy
linktitle: Práce s grafy
description: "Úvod do funkce Graf, jak vytvářet a manipulovat grafy pomocí Java."
type: docs
weight: 310
url: /cs/java/working-with-charts/
---

Nový [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) byla přidána do [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) třída. Podívejme se, jak vložit jednoduchý sloupcový graf do dokumentu pomocí **vložit Graf** metoda.


## Jak vložit graf ze Škrábance pomocí Aspose.Words

V této části se naučíme, jak vložit graf do dokumentu.

###  Vložit graf sloupce

Následující příklad kódu ukazuje, jak vložit sloupec graf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Kód produkuje následující výsledek:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Existují čtyři různé přetížení pro sérii Přidat metodu, která byla vystavena pokrytí všech možných variant zdrojů dat pro všechny typy grafů:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Kód produkuje následující výsledek:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Vložit rozptyl Graf

Následující příklad kódu ukazuje, jak vložit graf Scatter:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Kód produkuje následující výsledek:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Vložit oblast Graf

Následující příklad kódu ukazuje, jak vložit graf plochy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Kód produkuje následující výsledek:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Vložit graf bubliny

Následující příklad kódu ukazuje, jak vložit bublinový graf:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Kód produkuje následující výsledek:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Práce s grafy přes `Shape.Chart` Předmět

Jakmile byl graf vložen a vyplněn daty, jste schopni změnit jeho vzhled. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) vlastnost obsahuje všechny možnosti související s grafem dostupné prostřednictvím veřejnosti API.

Například, pojďme změnit Titulek nebo legenda chování:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Kód generuje následující výsledky:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Jak pracovat s ChartSeriesSběr grafu

Podívejme se na to. [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) kolekce. Všechny řady grafů jsou k dispozici prostřednictvím [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) sběr, který je **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Můžete odstranit sérii jedna po jedné nebo vymazat všechny z nich, stejně jako přidat nový v případě potřeby. Nově vložená tabulka má k této kolekci přidány některé výchozí řady. Chcete-li odstranit, musíte zavolat **graf.getSeries().clear()** metoda.

## Práce s jednou třídou grafů

Zde je, jak pracovat s konkrétní série.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Viz níže uvedený výsledek:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Všechny samostatné [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) mají výchozí [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) možnosti, zkuste prosím použít následující kód pro jejich změnu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Jak pracovat s jedním grafDataPoint `ChartSeries`

Použití [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) jste schopni přizpůsobit formátování jednoho datového bodu řady grafu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Viz níže uvedený výsledek:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Jak pracovat s grafDataLabel jedné řady grafů

Použití [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) jste schopni určit formátování jednoho datového štítku série grafu, jako je show/hide LegendKey, CategoryName, SeriesName, Hodnota atd.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Viz níže uvedený výsledek:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Jak definovat výchozí možnosti pro ChartDataLabels of ChartSeries

The [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) třída definuje vlastnosti, které lze použít pro nastavení výchozích možností **ChartDataLabels** pro graf **Series**. Tyto vlastnosti zahrnují setShowCategoryName, setShowBubbleSize, setShowProcentage, setShowSeriesName, setShowShow Hodnota atd.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Viz níže uvedený výsledek:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Jak formátovat počet znaků

Použití [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) vlastnost, můžete zadat číslo formátování jednoho datového štítku grafu.

Následující příklad kódu ukazuje, jak formátovat číslo štítku:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Jak nastavit vlastnosti grafu Osa

Pokud chcete pracovat s osou grafu, škálováním a zobrazením jednotek pro osu hodnoty, použijte prosím [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), a [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) třídy.

Následující příklad kódu ukazuje, jak definovat vlastnosti osy X a Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Jak nastavit DateČasová hodnota osy

Následující příklad kódu ukazuje, jak nastavit hodnoty datumu a času na vlastnosti osy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Jak formátovat hodnotu čísla osy

Následující příklad kódu ukazuje, jak změnit formát čísel na ose hodnoty:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Jak nastavit hranice osy

The `AxisBound` třída představuje minimální nebo maximální hranici hodnot osy. Hranice může být specifikována jako numerická, data-time nebo speciální "auto" hodnota.

Následující příklad kódu ukazuje, jak nastavit hranice osy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Jak nastavit mezi značkami mezilehlou jednotku

Následující příklad kódu ukazuje, jak nastavit intervalovou jednotku mezi štítky na osu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Jak skrýt grafovou osu

Pokud chcete zobrazit nebo skrýt osu grafu, můžete jednoduše dosáhnout nastavením hodnoty `ChartAxis.Hidden` majetek.

Následující příklad kódu ukazuje, jak skrýt osu Y grafu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Jak zarovnat štítek grafu

Pokud chcete nastavit nastavení textu pro víceřádkové etikety, můžete toho jednoduše dosáhnout nastavením hodnoty [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) majetek.

Následující příklad kódu ukazuje, jak zaškrtnout zarovnání štítků:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word Zarovnání Nálepka do středu ve výchozím nastavení.

{{% /alert %}}

## Jak nastavit formátování fill a mrtvice

Formátování výplně a zdvihu lze nastavit pro grafové řady, datové body a značky. K tomu je třeba použít vlastnosti `ChartFormat` type in the ChartSeries, ChartDataPoint, and ChartMarker class, jakož i aliasy pro některé vlastnosti, jako je ForeColor, BackColor, Visible, a transparentnost v `Stroke` třída.

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

doc.Save("ColumnColor.docx");
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
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}
