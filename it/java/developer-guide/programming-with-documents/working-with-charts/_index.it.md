---
title: Lavorare con i grafici in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i grafici
linktitle: Lavorare con i grafici
description: "Introduzione alla funzione Grafico, come creare e manipolare i grafici utilizzando Java."
type: docs
weight: 310
url: /it/java/working-with-charts/
---

Il nuovo [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) metodo è stato aggiunto nel [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe. Quindi, vediamo come inserire un grafico a colonna semplice nel documento utilizzando **inserto Grafico** metodo.


## Come inserire un grafico da graffio utilizzando Aspose.Words

In questa sezione impareremo come inserire un grafico in un documento.

###  Inserisci grafico della colonna

Il seguente esempio di codice mostra come inserire il grafico della colonna:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Il codice produce il seguente risultato:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Ci sono quattro diversi sovraccarichi per la serie Aggiungi metodo, che sono stati esposti per coprire tutte le possibili varianti di fonti di dati per tutti i tipi di grafico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Il codice produce il seguente risultato:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Inserire Scatter Grafico

Il seguente esempio di codice mostra come inserire un grafico scatter:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Il codice produce il seguente risultato:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Area di inserimento Grafico

Il seguente esempio di codice mostra come inserire un grafico dell'area:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Il codice produce il seguente risultato:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Inserisci il grafico della bolla

Il seguente esempio di codice mostra come inserire un grafico a bolle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Il codice produce il seguente risultato:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Lavorare con Charts attraverso `Shape.Chart` Oggetto

Una volta che il grafico è stato inserito e riempito di dati, si è in grado di cambiare il suo aspetto. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) proprietà contiene tutte le opzioni relative al grafico disponibili attraverso il pubblico API.

Per esempio, cambiamo Titolo grafico o comportamento della leggenda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Il codice genera i seguenti risultati:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Come Lavorare con ChartSeriesCollezione di Grafico

Guardiamo dentro [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) collezione. Tutte le serie di grafici sono disponibili attraverso [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) collezione, che è **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

È possibile rimuovere la serie uno per uno o cancellare tutti loro e aggiungere una nuova, se necessario. Il grafico appena inserito ha alcune serie di default aggiunte a questa collezione. Per rimuoverli è necessario chiamare il **chart.getSeries().clear()** metodo.

## Lavorare con Single ChartSeries Class

Ecco come lavorare con una serie particolare.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Tutto singolo [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) hanno predefinito [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opzioni, si prega di provare a utilizzare il seguente codice per cambiarli:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Come Lavorare con Single ChartDataPoint di un `ChartSeries`

Utilizzo [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) si è in grado di personalizzare la formattazione di un singolo punto di dati della serie grafico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Come Lavorare con ChartDataLabel di una Serie Singola di Grafico

Utilizzo [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) si è in grado di specificare la formattazione di una singola etichetta di dati della serie di grafici, come show/hide LegendKey, CategoryName, SeriesName, Valore ecc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Si prega di vedere il risultato qui sotto:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Come definire opzioni di default per ChartDataLabels di ChartSeries

The [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) classe definisce le proprietà che possono essere utilizzate per impostare le opzioni di default per **ChartDataLabels** per Grafico **Series**. Queste strutture includono setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShow Valore ecc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Si prega di vedere il risultato qui sotto:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Come Formattare il Numero di Etichetta Dati Grafico

Usare il [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) proprietà, è possibile specificare la formattazione del numero di una singola etichetta di dati del grafico.

Il seguente esempio di codice mostra come formattare un numero dell'etichetta dati:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Come impostare le proprietà dell'asse grafico

Se si desidera lavorare con l'asse grafico, la scala e le unità di visualizzazione per l'asse del valore, si prega di utilizzare [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), e [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) classi.

Il seguente esempio di codice mostra come definire le proprietà di assi X e Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Come Preparare il Tempo DateValore di tempo dell'Asse

Il seguente esempio di codice mostra come impostare i valori della data/ora alle proprietà dell'asse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Come Formattare il Valore Numero di Asse

Il seguente esempio di codice mostra come modificare il formato dei numeri sull'asse del valore:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Come Impostare i Bound dell'Asse

The `AxisBound` classe rappresenta un limite minimo o massimo di valori di asse. Bound può essere specificato come un valore numerico, data-time o "auto" speciale.

Il seguente esempio di codice mostra come impostare i limiti di un asse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Come impostare l'unità di intervallazione tra le etichette

Il seguente esempio di codice mostra come impostare l'unità di intervallo tra le etichette su un asse:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Come Nascondere l'Asse Grafico

Se si desidera mostrare o nascondere l'asse grafico, è sufficiente raggiungere questo obiettivo impostando il valore di `ChartAxis.Hidden` proprieta'.

Il seguente esempio di codice mostra come nascondere l'asse Y del grafico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Come Allineare l'Etichetta di Grafico

Se si desidera impostare un allineamento di testo per le etichette multi-linee, è sufficiente raggiungere questo obiettivo impostando il valore di [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) proprieta'.

Il seguente esempio di codice mostra come spuntare l'allineamento delle etichette:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word allinea Grafico Etichetta al centro per impostazione predefinita.

{{% /alert %}}

## Come impostare il riempimento e la formattazione del freno

Formattazione di riempimento e corsa può essere impostato per la serie di grafici, punti di dati e marcatori. Per fare questo, è necessario utilizzare le proprietà della `ChartFormat` tipo nelle classi ChartSeries, ChartDataPoint e ChartMarker, così come alias per alcune proprietà, come ForeColor, BackColor, Visibile e Trasparenza nella `Stroke` classe.

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

Il seguente esempio di codice mostra come impostare il colore della linea e il peso:

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
