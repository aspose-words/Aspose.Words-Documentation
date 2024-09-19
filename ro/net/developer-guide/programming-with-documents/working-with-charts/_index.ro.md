---
title: Lucrul cu diagrame în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrând cu diagrame
linktitle: Lucrând cu diagrame
description: "Introducere în caracteristica de diagrame, cum să creezi și manipulezi diagrame folosind C#."
type: docs
weight: 310
url: /ro/net/working-with-charts/
---

Un nou [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) metodă a fost adăugată la clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Deci, haideți să vedem cum se inserează un simplu grafic coloană în document folosind metoda [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/).

## Cum să inserați un grafic

În această secțiune vom învăța cum să introducem un grafic într-un document.

### Inserare Diagramă coloană

Exemplul următor de cod arată cum să inserați un grafic cu coloane:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Codul produce următorul rezultat:

![create-column-chart-aspose-words-net](working-with-charts-1.png)


Există patru suprascrieri diferite pentru metoda "Add", care a fost expusă pentru a acoperi toate variantele posibile de surse de date pentru toate tipurile de diagrame:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Codul produce următorul rezultat:

![create-column-chart-from-datasource-aspose-words-net](working-with-charts-2.png)

### Introduceți un grafic dispersat

Exemplul următor arată cum să inserați un grafic cu puncte dispersate:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Codul produce următorul rezultat:

![scatter-chart-aspose-words-net](working-with-charts-3.png)

### Insert Area Chart

Exemplul următor de cod arată cum să inserați un grafic de zone:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Codul produce următorul rezultat:

![area-chart-aspose-words-net](working-with-charts-4.png)

### Introduceți un grafic cu bule

Exemplul de cod următor arată cum să inserați un grafic cu bule:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Codul produce următorul rezultat:

![bubble-chart-aspose-words-net](working-with-charts-5.png)

## Lucrul cu diagrame prin `Shape.Chart` Obiectul

Odată ce graficul a fost inserat și umplut cu date, ai capacitatea să-i schimbi aspectul. Proprietatea `Shape.Chart` conține toate opțiunile legate de grafice disponibile prin intermediul API.

De exemplu să schimbăm titlul sau comportamentul legendei de pe grafic:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Codul generează următoarele rezultate:

![line-chart-aspose-words-net](working-with-charts-6.png)

## Cum să lucrezi cu ChartSeriesCollection de la Chart

Să aruncăm o privire la [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) colecție. Toate serii de diagrame sunt disponibile prin [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) colecție, care este **IEnumerable**:"

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Puteți elimina seriile unul câte unul sau puteți șterge toate ca să adăugați un nou dacă este necesar. "Graficul inserat recent are unele serii implicite adăugate la această colecție." Pentru a le îndepărta trebuie să apelezi metoda **chart.Series.Clear()**.

## Lucrând cu clasa Single ChartSeries

Iată cum se lucrează cu o serie anume:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Vă rugăm să vedeți rezultatul de mai jos

![line-chart-chartseries-aspose-words-net](working-with-charts-7.png)


Toate variabilele singulare [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) au opțiuni implicite [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/), vă rugăm să încercați să utilizați codul următor pentru a le schimba:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Vă rugăm să priviți rezultatul de mai jos:

![line-chart-chartdatapoint-aspose-words-net](working-with-charts-8.png)

## Cum să lucrezi cu Single ChartDataPoint al unui `ChartSeries`

Utilizând [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/), veți putea particulariza formatarea unui singur punct de date al seriei de diagrame:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Vă rugăm să vedeți rezultatul de mai jos:

![line-chart-datapoint-aspose-words-net](working-with-charts-9.png)

## Cum să lucrezi cu ChartDataLabel al unui singur ChartSeries

Utilizând [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) puteți specifica formatarea unei singure etichete de date din seria de diagrame, cum ar fi afișarea/ascunderea LegendKey, CategoryName, SeriesName, Value etc.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Vă rugăm să vedeți rezultatul mai jos:

![bar-chart-aspose-words-net](working-with-charts-10.png)

## Cum să definești opțiunile implicite pentru ChartDataLabels de la ChartSeries

Clasa [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) definește proprietăți care pot fi utilizate pentru a seta opțiunile implicite pentru **ChartDataLabels** pentru graficul **Series**. Aceste proprietăți includ ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue etc.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Vă rugăm să vedeți rezultatul mai jos:

![pie-chart-aspose-words-net](working-with-charts-11.png)

## Cum să formatăm numărul etichetelor de date ale diagramei

Utilizând [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) puteți specifica formatarea numărului pentru un singur etichetă de date din grafic.

Exemplul de cod următor arată cum să formateze un număr din eticheta datelor:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Cum să setați proprietățile axelor diagramei

Dacă doriți să lucrați cu axele de grafic, scalarea și unitățile de afișare pentru axa de valoare, vă rugăm să utilizați [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), și [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) clase.

Exemplul următor de cod arată cum să se definească proprietățile axelor X și Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Cum să setați Date valoarea timpului de pe axă

Exemplul de cod următor arată cum să setaţi valori de dată/oră pentru proprietăţile axei:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Cum să formatezi valoarea numărului axei

Exemplul următor de cod arată cum se schimbă formatul numerelor pe axa valorii:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Cum să setăm limite pentru axă

"Clasa `AxisBound` reprezintă o limită minimă sau maximă a valorilor axelor." Bound poate fi specificat ca o valoare numerică, dată și oră sau un "auto" valorii speciale.

Exemplul următor de cod arată cum să se stabilească limitele unei axe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Cum să setăm Unitatea Intervalului între Etichete

Exemplul de cod de mai jos arată cum se stabilește unitatea intervalului între etichete pe o axă:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Cum se ascunde axa graficului

Dacă vrei să afișezi sau să ascunzi axa diagramei, poți obține acest lucru prin setarea valorii proprietății `ChartAxis.Hidden`.

Exemplul de cod următor arată cum să ascundem axa Y a diagramei:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Cum să aliniați eticheta graficului

Dacă doriți să stabiliți un aliniere de text pentru etichete multi-linie, puteți obține acest lucru prin setarea valorii proprietății [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Aliniere**.

Exemplul de cod următor arată cum să se alinieze eticheta de bucle:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word aliniază eticheta graficului spre centru în mod implicit.

{{% /alert %}}

## Cum să setezi formatarea umplelor și a contururilor

Formatarea umpluturii și a conturului poate fi setată pentru seria de grafice, punctele de date și marcatori. Pentru a face asta, trebuie să folosești proprietățile de tip **ChartFormat** în clasele **ChartSeries**, **ChartDataPoint** și **ChartMarker**, precum și aliasuri pentru unele proprietăți, cum ar fi ForeColor, BackColor, Visible și Transparență în clasa `Stroke`.

Exemplul următor de cod arată cum să setezi culoarea seriei:

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

Exemplul următor de cod arată cum să se seteze culoarea și greutatea liniei:

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
