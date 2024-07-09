---
title: Werken met grafieken in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met grafieken
linktitle: Werken met grafieken
description: "Inleiding tot grafiek functie, hoe te maken en te manipuleren grafieken met behulp van Java."
type: docs
weight: 310
url: /nl/java/working-with-charts/
---

Het nieuwe [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) de methode is toegevoegd aan de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasse. Dus, laten we eens kijken hoe je een eenvoudige kolom grafiek in het document in te voegen met behulp van **invoegen Grafiek** methode.


## Hoe een grafiek van Scratch invoegen met behulp van Aspose.Words

In deze sectie zullen we leren hoe we een grafiek in een document kunnen plaatsen.

###  Kolomdiagram invoegen

Het volgende voorbeeld van code laat zien hoe kolomdiagram invoegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

De code levert het volgende resultaat op:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Er zijn vier verschillende overbelastingen voor de serie Voeg methode toe, die werden blootgesteld aan alle mogelijke varianten van gegevensbronnen voor alle grafiektypes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

De code levert het volgende resultaat op:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Scatter invoegen Grafiek

De volgende code voorbeeld laat zien hoe je een scatter grafiek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

De code levert het volgende resultaat op:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Gebied invoegen Grafiek

Het volgende voorbeeld van code laat zien hoe je een gebiedskaart invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

De code levert het volgende resultaat op:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Bellendiagram invoegen

Het volgende voorbeeld van code laat zien hoe je een bubble grafiek invoegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

De code levert het volgende resultaat op:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Werken met grafieken door `Shape.Chart` Object

Zodra de grafiek is ingevoegd en gevuld met gegevens, bent u in staat om zijn uiterlijk te veranderen. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) eigenschap bevat alle grafiek gerelateerde opties beschikbaar via het publiek API.

Bijvoorbeeld, laten we veranderen Grafiektitel of legendegedrag:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

De code genereert de volgende resultaten:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Hoe te werken met ChartSeriesCollectie van Grafiek

Laten we kijken naar [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) verzameling. Alle grafiek series zijn beschikbaar via de [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) verzameling, dat wil zeggen **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

U kunt de serie één voor één verwijderen of ze allemaal wissen en indien nodig een nieuwe toevoegen. De nieuw ingevoegde grafiek heeft een aantal standaard series toegevoegd aan deze collectie. Om ze te verwijderen moet u de **chart.getSeries().clear()** methode.

## Werken met Single ChartSeries Class

Hier is hoe te werken met een bepaalde serie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Zie het onderstaande resultaat:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Allemaal single [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) standaard [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opties, probeer de volgende code om ze te wijzigen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Hoe te werken met Single ChartDataPoint van een `ChartSeries`

Gebruik [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) u bent in staat om de opmaak van een enkel datapunt van de grafiek serie aan te passen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Zie het onderstaande resultaat:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Hoe te werken met ChartDataLabel van een enkele Grafiekserie

Gebruik [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) u in staat bent om de opmaak van een enkel gegevenslabel van de grafiekreeks te specificeren, zoals show/hide LegendKey, CategoryName, Serienaam, Waarde enz.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Zie het onderstaande resultaat:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Hoe kunt u standaardopties voor ChartDataLabels van ChartSeries definiëren

De [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) klasse definieert eigenschappen die gebruikt kunnen worden om standaardopties voor te stellen **ChartDataLabels** voor grafiek **Series**. Deze eigenschappen omvatten setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShow Waarde enz.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Zie het onderstaande resultaat:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Hoe formatteer ik het aantal grafiekgegevenslabel

Gebruik van de [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) eigenschap, kunt u het nummer opmaak van een enkel gegevenslabel van de grafiek.

Het volgende voorbeeld van code laat zien hoe u een nummer van het gegevenslabel kunt formatteren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Eigenschappen van grafiekas instellen

Als u wilt werken met kaartas, schaalverdeling, en display units voor de waarde as, gebruik [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), en [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) lessen.

Het volgende voorbeeld van code laat zien hoe X- en Y-as eigenschappen te definiëren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Hoe instellen DateTijdswaarde van de as

Het volgende voorbeeld van code laat zien hoe je datum/tijd waarden op as eigenschappen instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Hoe nummerwaarde van de as formatteren

Het volgende voorbeeld van code laat zien hoe je het formaat van getallen op de waardeas kunt wijzigen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Hoe de grenzen van de as instellen

De `AxisBound` klasse staat voor een minimum- of maximumgrens aan aswaarden. Bound kan worden gespecificeerd als een numerieke, datum-tijd of een speciale "auto" waarde.

Het volgende codevoorbeeld laat zien hoe je de grenzen van een as kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Hoe de interface-eenheid tussen labels instellen

Het volgende voorbeeld van code laat zien hoe u de interval-eenheid tussen labels op een as kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Hoe kaartas te verbergen

Als u de kaart as wilt tonen of verbergen, kunt u dit gewoon bereiken door de waarde van `ChartAxis.Hidden` eigendom.

Het volgende voorbeeld van code laat zien hoe je de Y-as van de grafiek kunt verbergen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Hoe kaartlabel uitlijnen

Als u een tekstuitlijning voor multi-line labels wilt instellen, kunt u dit eenvoudig bereiken door de waarde van [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) eigendom.

Het volgende voorbeeld van code laat zien hoe u label uitlijning aankruist:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word uitlijnen Label naar het centrum standaard.

{{% /alert %}}

## Hoe vul en beroerde formattering instellen

Vul en slag formatteren kan worden ingesteld voor grafiek serie, datapunten, en markers. Om dit te doen, moet u de eigenschappen van de `ChartFormat` type in de ChartSeries, ChartDataPoint, en ChartMarker klassen, evenals aliassen voor sommige eigenschappen, zoals ForeColor, BackColor, Zichtbare, en transparantie in de `Stroke` Klasse.

Het volgende voorbeeld van de code laat zien hoe u de kleur van de reeks kunt instellen:

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

Het volgende voorbeeld van code laat zien hoe je lijnkleur en gewicht instelt:

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
