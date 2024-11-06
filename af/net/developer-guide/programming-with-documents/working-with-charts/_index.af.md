---
title: Werk Met Kaarte in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Kaarte
linktitle: Werk Met Kaarte
description: "Inleiding Tot Grafiek funksie, hoe om kaarte te skep en te manipuleer met behulp van C#."
type: docs
weight: 310
url: /af/net/working-with-charts/
---

Nuwe [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) metode is bygevoeg in die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas. So, kom ons kyk hoe om'n eenvoudige kolomgrafiek in die dokument in te voeg met behulp van die [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) metode.

## Hoe Om'n Grafiek In Te Voeg

In hierdie afdeling sal ons leer hoe om'n grafiek in'n dokument in te voeg.

### Voeg Kolomgrafiek In

Die volgende kode voorbeeld toon hoe om kolom grafiek in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Die kode lewer die volgende resultaat:

![create-column-chart-aspose-words-net](working-with-charts-1.png)


Daar is vier verskillende oorladings vir series Add metode, wat blootgestel is om alle moontlike variante van databronne vir alle grafiek tipes te dek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Die kode lewer die volgende resultaat:

![create-column-chart-from-datasource-aspose-words-net](working-with-charts-2.png)

### Voeg By Verstrooiingskaart

Die volgende kode voorbeeld toon hoe om'n verspreiding grafiek in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Die kode lewer die volgende resultaat:

![scatter-chart-aspose-words-net](working-with-charts-3.png)

### Voeg By Area Grafiek

Die volgende kode voorbeeld toon hoe om'n area grafiek in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Die kode lewer die volgende resultaat:

![area-chart-aspose-words-net](working-with-charts-4.png)

### Voeg By Borrelgrafiek

Die volgende kode voorbeeld toon hoe om'n borrel grafiek in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Die kode lewer die volgende resultaat:

![bubble-chart-aspose-words-net](working-with-charts-5.png)

## Werk Met Kaarte deur `Shape.Chart` Voorwerp

Sodra die grafiek ingevoeg en gevul is met data, kan u die voorkoms daarvan verander. `Shape.Chart` eiendom bevat alle grafiek verwante opsies beskikbaar deur die publiek API.

Byvoorbeeld, kom ons Verander Grafiek titel of legende gedrag:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Die kode genereer die volgende resultate:

![line-chart-aspose-words-net](working-with-charts-6.png)

## Hoe om te Werk met ChartSeriesCollection Van Grafiek

Kom ons kyk na [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) versameling. Alle grafiekreekse is beskikbaar deur [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) versameling, wat **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

U kan reekse een vir een verwyder of almal skoonmaak, asook'n nuwe een byvoeg indien nodig. Die nuut ingevoegde grafiek het'n paar standaardreekse by hierdie versameling gevoeg. Om hulle te verwyder, moet jy die **chart.Series.Clear()** - metode bel.

## Werk Met Enkele ChartSeries Klas

Hier is hoe om te werk met'n spesifieke reeks:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Sien asseblief die resultaat hieronder:

![line-chart-chartseries-aspose-words-net](working-with-charts-7.png)


Alle enkel [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) het verstek [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) opsies, probeer asseblief die volgende kode gebruik om hulle te verander:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Sien asseblief die resultaat hieronder:

![line-chart-chartdatapoint-aspose-words-net](working-with-charts-8.png)

## Hoe Om Te Werk met'n enkele ChartDataPoint van'n `ChartSeries`

Met behulp van [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) kan u die opmaak van'n enkele datapunt van die grafiekreeks aanpas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Sien asseblief die resultaat hieronder:

![line-chart-datapoint-aspose-words-net](working-with-charts-9.png)

## Hoe om te Werk met ChartDataLabel Van'n enkele ChartSeries

Gebruik [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) jy in staat is om die formatering van'n enkele data etiket van die grafiek reeks spesifiseer, soos wys / verberg LegendKey, CategoryName, SeriesName, waarde ens:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Sien asseblief die resultaat hieronder:

![bar-chart-aspose-words-net](working-with-charts-10.png)

## Hoe Om Te Definieer Verstek Opsies vir ChartDataLabels van ChartSeries

Die [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) klas definieer eienskappe wat gebruik kan word om standaard opsies vir **ChartDataLabels** vir Grafiek **Series** te stel. Hierdie eienskappe sluit in:ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue ens:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Sien asseblief die resultaat hieronder:

![pie-chart-aspose-words-net](working-with-charts-11.png)

## Hoe Om Die Aantal Grafiekdata-Etikette Te Formateer

Met behulp van [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) kan u die nommerformatering van'n enkele data-etiket van die grafiek spesifiseer.

Die volgende kode voorbeeld toon hoe om'n nommer van die data etiket te formateer:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Hoe Om Grafiek As Eienskappe Te Stel

As jy wil werk met grafiek as, skaal, en vertoon eenhede vir die waarde as, gebruik asseblief [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), en [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) klasse.

Die volgende kode voorbeeld toon hoe Om x en Y-as eienskappe te definieer:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Hoe Om Datum Tyd Waarde Van As Stel

Die volgende kode voorbeeld toon hoe om datum / tyd waardes te stel om as eienskappe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Hoe Om Die Nommerwaarde Van Die As Te Formateer

Die volgende kode voorbeeld toon hoe om die formaat van getalle op die waarde as te verander:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Hoe Om Grense Van As Te Stel

Die `AxisBound` klas verteenwoordig'n minimum of maksimum grens van as waardes. Gebind kan gespesifiseer word as'n numeriese, datum-tyd of'n spesiale "outomatiese" waarde.

Die volgende kode voorbeeld toon hoe om grense van'n as stel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Hoe Om Intervaleenheid Tussen Etikette Te Stel

Die volgende kode voorbeeld toon hoe om die interval eenheid tussen etikette op'n as stel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Hoe Om Grafiek As Te Verberg

As jy die kaartas wil wys of wegsteek, kan jy dit eenvoudig bereik deur die waarde van `ChartAxis.Hidden` eienskap in te stel.

Die volgende kode voorbeeld toon hoe om die Y-as van die grafiek te verberg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Hoe Om Grafiek Etiket In Lyn Te Bring

As jy'n teks belyning vir multi-lyn etikette wil stel, kan jy dit eenvoudig bereik deur die waarde van die [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Alignment** eienskap te stel.

Die volgende kode voorbeeld toon hoe om etiket belyning merk:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word pas Grafiek Etiket aan die middel by verstek.

{{% /alert %}}

## Hoe Om Vul En Beroerte Formatering Stel

Vul en slag formatering kan ingestel word vir grafiek reeks, data punte, en merkers. Om dit te doen, moet jy die eienskappe van die **ChartFormat** tipe in die **ChartSeries**, **ChartDataPoint**, en **ChartMarker** klasse gebruik, asook aliasse vir sommige eienskappe, soos ForeColor, BackColor, Sigbaar, en Deursigtigheid in die `Stroke` klas.

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

doc.Save(dir + "ColumnColor.docx");
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
