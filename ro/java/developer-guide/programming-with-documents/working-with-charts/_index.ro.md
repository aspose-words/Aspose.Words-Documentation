---
title: Lucrul cu diagrame în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu diagrame
linktitle: Lucrul cu diagrame
description: "Introducere în caracteristica diagramă, cum să creați și să manipulați diagrame folosind Java."
type: docs
weight: 310
url: /ro/java/working-with-charts/
---

Noua metodă [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) a fost adăugată în clasa [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Deci, să vedem cum să inserați o diagramă coloană simplă în document folosind metoda **insertChart**.


## Cum se introduce o diagramă de la zero folosind Aspose.Words

În această secțiune vom învăța cum să inserați o diagramă într-un document.

###  Inserare Diagramă Coloană

Următorul exemplu de cod arată cum să inserați graficul de coloane:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Codul produce următorul rezultat:

![column-chart-aspose-words-java-1](working-with-charts-7.png)

Există patru supraîncărcări diferite pentru metoda de adăugare a seriei, care au fost expuse pentru a acoperi toate variantele posibile ale surselor de date pentru toate tipurile de diagrame:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Codul produce următorul rezultat:

![column-chart-aspose-words-java-2](working-with-charts-8.png)

### Inserați Diagrama Scatter

Următorul exemplu de cod arată cum să inserați o diagramă scatter:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Codul produce următorul rezultat:

![scutter-chart-aspose-words-java](working-with-charts-9.png)

### Introduceți Diagrama Zonei

Următorul exemplu de cod arată cum să inserați o diagramă de zonă:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Codul produce următorul rezultat:

![area-chart-aspose-words-java](working-with-charts-10.png)

### Introduceți Diagrama Cu Bule

Următorul exemplu de cod arată cum să inserați o diagramă cu bule:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Codul produce următorul rezultat:

![bubble-chart-aspose-words-java](working-with-charts-11.png)

## Lucrul cu diagrame prin `Shape.Chart` obiect

Odată ce graficul a fost introdus și completat cu date, îi puteți schimba aspectul. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) proprietatea conține toate opțiunile legate de diagramă disponibile prin public API.

De exemplu, să schimbăm titlul diagramei sau comportamentul legendei:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Codul generează următoarele rezultate:

![line-chart-aspose-words-java-1](working-with-charts-1.png)

## Cum se lucrează cu ChartSeriesCollection de diagramă

Să analizăm colecția [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/). Toate seriile de diagrame sunt disponibile prin colecția [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), care este **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Puteți elimina seria una câte una sau le puteți șterge pe toate, precum și puteți adăuga una nouă, dacă este necesar. Graficul nou introdus are câteva serii implicite adăugate la această colecție. Pentru a le elimina, trebuie să apelați metoda **chart.getSeries().clear()**.

## Lucrul cu o singură clasă ChartSeries

Iată cum să lucrați cu o anumită serie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Vă rugăm să consultați rezultatul de mai jos:

![line-chart-aspose-words-java-2](working-with-charts-2.png)

Toate singur [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) au implicit [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opțiuni, vă rugăm să încercați să utilizați următorul cod pentru a le schimba:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](working-with-charts-3.png)

## Cum se lucrează cu un singur ChartDataPoint dintr-un `ChartSeries`

Folosind [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) puteți personaliza formatarea unui singur punct de date din seria de diagrame:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Vă rugăm să consultați rezultatul de mai jos:

![line-chart-aspose-words-java-4](working-with-charts-4.png)

## Cum se lucrează cu ChartDataLabel dintr-un singur ChartSeries

Folosind [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) puteți specifica formatarea unei singure etichete de date a seriei de diagrame, cum ar fi Afișare / Ascundere LegendKey, CategoryName, SeriesName, valoare etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Vă rugăm să consultați rezultatul de mai jos:

![bar-chart-aspose-words-java](working-with-charts-5.png)

## Cum se definesc opțiunile implicite pentru ChartDataLabels Din ChartSeries

Clasa [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) definește proprietățile care pot fi utilizate pentru a seta opțiunile implicite pentru **ChartDataLabels** Pentru graficul **Series**. Aceste proprietăți includ setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Vă rugăm să consultați rezultatul de mai jos:

![pie-chart-aspose-words-java](working-with-charts-6.png)

## Cum se formatează Numărul de etichete de date grafice

Folosind proprietatea [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), puteți specifica formatarea numărului unei singure etichete de date a graficului.

Următorul exemplu de cod arată cum să formatați un număr de etichete de date:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Cum să setați proprietățile axei diagramei

Dacă doriți să lucrați cu axa diagramei, scalarea și unitățile de afișare pentru axa valorii, vă rugăm să utilizați clasele [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) și [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

Următorul exemplu de cod arată cum se definesc proprietățile axei X și Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Cum se setează DateTime valoarea axei

Următorul exemplu de cod arată cum să setați valorile datei/orei la proprietățile axei:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Cum se formatează valoarea numerică a axei

Următorul exemplu de cod arată cum să modificați formatul numerelor pe axa valorii:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Cum să setați limitele axei

Clasa `AxisBound` reprezintă o limită minimă sau maximă a valorilor axei. Bound poate fi specificat ca o valoare numerică, dată-oră sau o valoare specială "auto".

Următorul exemplu de cod arată cum să setați limitele unei axe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Cum să setați unitatea de Interval între etichete

Următorul exemplu de cod arată cum să setați unitatea de interval între etichete pe o axă:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Cum să ascundeți Axa diagramei

Dacă doriți să afișați sau să ascundeți axa diagramei, puteți realiza acest lucru pur și simplu setând valoarea proprietății `ChartAxis.Hidden`.

Următorul exemplu de cod arată cum să ascundeți axa Y a diagramei:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Cum să aliniați eticheta diagramei

Dacă doriți să setați o aliniere a textului pentru etichete cu mai multe linii, puteți realiza acest lucru pur și simplu setând valoarea proprietății [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

Următorul exemplu de cod arată cum să bifați alinierea etichetelor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word aliniază eticheta diagramei la centru în mod implicit.

{{% /alert %}}

## Cum se setează formatarea umplerii și a cursei

Formatarea umplerii și a cursei poate fi setată pentru serii de diagrame, puncte de date și markeri. Pentru a face acest lucru, trebuie să utilizați proprietățile tipului `ChartFormat` în clasele ChartSeries, ChartDataPoint și ChartMarker, precum și aliasuri pentru unele proprietăți, cum ar fi ForeColor, BackColor, vizibil și transparență în clasa `Stroke`.

Următorul exemplu de cod arată cum să setați culoarea seriei:

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

Următorul exemplu de cod arată cum să setați culoarea și greutatea liniei:

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
