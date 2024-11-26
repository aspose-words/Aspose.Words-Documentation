---
title: Lucrul cu diagrame în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu diagrame
linktitle: Lucrul cu diagrame
description: "Creați și modificați diagrame de diferite tipuri într-un document folosind Python."
type: docs
weight: 310
url: /ro/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Noua metodă [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) a fost adăugată în clasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Deci, să vedem cum să inserați o diagramă coloană simplă în document folosind metoda [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Cum se introduce o diagramă

În această secțiune vom învăța cum să inserați o diagramă într-un document.

### Inserare Diagramă Coloană

Următorul exemplu de cod arată cum să inserați graficul de coloane:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Codul produce următorul rezultat:

![create-column-chart-aspose-words-net](working-with-charts-1.png)


Există metode [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) și [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), care au fost expuse pentru a acoperi toate variantele posibile ale surselor de date pentru toate tipurile de diagrame:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Codul produce următorul rezultat:

![create-column-chart-from-datasource-aspose-words-net](working-with-charts-2.png)

### Inserați Diagrama Scatter

Exemplul de mai jos arată cum să inserați o diagramă scatter.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Codul produce următorul rezultat:

![scatter-chart-aspose-words-net](working-with-charts-3.png)

### Introduceți Diagrama Zonei

Următorul exemplu de cod arată cum să inserați o diagramă de zonă:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Codul produce următorul rezultat:

![area-chart-aspose-words-net](working-with-charts-4.png)

### Introduceți Diagrama Cu Bule

Următorul exemplu de cod arată cum să inserați o diagramă cu bule:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Codul produce următorul rezultat:

![bubble-chart-aspose-words-net](working-with-charts-5.png)

## Lucrul cu diagrame prin formă.obiect grafic

Odată ce graficul a fost introdus și completat cu date, îi puteți schimba aspectul. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) proprietatea conține toate opțiunile legate de diagramă disponibile prin public API.

De exemplu, să schimbăm [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) comportamentul titlului sau legendei:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Codul generează următoarele rezultate:

![line-chart-aspose-words-net](working-with-charts-6.png)

## Cum se lucrează cu ChartSeriesCollection de diagramă

Să analizăm colecția [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Toate seriile de diagrame sunt disponibile prin colecția [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Puteți elimina seria una câte una sau le puteți șterge pe toate, precum și puteți adăuga una nouă, dacă este necesar. Graficul nou introdus are câteva serii implicite adăugate la această colecție. Pentru a le elimina, trebuie să apelați metoda [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Lucrul cu o singură clasă ChartSeries

Iată cum să lucrați cu o anumită serie.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Vă rugăm să consultați rezultatul de mai jos:

![line-chart-chartseries-aspose-words-net](working-with-charts-7.png)


Toate singur [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) au implicit [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) opțiuni, vă rugăm să încercați să utilizați următorul cod pentru a le schimba:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Vă rugăm să consultați rezultatul de mai jos:

![line-chart-chartdatapoint-aspose-words-net](working-with-charts-8.png)

## Cum se lucrează cu un singur ChartDataPoint dintr-un `ChartSeries`

Folosind [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) puteți personaliza formatarea unui singur punct de date din seria de diagrame:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Vă rugăm să consultați rezultatul de mai jos:

![line-chart-datapoint-aspose-words-net](working-with-charts-9.png)

## Cum se lucrează cu ChartDataLabel dintr-un singur ChartSeries

Folosind [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) puteți specifica formatarea unei singure etichete de date a seriei de diagrame, cum ar fi Afișare / Ascundere LegendKey, CategoryName, SeriesName, valoare etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Vă rugăm să consultați rezultatul de mai jos:

![bar-chart-aspose-words-net](working-with-charts-10.png)

## Cum se definesc opțiunile implicite pentru ChartDataLabels Din ChartSeries

Clasa [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) definește proprietățile care pot fi utilizate pentru a seta opțiunile implicite pentru [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) pentru seria de diagrame. Aceste proprietăți includ [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Vă rugăm să consultați rezultatul de mai jos:

![pie-chart-aspose-words-net](working-with-charts-11.png)

## Cum se formatează Numărul de etichete de date grafice

Folosind [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) puteți specifica formatarea numerică a unei singure etichete de date a graficului.

Următorul exemplu de cod arată cum să formatați un număr de etichete de date:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Cum să setați proprietățile axei diagramei

Dacă doriți să lucrați cu axa diagramei, scalarea și unitățile de afișare pentru axa valorii, vă rugăm să utilizați clasele [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) și [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

Următorul exemplu de cod arată cum se definesc proprietățile axei X și Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Cum se setează valoarea datei de timp a axei

Următorul exemplu de cod arată cum să setați valorile datei/orei la proprietățile axei:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Cum se formatează valoarea numerică a axei

Următorul exemplu de cod arată cum să modificați formatul numerelor pe axa valorii:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Cum să setați limitele axei

Clasa [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) reprezintă o limită minimă sau maximă a valorilor axei. Bound poate fi specificat ca o valoare numerică, dată-oră sau o valoare specială "auto".

Următorul exemplu de cod arată cum să setați limitele unei axe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Cum să setați unitatea de Interval între etichete

Următorul exemplu de cod arată cum să setați unitatea de interval între etichete pe o axă:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Cum să ascundeți Axa diagramei

Dacă doriți să afișați sau să ascundeți axa diagramei, puteți realiza acest lucru pur și simplu setând valoarea proprietății [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

Următorul exemplu de cod arată cum să ascundeți axa Y a diagramei:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Cum să aliniați eticheta diagramei

Dacă doriți să setați o aliniere a textului pentru etichete cu mai multe linii, puteți realiza acest lucru pur și simplu setând valoarea proprietății [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

Următorul exemplu de cod arată cum să bifați alinierea etichetelor:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word aliniază eticheta diagramei la centru în mod implicit.

{{% /alert %}}

## Cum se setează formatarea umplerii și a cursei

Formatarea umplerii și a cursei poate fi setată pentru serii de diagrame, puncte de date și markeri. Pentru a face acest lucru, trebuie să utilizați proprietățile tipului [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) din clasele [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) și [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), precum și aliasuri pentru unele proprietăți, cum ar fi [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), și [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) în clasa [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

Următorul exemplu de cod arată cum să setați culoarea seriei:

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

Următorul exemplu de cod arată cum să setați culoarea și greutatea liniei:

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
