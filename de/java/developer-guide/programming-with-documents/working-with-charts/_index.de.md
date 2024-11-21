---
title: Arbeiten mit Diagrammen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Diagrammen
linktitle: Arbeiten mit Diagrammen
description: "Einführung in Chart-Funktion, wie Sie Diagramme erstellen und manipulieren Java."
type: docs
weight: 310
url: /de/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Der neue [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) Methode wurde in die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasse. So, mal sehen, wie man ein einfaches Spaltendiagramm in das Dokument einfügen kann **Einsatzbereich Diagramm** Methode.


## Wie man ein Diagramm von Scratch mit einfügen Aspose.Words

In diesem Abschnitt erfahren wir, wie man ein Diagramm in ein Dokument einfügen kann.

###  Spaltendiagramm einfügen

Das folgende Codebeispiel zeigt, wie man Spaltendiagramm einfügen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Der Code erzeugt das folgende Ergebnis:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Es gibt vier verschiedene Überlastungen für die Serie Fügen Sie ein Verfahren hinzu, das allen möglichen Varianten von Datenquellen für alle Diagrammtypen ausgesetzt war:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Der Code erzeugt das folgende Ergebnis:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Fügen Sie Scatter Diagramm

Das folgende Codebeispiel zeigt, wie man ein Scatter-Diagramm einfügen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Der Code erzeugt das folgende Ergebnis:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Einsatzbereich Diagramm

Das folgende Codebeispiel zeigt, wie man ein Flächendiagramm einfügen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Der Code erzeugt das folgende Ergebnis:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Bubble Chart einfügen

Das folgende Codebeispiel zeigt, wie man ein Blasendiagramm einfügen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Der Code erzeugt das folgende Ergebnis:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Arbeiten mit Diagrammen durch `Shape.Chart` Gegenstand

Sobald das Diagramm eingefügt und mit Daten gefüllt wurde, können Sie sein Aussehen ändern. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) Eigenschaft enthält alle Diagramm-bezogene Optionen, die über die Öffentlichkeit verfügbar API.

Zum Beispiel, lass uns ändern Chart Titel oder Legendenverhalten:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Der Code erzeugt folgende Ergebnisse:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Wie man mit ChartSeriesCollection of Chart arbeitet

Schauen wir uns an [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) Sammlung. Alle Chart-Serien sind über die [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) Sammlung, die **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Sie können die Serie eins nach einem oder klar alle von ihnen entfernen sowie eine neue hinzufügen, wenn nötig. Das neu eingefügte Diagramm hat einige Standard-Serien hinzugefügt. Um sie zu entfernen, müssen Sie die **Chart.getSeries().clear()** Methode.

## Arbeiten mit Single ChartSeries Klasse

Hier ist, wie man mit einer bestimmten Serie arbeitet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Bitte sehen Sie das Ergebnis unten:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Alle Einzelteile [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) haben standard [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Optionen, bitte versuchen Sie mit dem folgenden Code, um sie zu ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Wie man mit Single ChartDataPoint eines arbeitet `ChartSeries`

Verwendung [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Sie können die Formatierung eines einzigen Datenpunktes der Chartserie anpassen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Bitte sehen Sie das Ergebnis unten:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Wie man mit ChartDataLabel einer einzelnen ChartSerie arbeitet

Verwendung [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) Sie können die Formatierung eines einzigen Datenlabels der Chart-Serie wie show/hide LegendKey, KategorieName, SeriesName, angeben Wert usw

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Bitte sehen Sie das Ergebnis unten:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Wie Default-Optionen für ChartDataLabels der ChartSeries definieren

Die [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) class definiert Eigenschaften, die verwendet werden können, um Standardoptionen für **ChartDataLabels** für Diagramm **Series**. Diese Eigenschaften umfassen setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowShow Wert usw

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Bitte sehen Sie das Ergebnis unten:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Wie zu formatieren Anzahl der Diagrammdaten

Verwendung von [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) Eigenschaft, Sie können die Zahlenformatierung eines einzigen Datenlabels des Diagramms angeben.

Das folgende Codebeispiel zeigt, wie man eine Anzahl des Datenlabels formatiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Wie Sie Diagramm Axis Eigenschaften einstellen

Wenn Sie mit Diagrammachse, Skalierung und Anzeigeeinheiten für die Wertachse arbeiten möchten, verwenden Sie bitte [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), und [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) Klassen.

Das folgende Codebeispiel zeigt, wie man X- und Y-Achseneigenschaften definiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Wie zu setzen DateZeitwert der Achsen

Das folgende Codebeispiel zeigt, wie Datum/Zeitwerte auf Achseneigenschaften eingestellt werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Wie zu formatieren Anzahl Wert der Achsen

Das folgende Codebeispiel zeigt, wie man das Format der Zahlen auf der Wertachse ändert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Wie man die Nerven der Axis festlegt

Die `AxisBound` Eine Klasse stellt eine minimale oder maximale Begrenzung von Achswerten dar. Bound kann als numerischer, Datums- oder Sonderwert "auto" angegeben werden.

Das folgende Codebeispiel zeigt, wie die Grenzen einer Achse eingestellt werden können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Wie die Intervalleinheit zwischen den Etiketten einzustellen

Das folgende Codebeispiel zeigt, wie die Intervalleinheit zwischen Etiketten auf einer Achse eingestellt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Wie man Diagramm Axis versteckt

Wenn Sie die Chart-Achse anzeigen oder verstecken möchten, können Sie dies einfach erreichen, indem Sie den Wert von `ChartAxis.Hidden` Eigentum.

Das folgende Codebeispiel zeigt, wie man die Y-Achse des Diagramms versteckt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Wie man Chart-Etikett align

Wenn Sie eine Textausrichtung für Multiline-Etiketten festlegen möchten, können Sie dies einfach erreichen, indem Sie den Wert von [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) Eigentum.

Das folgende Codebeispiel zeigt, wie man die Etikettenausrichtung tickt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word Ausrichten Chart Label ins Zentrum standardmäßig.

{{% /alert %}}

## Wie Sie Füllung und Stroke Formatierung einstellen

Die Füll- und Hubformatierung kann für Diagrammreihen, Datenpunkte und Marker eingestellt werden. Um dies zu tun, müssen Sie die Eigenschaften der `ChartFormat` Typ in den ChartSeries, ChartDataPoint und ChartMarker-Klassen sowie Alias für einige Eigenschaften wie ForeColor, BackColor, Sichtbar und Transparenz in der `Stroke` Klasse.

Das folgende Codebeispiel zeigt, wie man Serienfarbe einstellt:

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

Das folgende Codebeispiel zeigt, wie Zeilenfarbe und Gewicht eingestellt werden:

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
