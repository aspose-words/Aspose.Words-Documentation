---
title: Werken met grafieken in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met grafieken
linktitle: Werken met grafieken
description: "Inleiding tot grafiek functie, hoe te maken en te manipuleren grafieken met behulp van C#."
type: docs
weight: 310
url: /nl/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Nieuw [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) de methode is toegevoegd aan de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Klasse. Dus, laten we eens kijken hoe je een eenvoudige kolom grafiek in het document met behulp van de [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) methode.

## Hoe een grafiek in te voegen

In deze sectie zullen we leren hoe we een grafiek in een document kunnen plaatsen.

### Kolomdiagram invoegen

Het volgende voorbeeld van code laat zien hoe kolomdiagram invoegen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

De code levert het volgende resultaat op:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Er zijn vier verschillende overbelastingen voor series Voeg de methode toe, die is blootgesteld aan alle mogelijke varianten van gegevensbronnen voor alle grafiektypes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

De code levert het volgende resultaat op:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Scatter invoegen Grafiek

Het volgende voorbeeld van code laat zien hoe je een scatter grafiek invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

De code levert het volgende resultaat op:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Gebied invoegen Grafiek

Het volgende voorbeeld van code laat zien hoe je een gebiedskaart invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

De code levert het volgende resultaat op:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Bellendiagram invoegen

Het volgende voorbeeld van code laat zien hoe je een bubble grafiek invoegt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

De code levert het volgende resultaat op:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Werken met grafieken door `Shape.Chart` Doel

Zodra de grafiek werd ingevoegd en gevuld met gegevens, bent u in staat om zijn uiterlijk te veranderen. `Shape.Chart` eigenschap bevat alle grafiek gerelateerde opties beschikbaar via het publiek API.

Bijvoorbeeld, laten we veranderen Grafiek titel of legende gedrag:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

De code genereert de volgende resultaten:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Hoe te werken met ChartSeriesCollectie van Grafiek

Laten we kijken naar [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) verzameling. Alle grafiek series zijn beschikbaar via [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) verzameling, dat wil zeggen **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

U kunt de serie één voor één verwijderen of ze allemaal wissen en indien nodig een nieuwe toevoegen. De nieuw ingevoegde grafiek heeft een aantal standaard series toegevoegd aan deze collectie. Om ze te verwijderen moet u de **grafiek.Series.Clear()** methode.

## Werken met een enkele ChartSeries klasse

Hier is hoe te werken met een bepaalde serie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Zie het onderstaande resultaat:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Allemaal single [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) standaard [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) opties, probeer de volgende code te wijzigen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Zie het onderstaande resultaat:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Hoe te werken met Single ChartDataPoint van een `ChartSeries`

Gebruik [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) je bent in staat om de opmaak van een enkel datapunt van de grafiek serie aan te passen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Zie het onderstaande resultaat:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Hoe te werken met ChartDataLabel van een enkele Grafiekserie

Gebruik [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) u in staat bent om de opmaak van een enkele gegevenslabel van de grafiek serie te specificeren, zoals show/hide LegendKey, CategoryName, SeriesName, Waarde enz.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Zie het onderstaande resultaat:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Hoe de standaardopties voor ChartDataLabels van ChartSeries definiëren

De [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) klasse definieert eigenschappen die gebruikt kunnen worden voor het instellen van standaardopties voor **ChartDataLabels** voor grafiek **Series**. Deze eigenschappen omvatten ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesNaam, Toon Waarde enz.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Zie het onderstaande resultaat:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Hoe het aantal grafiekgegevens te formatteren

Gebruik [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) u in staat bent om nummeropmaak van een enkel gegevenslabel van de grafiek te specificeren.

Het volgende voorbeeld van code laat zien hoe je een nummer van het gegevenslabel formatteert:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Eigenschappen van grafiekas instellen

Als u wilt werken met kaartas, schaalverdeling, en display units voor de waarde as, gebruik dan [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), en [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) lessen.

Het volgende voorbeeld van code laat zien hoe X- en Y-as eigenschappen te definiëren:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Hoe instellen Date Tijdswaarde van de as

Het volgende voorbeeld van code laat zien hoe u datum/tijdwaarden op aseigenschappen kunt instellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Hoe nummerwaarde van de as te formatteren

Het volgende voorbeeld van code laat zien hoe het formaat van de getallen op de waardeas kan worden gewijzigd:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Hoe de grenzen van de as instellen

De `AxisBound` klasse vertegenwoordigt een minimum- of maximumgrens aan aswaarden. Bound kan worden gespecificeerd als een numerieke, datum-tijd of een speciale "auto" waarde.

Het volgende codevoorbeeld laat zien hoe je grenzen van een as kunt instellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Hoe de Interval-eenheid tussen labels instellen

Het volgende codevoorbeeld laat zien hoe u de interval-eenheid tussen labels op een as kunt instellen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Hoe kaartas te verbergen

Als u de kaartas wilt tonen of verbergen, kunt u dit eenvoudig bereiken door de waarde van `ChartAxis.Hidden` eigendom.

Het volgende voorbeeld van code laat zien hoe de Y-as van de grafiek te verbergen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Hoe kaartlabel uitlijnen

Als u een tekstuitlijning voor multi-line labels wilt instellen, kunt u dit eenvoudig bereiken door de waarde van de [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Uitlijning** eigendom.

Het volgende voorbeeld van code laat zien hoe u label uitlijning aankruist:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word uitlijningen Label naar het midden standaard.

{{% /alert %}}

## Hoe vul en beroerde opmaak instellen

Vul en slag opmaak kan worden ingesteld voor grafiek serie, datapunten, en markers. Om dit te doen, moet u de eigenschappen van de **ChartFormat** type in de **ChartSeries**, **ChartDataPoint**, en **ChartMarker** klassen, evenals aliassen voor sommige eigenschappen, zoals ForeColor, BackColor, Visible, en Transparantie in de `Stroke` Klasse.

Het volgende voorbeeld van code laat zien hoe seriekleur te instellen:

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

Het volgende voorbeeld van code laat zien hoe je lijnkleur en gewicht kunt instellen:

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
