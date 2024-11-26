---
title: Lavorare con i grafici in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con i grafici
linktitle: Lavorare con i grafici
description: "Crea e modifica grafici di vario tipo in un documento utilizzando Python."
type: docs
weight: 310
url: /it/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Il nuovo metodo [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) è stato aggiunto alla classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Vediamo quindi come inserire un semplice istogramma nel documento utilizzando il metodo [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Come inserire un grafico

In questa sezione impareremo come inserire un grafico in un documento.

### Inserisci grafico a colonne

L'esempio di codice seguente mostra come inserire un istogramma:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Il codice produce il seguente risultato:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Esistono metodi [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) e [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), che sono stati esposti per coprire tutte le possibili varianti di origini dati per tutti i tipi di grafici:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Il codice produce il seguente risultato:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Inserisci grafico a dispersione

L'esempio seguente mostra come inserire un grafico a dispersione.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Il codice produce il seguente risultato:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Inserisci grafico ad area

L'esempio di codice seguente mostra come inserire un grafico ad area:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Il codice produce il seguente risultato:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Inserisci grafico a bolle

L'esempio di codice seguente mostra come inserire un grafico a bolle:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Il codice produce il seguente risultato:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Lavorare con i grafici tramite l'oggetto Shape.chart

Una volta inserito e riempito di dati il grafico, puoi modificarne l'aspetto. La proprietà [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) contiene tutte le opzioni relative al grafico disponibili tramite il API pubblico.

Ad esempio, modifichiamo il comportamento del titolo [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) o della legenda:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Il codice genera i seguenti risultati:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Come lavorare con ChartSeriesCollection di grafici

Diamo un'occhiata alla raccolta [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Tutte le serie di carte sono disponibili tramite la raccolta [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Puoi rimuovere le serie una per una o cancellarle tutte e aggiungerne una nuova se necessario. Il grafico appena inserito presenta alcune serie predefinite aggiunte a questa raccolta. Per rimuoverli è necessario chiamare il metodo [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Lavorare con la classe ChartSeries singola

Ecco come lavorare con una serie particolare.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Tutti i singoli [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) hanno opzioni [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) predefinite, prova a utilizzare il seguente codice per modificarle:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Come lavorare con il singolo ChartDataPoint di un `ChartSeries`

Utilizzando [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) puoi personalizzare la formattazione di un singolo punto dati della serie di grafici:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Si prega di vedere il risultato qui sotto:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Come lavorare con ChartDataLabel di una singola ChartSeries

Utilizzando [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) è possibile specificare la formattazione di una singola etichetta dati della serie di grafici, come mostrare/nascondere LegendKey, CategoryName, SeriesName, Value ecc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Si prega di vedere il risultato qui sotto:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Come definire le opzioni predefinite per ChartDataLabels di ChartSeries

La classe [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) definisce le proprietà che possono essere utilizzate per impostare le opzioni predefinite per [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) per le serie di grafici. Queste proprietà includono [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) ecc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Si prega di vedere il risultato qui sotto:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Come formattare il numero dell'etichetta dei dati del grafico

Utilizzando [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) è possibile specificare la formattazione numerica di una singola etichetta dati del grafico.

Il seguente esempio di codice mostra come formattare un numero dell'etichetta dati:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Come impostare le proprietà dell'asse del grafico

Se desideri lavorare con l'asse del grafico, il ridimensionamento e le unità di visualizzazione per l'asse dei valori, utilizza le classi [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) e [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

Il seguente esempio di codice mostra come definire le proprietà degli assi X e Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Come impostare il valore temporale Date dell'asse

L'esempio di codice seguente mostra come impostare i valori di data/ora sulle proprietà dell'asse:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Come formattare il valore numerico dell'asse

L'esempio di codice seguente mostra come modificare il formato dei numeri sull'asse dei valori:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Come impostare i limiti dell'asse

La classe [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) rappresenta un limite minimo o massimo dei valori degli assi. Il limite può essere specificato come valore numerico, data-ora o speciale "automatico".

L'esempio di codice seguente mostra come impostare i limiti di un asse:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Come impostare l'unità di intervallo tra le etichette

L'esempio di codice seguente mostra come impostare l'unità di intervallo tra le etichette su un asse:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Come nascondere l'asse del grafico

Se vuoi mostrare o nascondere l'asse del grafico, puoi semplicemente farlo impostando il valore della proprietà [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

L'esempio di codice seguente mostra come nascondere l'asse Y del grafico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Come allineare l'etichetta del grafico

Se desideri impostare un allineamento del testo per le etichette su più righe, puoi semplicemente ottenerlo impostando il valore della proprietà [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

L'esempio di codice seguente mostra come selezionare l'allineamento dell'etichetta:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word allinea l'etichetta del grafico al centro per impostazione predefinita.

{{% /alert %}}

## Come impostare la formattazione di riempimento e tratto

È possibile impostare la formattazione di riempimento e tratto per serie di grafici, punti dati e indicatori. A tale scopo è necessario utilizzare le proprietà del tipo [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) nelle classi [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) e [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), nonché gli alias per alcune proprietà, come [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) e [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) nella classe [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

L'esempio di codice seguente mostra come impostare il colore della serie:

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

L'esempio di codice seguente mostra come impostare il colore e lo spessore della linea:

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
