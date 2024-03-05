---
title: Lavorare con i grafici in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con i grafici
linktitle: Lavorare con i grafici
description: "Introduzione alla funzione Grafico, come creare e manipolare grafici utilizzando C#."
type: docs
weight: 310
url: /it/net/working-with-charts/
---

Il nuovo metodo [InsertChart](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertchart/) è stato aggiunto alla classe [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/). Vediamo quindi come inserire un semplice istogramma all'interno del documento utilizzando il metodo [InsertChart](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertchart/).

## Come inserire un grafico

In questa sezione impareremo come inserire un grafico in un documento.

### Inserisci grafico a colonne

L'esempio di codice seguente mostra come inserire un istogramma:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Il codice produce il seguente risultato:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Esistono quattro diversi sovraccarichi per il metodo Add della serie, che è stato esposto per coprire tutte le possibili varianti delle origini dati per tutti i tipi di grafico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Il codice produce il seguente risultato:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Inserisci grafico a dispersione

L'esempio di codice seguente mostra come inserire un grafico a dispersione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Il codice produce il seguente risultato:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Inserisci grafico ad area

L'esempio di codice seguente mostra come inserire un grafico ad area:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Il codice produce il seguente risultato:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Inserisci grafico a bolle

L'esempio di codice seguente mostra come inserire un grafico a bolle:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Il codice produce il seguente risultato:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Lavorare con i grafici tramite l'oggetto `Shape.Chart`

Una volta inserito e riempito di dati il grafico, puoi modificarne l'aspetto. La proprietà `Shape.Chart` contiene tutte le opzioni relative al grafico disponibili tramite il API pubblico.

Ad esempio, modifichiamo il titolo del grafico o il comportamento della legenda:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Il codice genera i seguenti risultati:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Come lavorare con ChartSeriesCollection di grafici

Diamo un'occhiata alla raccolta [ChartSeries](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartseries/). Tutte le serie di grafici sono disponibili tramite la raccolta [chart.Series](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chart/series/), che è **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Puoi rimuovere le serie una per una o cancellarle tutte e aggiungerne una nuova se necessario. Il grafico appena inserito presenta alcune serie predefinite aggiunte a questa raccolta. Per rimuoverli è necessario chiamare il metodo **grafico.Series.Clear()**.

## Lavorare con la classe ChartSeries singola

Ecco come lavorare con una serie particolare:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Tutti i singoli [ChartSeries](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartseries/) hanno opzioni [ChartDataPoint](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartdatapoint/) predefinite, prova a utilizzare il seguente codice per modificarle:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Come lavorare con il singolo ChartDataPoint di un `ChartSeries`

Utilizzando [ChartDataPoint](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartdatapoint/) puoi personalizzare la formattazione di un singolo punto dati della serie di grafici:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Come lavorare con ChartDataLabel di una singola ChartSeries

Utilizzando [ChartDataLabel](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartdatalabel/) è possibile specificare la formattazione di una singola etichetta dati della serie di grafici, come mostrare/nascondere LegendKey, CategoryName, SeriesName, Value ecc.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Si prega di vedere il risultato qui sotto:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Come definire le opzioni predefinite per ChartDataLabels di ChartSeries

La classe [ChartDataLabelCollection](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartdatalabelcollection/) definisce le proprietà che possono essere utilizzate per impostare le opzioni predefinite per **ChartDataLabels** per Chart **Series**. Queste proprietà includono ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue ecc.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Si prega di vedere il risultato qui sotto:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Come formattare il numero dell'etichetta dei dati del grafico

Utilizzando [NumberFormat](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) è possibile specificare la formattazione numerica di una singola etichetta dati del grafico.

Il seguente esempio di codice mostra come formattare un numero dell'etichetta dati:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Come impostare le proprietà dell'asse del grafico

Se desideri lavorare con l'asse del grafico, il ridimensionamento e le unità di visualizzazione per l'asse dei valori, utilizza le classi [ChartAxis](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/axisdisplayunit/) e [AxisScaling](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/axisscaling/).

Il seguente esempio di codice mostra come definire le proprietà degli assi X e Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Come impostare il valore temporale Date dell'asse

L'esempio di codice seguente mostra come impostare i valori di data/ora sulle proprietà dell'asse:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Come formattare il valore numerico dell'asse

L'esempio di codice seguente mostra come modificare il formato dei numeri sull'asse dei valori:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Come impostare i limiti dell'asse

La classe `AxisBound` rappresenta un limite minimo o massimo dei valori degli assi. Il limite può essere specificato come valore numerico, data-ora o speciale "automatico".

L'esempio di codice seguente mostra come impostare i limiti di un asse:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Come impostare l'unità di intervallo tra le etichette

L'esempio di codice seguente mostra come impostare l'unità di intervallo tra le etichette su un asse:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Come nascondere l'asse del grafico

Se vuoi mostrare o nascondere l'asse del grafico, puoi semplicemente farlo impostando il valore della proprietà `ChartAxis.Hidden`.

L'esempio di codice seguente mostra come nascondere l'asse Y del grafico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Come allineare l'etichetta del grafico

Se desideri impostare un allineamento del testo per le etichette su più righe, puoi semplicemente farlo impostando il valore della proprietà [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Allineamento**.

L'esempio di codice seguente mostra come selezionare l'allineamento dell'etichetta:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word allinea l'etichetta del grafico al centro per impostazione predefinita.

{{% /alert %}}

## Come impostare la formattazione di riempimento e tratto

È possibile impostare la formattazione di riempimento e tratto per serie di grafici, punti dati e indicatori. Per fare ciò, è necessario utilizzare le proprietà del tipo **ChartFormat** nelle classi **ChartSeries**, **ChartDataPoint** e **ChartMarker**, nonché gli alias per alcune proprietà, come ForeColor, BackColor, Visible e Transparency nella classe `Stroke`.

L'esempio di codice seguente mostra come impostare il colore della serie:

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

L'esempio di codice seguente mostra come impostare il colore e lo spessore della linea:

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
