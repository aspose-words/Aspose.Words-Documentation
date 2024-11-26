---
title: Lavorare con i grafici in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i grafici
linktitle: Lavorare con i grafici
description: "Introduzione alla funzione Grafico, come creare e manipolare grafici utilizzando Java."
type: docs
weight: 310
url: /it/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Il nuovo metodo [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) è stato aggiunto alla classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Quindi, vediamo come inserire un semplice istogramma nel documento usando il metodo **insertChart**.


## Come inserire un grafico da zero usando Aspose.Words

In questa sezione impareremo come inserire un grafico in un documento.

###  Inserisci istogramma

Il seguente esempio di codice mostra come inserire istogramma:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Il codice produce il seguente risultato:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Esistono quattro diversi sovraccarichi per il metodo Add series, che sono stati esposti per coprire tutte le possibili varianti di origini dati per tutti i tipi di grafico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Il codice produce il seguente risultato:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Inserisci grafico a dispersione

Il seguente esempio di codice mostra come inserire un grafico a dispersione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Il codice produce il seguente risultato:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Inserisci grafico ad area

Il seguente esempio di codice mostra come inserire un grafico ad area:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Il codice produce il seguente risultato:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Inserisci grafico a bolle

Il seguente esempio di codice mostra come inserire un grafico a bolle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Il codice produce il seguente risultato:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Lavorare con i grafici tramite l'oggetto `Shape.Chart`

Una volta che il grafico è stato inserito e riempito con i dati, è possibile modificarne l'aspetto. La proprietà [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) contiene tutte le opzioni relative al grafico disponibili tramite public API.

Ad esempio, cambiamo il titolo del grafico o il comportamento della legenda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Il codice genera i seguenti risultati:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Come lavorare con ChartSeriesCollection del grafico

Diamo un'occhiata alla collezione [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/). Tutte le serie di grafici sono disponibili attraverso la raccolta [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), che è **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

È possibile rimuovere le serie una per una o cancellarle tutte e aggiungerne una nuova, se necessario. Il grafico appena inserito ha alcune serie predefinite aggiunte a questa raccolta. Per rimuoverli è necessario chiamare il metodo **chart.getSeries().clear()**.

## Lavorare con una singola classe ChartSeries

Ecco come lavorare con una serie particolare.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Tutti i singoli [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) hanno opzioni predefinite [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), prova a utilizzare il seguente codice per modificarli:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Come lavorare con un singolo ChartDataPoint di un `ChartSeries`

Utilizzando [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) è possibile personalizzare la formattazione di un singolo punto dati della serie di grafici:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Come lavorare con ChartDataLabel di un singolo ChartSeries

Utilizzando [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) è possibile specificare la formattazione di una singola etichetta di dati della serie di grafici, ad esempio mostra / nascondi LegendKey, CategoryName, SeriesName, Valore ecc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Si prega di vedere il risultato qui sotto:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Come definire le opzioni predefinite per ChartDataLabels di ChartSeries

La classe [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) definisce le proprietà che possono essere utilizzate per impostare le opzioni predefinite per **ChartDataLabels** per il grafico **Series**. Queste proprietà includono setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue ecc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Si prega di vedere il risultato qui sotto:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Come formattare il numero di etichetta dei dati del grafico

Utilizzando la proprietà [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), è possibile specificare la formattazione numerica di una singola etichetta dati del grafico.

L'esempio di codice seguente mostra come formattare un numero di etichetta dati:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Come impostare le proprietà dell'asse grafico

Se si desidera lavorare con l'asse grafico, il ridimensionamento e le unità di visualizzazione per l'asse dei valori, utilizzare le classi [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) e [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

L'esempio di codice seguente mostra come definire le proprietà degli assi X e Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Come impostare il valore DateTime dell'asse

L'esempio di codice seguente mostra come impostare i valori di data/ora sulle proprietà dell'asse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Come formattare il valore numerico dell'asse

Il seguente esempio di codice mostra come modificare il formato dei numeri sull'asse dei valori:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Come impostare i limiti dell'asse

La classe `AxisBound` rappresenta un limite minimo o massimo dei valori degli assi. Bound può essere specificato come un valore numerico, data-ora o uno speciale valore "auto".

L'esempio di codice seguente mostra come impostare i limiti di un asse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Come impostare l'unità di intervallo tra le etichette

L'esempio di codice seguente mostra come impostare l'unità di intervallo tra le etichette su un asse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Come nascondere l'asse del grafico

Se si desidera mostrare o nascondere l'asse del grafico, è possibile ottenere questo semplicemente impostando il valore della proprietà `ChartAxis.Hidden`.

Il seguente esempio di codice mostra come nascondere l'asse Y del grafico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Come allineare l'etichetta del grafico

Se si desidera impostare un allineamento del testo per le etichette a più righe, è sufficiente impostare il valore della proprietà [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

Il seguente esempio di codice mostra come spuntare l'allineamento delle etichette:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word allinea l'etichetta del grafico al centro per impostazione predefinita.

{{% /alert %}}

## Come impostare la formattazione del riempimento e del tratto

La formattazione del riempimento e del tratto può essere impostata per serie di grafici, punti dati e marcatori. Per fare ciò, è necessario utilizzare le proprietà del tipo `ChartFormat` nelle classi ChartSeries, ChartDataPoint e ChartMarker, nonché gli alias per alcune proprietà, ad esempio ForeColor, BackColor, Visible e Transparency nella classe `Stroke`.

Il seguente esempio di codice mostra come impostare il colore della serie:

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

Il seguente esempio di codice mostra come impostare il colore e il peso della linea:

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
