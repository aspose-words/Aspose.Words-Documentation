---
title: Arbeiten mit Diagrammen in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Diagrammen
linktitle: Arbeiten mit Diagrammen
description: "Einführung in die Diagrammfunktion, Erstellen und Bearbeiten von Diagrammen mit Java."
type: docs
weight: 310
url: /de/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Die neue [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) -Methode wurde der [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) -Klasse hinzugefügt. Sehen wir uns also an, wie Sie mit der Methode **insertChart** ein einfaches Säulendiagramm in das Dokument einfügen.


## So fügen Sie ein Diagramm mit Aspose.Words von Grund auf neu ein

In diesem Abschnitt erfahren Sie, wie Sie ein Diagramm in ein Dokument einfügen.

###  Säulendiagramm einfügen

Das folgende Codebeispiel zeigt, wie Sie ein Säulendiagramm einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Der Code erzeugt das folgende Ergebnis:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Es gibt vier verschiedene Überladungen für die Methode zum Hinzufügen von Serien, die verfügbar gemacht wurden, um alle möglichen Varianten von Datenquellen für alle Diagrammtypen abzudecken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Der Code erzeugt das folgende Ergebnis:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Streudiagramm einfügen

Das folgende Codebeispiel zeigt, wie Sie ein Punktdiagramm einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Der Code erzeugt das folgende Ergebnis:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Flächendiagramm einfügen

Das folgende Codebeispiel zeigt, wie Sie ein Flächendiagramm einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Der Code erzeugt das folgende Ergebnis:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Blasendiagramm einfügen

Das folgende Codebeispiel zeigt, wie Sie ein Blasendiagramm einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Der Code erzeugt das folgende Ergebnis:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Arbeiten mit Diagrammen über das `Shape.Chart` -Objekt

Sobald das Diagramm eingefügt und mit Daten gefüllt wurde, können Sie sein Aussehen ändern. Die Eigenschaft [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) enthält alle diagrammbezogenen Optionen, die über das öffentliche API verfügbar sind.

Lassen Sie uns beispielsweise den Diagrammtitel oder das Legendenverhalten ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Der Code generiert die folgenden Ergebnisse:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## So arbeiten Sie mit ChartSeriesCollection des Diagramms

Schauen wir uns die Sammlung [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) an. Alle Diagrammserien sind über die [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) -Sammlung verfügbar, die **Iterable** ist:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Sie können Serien einzeln entfernen oder alle löschen sowie bei Bedarf eine neue hinzufügen. Dem neu eingefügten Diagramm wurden einige Standardreihen zu dieser Sammlung hinzugefügt. Um sie zu entfernen, müssen Sie die **chart.getSeries().clear()** -Methode aufrufen.

## Arbeiten mit einer einzelnen ChartSeries -Klasse

Hier erfahren Sie, wie Sie mit einer bestimmten Serie arbeiten.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Bitte sehen Sie das Ergebnis unten:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Alle einzelnen [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) haben Standardoptionen für [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/). Bitte versuchen Sie, sie mit dem folgenden Code zu ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## So arbeiten Sie mit einzelnen ChartDataPoint von `ChartSeries`

Mit [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) können Sie die Formatierung eines einzelnen Datenpunkts der Diagrammreihe anpassen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Bitte sehen Sie das Ergebnis unten:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## So arbeiten Sie mit ChartDataLabel einer einzelnen ChartSeries

Mit [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) können Sie die Formatierung einer einzelnen Datenbeschriftung der Diagrammreihe angeben, z. B. Ein- / Ausblenden LegendKey, CategoryName, SeriesName, Wert usw:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Bitte sehen Sie das Ergebnis unten:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## So definieren Sie Standardoptionen für ChartDataLabels von ChartSeries

Die Klasse [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) definiert Eigenschaften, mit denen Standardoptionen für **ChartDataLabels** für Diagramm **Series** festgelegt werden können. Diese Eigenschaften umfassen setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue usw:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Bitte sehen Sie das Ergebnis unten:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Formatieren der Nummer der Diagrammdatenbeschriftung

Mit der Eigenschaft [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) können Sie die Zahlenformatierung einer einzelnen Datenbeschriftung des Diagramms angeben.

Das folgende Codebeispiel zeigt, wie eine Nummer der Datenbeschriftung formatiert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## So legen Sie die Eigenschaften der Diagrammachse fest

Wenn Sie mit Diagrammachse, Skalierung und Anzeigeeinheiten für die Wertachse arbeiten möchten, verwenden Sie bitte die Klassen [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) und [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

Das folgende Codebeispiel zeigt, wie X- und Y-Achsen-Eigenschaften definiert werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### So stellen Sie den DateTime -Wert der Achse ein

Das folgende Codebeispiel zeigt, wie Datums-/ Uhrzeitwerte für Achseneigenschaften festgelegt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### So formatieren Sie den Zahlenwert der Achse

Das folgende Codebeispiel zeigt, wie Sie das Format von Zahlen auf der Wertachse ändern:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### So legen Sie die Grenzen der Achse fest

Die `AxisBound` -Klasse repräsentiert eine minimale oder maximale Grenze von Achsenwerten. Bound kann als numerischer, Datums-/Uhrzeitwert oder als spezieller "Auto" -Wert angegeben werden.

Das folgende Codebeispiel zeigt, wie die Grenzen einer Achse festgelegt werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### So stellen Sie die Intervalleinheit zwischen Etiketten ein

Das folgende Codebeispiel zeigt, wie die Intervalleinheit zwischen Beschriftungen auf einer Achse festgelegt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### So blenden Sie die Diagrammachse aus

Wenn Sie die Diagrammachse ein- oder ausblenden möchten, können Sie dies einfach erreichen, indem Sie den Wert der Eigenschaft `ChartAxis.Hidden` festlegen.

Das folgende Codebeispiel zeigt, wie die Y-Achse des Diagramms ausgeblendet wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### So richten Sie die Diagrammbeschriftung aus

Wenn Sie eine Textausrichtung für mehrzeilige Beschriftungen festlegen möchten, können Sie dies einfach erreichen, indem Sie den Wert der Eigenschaft [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) festlegen.

Das folgende Codebeispiel zeigt, wie die Etikettenausrichtung angekreuzt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word richtet die Diagrammbeschriftung standardmäßig an der Mitte aus.

{{% /alert %}}

## So legen Sie die Füll- und Strichformatierung fest

Die Flächen- und Konturformatierung kann für Diagrammreihen, Datenpunkte und Markierungen festgelegt werden. Dazu müssen Sie die Eigenschaften des Typs `ChartFormat` in den Klassen ChartSeries, ChartDataPoint und ChartMarker sowie Aliase für einige Eigenschaften wie ForeColor, BackColor, Visible und Transparency in der Klasse `Stroke` verwenden.

Das folgende Codebeispiel zeigt, wie die Serienfarbe festgelegt wird:

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

Das folgende Codebeispiel zeigt, wie Linienfarbe und -stärke festgelegt werden:

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
