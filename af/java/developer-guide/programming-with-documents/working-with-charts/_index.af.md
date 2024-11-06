---
title: Werk Met Kaarte in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Kaarte
linktitle: Werk Met Kaarte
description: "Inleiding Tot Grafiek funksie, hoe om kaarte te skep en te manipuleer met behulp van Java."
type: docs
weight: 310
url: /af/java/working-with-charts/
---

Die nuwe [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) metode is bygevoeg in die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klas. So, kom ons kyk hoe om'n eenvoudige kolomgrafiek in die dokument in te voeg met behulp van **insertChart** metode.


## Hoe Om'n Grafiek Van Nuuts Af In te Voeg met Aspose.Words

In hierdie afdeling sal ons leer hoe om'n grafiek in'n dokument in te voeg.

###  Voeg Kolomgrafiek In

Die volgende kode voorbeeld toon hoe om kolom grafiek in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Die kode lewer die volgende resultaat:

![column-chart-aspose-words-java-1](working-with-charts-7.png)

Daar is vier verskillende oorladings vir die series Add metode, wat blootgestel is om alle moontlike variante van databronne vir alle grafiek tipes te dek:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Die kode lewer die volgende resultaat:

![column-chart-aspose-words-java-2](working-with-charts-8.png)

### Voeg By Verstrooiingskaart

Die volgende kode voorbeeld toon hoe om'n verspreiding grafiek in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Die kode lewer die volgende resultaat:

![scutter-chart-aspose-words-java](working-with-charts-9.png)

### Voeg By Area Grafiek

Die volgende kode voorbeeld toon hoe om'n area grafiek in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Die kode lewer die volgende resultaat:

![area-chart-aspose-words-java](working-with-charts-10.png)

### Voeg By Borrelgrafiek

Die volgende kode voorbeeld toon hoe om'n borrel grafiek in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Die kode lewer die volgende resultaat:

![bubble-chart-aspose-words-java](working-with-charts-11.png)

## Werk Met Kaarte deur `Shape.Chart` Voorwerp

Sodra die grafiek ingevoeg en gevul is met data, kan u die voorkoms daarvan verander. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) eiendom bevat alle grafiek verwante opsies beskikbaar deur die publiek API.

Byvoorbeeld, kom ons Verander Grafiek titel of legende gedrag:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Die kode genereer die volgende resultate:

![line-chart-aspose-words-java-1](working-with-charts-1.png)

## Hoe om te Werk met ChartSeriesCollection Van Grafiek

Kom ons kyk na [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) versameling. Alle grafiekreekse is beskikbaar deur die [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) - versameling, wat **Iterable**is:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

U kan reekse een vir een verwyder of almal skoonmaak, asook'n nuwe een byvoeg indien nodig. Die nuut ingevoegde grafiek het'n paar standaardreekse by hierdie versameling gevoeg. Om hulle te verwyder, moet jy die **chart.getSeries().clear()** - metode bel.

## Werk Met Enkele ChartSeries Klas

Hier is hoe om met'n spesifieke reeks te werk.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Sien asseblief die resultaat hieronder:

![line-chart-aspose-words-java-2](working-with-charts-2.png)

Alle enkel [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) het verstek [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opsies, probeer asseblief die volgende kode om hulle te verander:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](working-with-charts-3.png)

## Hoe Om Te Werk met'n enkele ChartDataPoint van'n `ChartSeries`

Met behulp van [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) kan u die opmaak van'n enkele datapunt van die grafiekreeks aanpas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Sien asseblief die resultaat hieronder:

![line-chart-aspose-words-java-4](working-with-charts-4.png)

## Hoe om te Werk met ChartDataLabel Van'n enkele ChartSeries

Gebruik [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) jy in staat is om die formatering van'n enkele data etiket van die grafiek reeks spesifiseer, soos wys / verberg LegendKey, CategoryName, SeriesName, waarde ens:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Sien asseblief die resultaat hieronder:

![bar-chart-aspose-words-java](working-with-charts-5.png)

## Hoe Om Te Definieer Verstek Opsies vir ChartDataLabels van ChartSeries

Die [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) klas definieer eienskappe wat gebruik kan word om standaard opsies vir **ChartDataLabels** vir Grafiek **Series** te stel. Hierdie eienskappe sluit in:setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue ens:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Sien asseblief die resultaat hieronder:

![pie-chart-aspose-words-java](working-with-charts-6.png)

## Hoe Om Die Aantal Grafiekdata-Etikette Te Formateer

Deur die [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) eienskap te gebruik, kan jy die getalformatering van'n enkele data-etiket van die grafiek spesifiseer.

Die volgende kode voorbeeld toon hoe om'n nommer van die data etiket te formateer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Hoe Om Grafiek As Eienskappe Te Stel

As jy wil werk met grafiek as, skaal, en vertoon eenhede vir die waarde as, gebruik asseblief [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), en [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) klasse.

Die volgende kode voorbeeld toon hoe Om x en Y-as eienskappe te definieer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Hoe Om DateTime Waarde Van As Te Stel

Die volgende kode voorbeeld toon hoe om datum / tyd waardes te stel om as eienskappe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Hoe Om Die Nommerwaarde Van Die As Te Formateer

Die volgende kode voorbeeld toon hoe om die formaat van getalle op die waarde as te verander:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Hoe Om Grense Van As Te Stel

Die `AxisBound` klas verteenwoordig'n minimum of maksimum grens van as waardes. Gebind kan gespesifiseer word as'n numeriese, datum-tyd of'n spesiale "outomatiese" waarde.

Die volgende kode voorbeeld toon hoe om die grense van'n as stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Hoe Om Intervaleenheid Tussen Etikette Te Stel

Die volgende kode voorbeeld toon hoe om die interval eenheid tussen etikette op'n as stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Hoe Om Grafiek As Te Verberg

As jy die kaartas wil wys of wegsteek, kan jy dit eenvoudig bereik deur die waarde van `ChartAxis.Hidden` eienskap in te stel.

Die volgende kode voorbeeld toon hoe om die Y-as van die grafiek te verberg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Hoe Om Grafiek Etiket In Lyn Te Bring

As jy'n teks belyning vir multi-lyn etikette wil stel, kan jy dit eenvoudig bereik deur die waarde van [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) eiendom te stel.

Die volgende kode voorbeeld toon hoe om etiket belyning merk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word belyn Grafiek Etiket na die sentrum by verstek.

{{% /alert %}}

## Hoe Om Vul En Beroerte Formatering Stel

Vul en slag formatering kan ingestel word vir grafiek reeks, data punte, en merkers. Om dit te doen, moet jy die eienskappe van die `ChartFormat` tipe in die ChartSeries, ChartDataPoint, en ChartMarker klasse gebruik, asook aliasse vir sommige eienskappe, soos ForeColor, BackColor, Sigbaar, en Deursigtigheid in die `Stroke` klas.

Die volgende kode voorbeeld toon hoe om reeks kleur stel:

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

Die volgende kode voorbeeld toon hoe om lyn kleur en gewig stel:

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
