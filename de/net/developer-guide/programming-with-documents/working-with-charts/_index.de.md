---
title: Arbeiten mit Diagrammen in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Diagrammen
linktitle: Arbeiten mit Diagrammen
description: "Einführung in die Diagrammfunktion, wie man Diagramme mit C# erstellt und bearbeitet."
type: docs
weight: 310
url: /de/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Der [DocumentBuilder](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/)-Klasse wurde eine neue [InsertChart](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertchart/)-Methode hinzugefügt. Sehen wir uns also an, wie man mit der [InsertChart](https://reference.aspose.com/words/de/net/aspose.words/documentbuilder/insertchart/)-Methode ein einfaches Säulendiagramm in das Dokument einfügt.

## So fügen Sie ein Diagramm ein

In diesem Abschnitt erfahren Sie, wie Sie ein Diagramm in ein Dokument einfügen.

### Säulendiagramm einfügen

Das folgende Codebeispiel zeigt, wie man ein Säulendiagramm einfügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Der Code erzeugt das folgende Ergebnis:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Es gibt vier verschiedene Überladungen für die Add-Methode der Serie, die bereitgestellt wurde, um alle möglichen Varianten von Datenquellen für alle Diagrammtypen abzudecken:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Der Code erzeugt das folgende Ergebnis:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Streudiagramm einfügen

Das folgende Codebeispiel zeigt, wie ein Streudiagramm eingefügt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Der Code erzeugt das folgende Ergebnis:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Flächendiagramm einfügen

Das folgende Codebeispiel zeigt, wie ein Flächendiagramm eingefügt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Der Code erzeugt das folgende Ergebnis:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Blasendiagramm einfügen

Das folgende Codebeispiel zeigt, wie man ein Blasendiagramm einfügt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Der Code erzeugt das folgende Ergebnis:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Arbeiten mit Diagrammen über `Shape.Chart`-Objekt

Sobald das Diagramm eingefügt und mit Daten gefüllt wurde, können Sie sein Erscheinungsbild ändern. Die `Shape.Chart`-Eigenschaft enthält alle diagrammbezogenen Optionen, die über das öffentliche API verfügbar sind.

Lassen Sie uns beispielsweise das Verhalten des Diagrammtitels oder der Legende ändern:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Der Code generiert die folgenden Ergebnisse:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## So arbeiten Sie mit ChartSeriesCollection of Chart

Schauen wir uns die [ChartSeries](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartseries/)-Sammlung an. Alle Diagrammreihen sind über die [chart.Series](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chart/series/)-Sammlung verfügbar, bei der es sich um **IEnumerable** handelt:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Sie können Serien einzeln oder alle löschen und bei Bedarf eine neue hinzufügen. Dem neu eingefügten Diagramm wurden dieser Sammlung einige Standardreihen hinzugefügt. Um sie zu entfernen, müssen Sie die **chart.Series.Clear()**-Methode aufrufen.

## Arbeiten mit der Single ChartSeries-Klasse

So arbeiten Sie mit einer bestimmten Serie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Alle einzelnen [ChartSeries](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartseries/)-Dateien verfügen über standardmäßige [ChartDataPoint](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartdatapoint/)-Optionen. Versuchen Sie bitte, diese mit dem folgenden Code zu ändern:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## So arbeiten Sie mit einem einzelnen ChartDataPoint eines `ChartSeries`

Mit [ChartDataPoint](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartdatapoint/) können Sie die Formatierung eines einzelnen Datenpunkts der Diagrammreihe anpassen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## So arbeiten Sie mit ChartDataLabel einer einzelnen ChartSeries

Mit [ChartDataLabel](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartdatalabel/) können Sie die Formatierung einer einzelnen Datenbeschriftung der Diagrammreihe festlegen, z. B. LegendKey, CategoryName, SeriesName, Value usw. ein-/ausblenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## So definieren Sie Standardoptionen für ChartDataLabels von ChartSeries

Die [ChartDataLabelCollection](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartdatalabelcollection/)-Klasse definiert Eigenschaften, die zum Festlegen von Standardoptionen für **ChartDataLabels** für Diagramm-**Series** verwendet werden können. Zu diesen Eigenschaften gehören ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue usw.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## So formatieren Sie die Nummer der Diagrammdatenbeschriftung

Mit [NumberFormat](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) können Sie die Zahlenformatierung einer einzelnen Datenbeschriftung des Diagramms festlegen.

Das folgende Codebeispiel zeigt, wie eine Nummer der Datenbeschriftung formatiert wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## So legen Sie die Eigenschaften der Diagrammachse fest

Wenn Sie mit Diagrammachsen, Skalierungen und Anzeigeeinheiten für die Werteachse arbeiten möchten, verwenden Sie bitte die Klassen [ChartAxis](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/axisdisplayunit/) und [AxisScaling](https://reference.aspose.com/words/de/net/aspose.words.drawing.charts/axisscaling/).

Das folgende Codebeispiel zeigt, wie X- und Y-Achseneigenschaften definiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### So legen Sie den Date-Zeitwert der Achse fest

Das folgende Codebeispiel zeigt, wie Datums-/Uhrzeitwerte für Achseneigenschaften festgelegt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### So formatieren Sie den Zahlenwert einer Achse

Das folgende Codebeispiel zeigt, wie Sie das Format von Zahlen auf der Werteachse ändern:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### So legen Sie Achsengrenzen fest

Die `AxisBound`-Klasse stellt eine minimale oder maximale Grenze von Achsenwerten dar. Bound kann als numerischer Wert, Datum-Uhrzeit-Wert oder spezieller "Auto"-Wert angegeben werden.

Das folgende Codebeispiel zeigt, wie Grenzen einer Achse festgelegt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### So legen Sie die Intervalleinheit zwischen Etiketten fest

Das folgende Codebeispiel zeigt, wie die Intervalleinheit zwischen Beschriftungen auf einer Achse festgelegt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### So blenden Sie die Diagrammachse aus

Wenn Sie die Diagrammachse ein- oder ausblenden möchten, können Sie dies einfach erreichen, indem Sie den Wert der `ChartAxis.Hidden`-Eigenschaft festlegen.

Das folgende Codebeispiel zeigt, wie Sie die Y-Achse des Diagramms ausblenden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### So richten Sie die Diagrammbeschriftung aus

Wenn Sie eine Textausrichtung für mehrzeilige Beschriftungen festlegen möchten, können Sie dies einfach durch Festlegen des Werts der [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Ausrichtung**-Eigenschaft erreichen.

Das folgende Codebeispiel zeigt, wie die Beschriftungsausrichtung aktiviert wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word richtet die Diagrammbeschriftung standardmäßig in der Mitte aus.

{{% /alert %}}

## So legen Sie die Füll- und Strichformatierung fest

Füll- und Strichformatierungen können für Diagrammreihen, Datenpunkte und Markierungen festgelegt werden. Dazu müssen Sie die Eigenschaften des **ChartFormat**-Typs in den **ChartSeries**-, **ChartDataPoint**- und **ChartMarker**-Klassen sowie Aliase für einige Eigenschaften wie ForeColor, BackColor, Visible und Transparency in der `Stroke`-Klasse verwenden.

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

doc.Save(dir + "ColumnColor.docx");
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Sie Linienfarbe und -stärke festlegen:

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
