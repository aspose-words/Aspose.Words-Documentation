---
title: Arbeiten mit Diagrammen in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Diagrammen
linktitle: Arbeiten mit Diagrammen
description: "Erstellen und ändern Sie Diagramme verschiedener Typen in einem Dokument mit Python."
type: docs
weight: 310
url: /de/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Der [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Klasse wurde eine neue [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/)-Methode hinzugefügt. Sehen wir uns also an, wie man mithilfe der [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/)-Methode ein einfaches Säulendiagramm in das Dokument einfügt:

### So fügen Sie ein Diagramm ein

In diesem Abschnitt erfahren Sie, wie Sie ein Diagramm in ein Dokument einfügen.

### Säulendiagramm einfügen

Das folgende Codebeispiel zeigt, wie man ein Säulendiagramm einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Der Code erzeugt das folgende Ergebnis:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Es gibt [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/)-, [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/)- und [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/)-Methoden, die alle möglichen Varianten von Datenquellen für alle Diagrammtypen abdecken:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Der Code erzeugt das folgende Ergebnis:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Streudiagramm einfügen

Das folgende Beispiel zeigt, wie ein Streudiagramm eingefügt wird.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Der Code erzeugt das folgende Ergebnis:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Flächendiagramm einfügen

Das folgende Codebeispiel zeigt, wie ein Flächendiagramm eingefügt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Der Code erzeugt das folgende Ergebnis:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Blasendiagramm einfügen

Das folgende Codebeispiel zeigt, wie man ein Blasendiagramm einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Der Code erzeugt das folgende Ergebnis:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Arbeiten mit Diagrammen über das Shape.chart-Objekt

Sobald das Diagramm eingefügt und mit Daten gefüllt wurde, können Sie sein Erscheinungsbild ändern. Die [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/)-Eigenschaft enthält alle diagrammbezogenen Optionen, die über das öffentliche API verfügbar sind.

Lassen Sie uns beispielsweise das Verhalten von [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/)-Titeln oder -Legenden ändern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Der Code generiert die folgenden Ergebnisse:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## So arbeiten Sie mit ChartSeriesCollection of Chart

Schauen wir uns die [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)-Sammlung an. Alle Diagrammserien sind über die [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/)-Sammlung verfügbar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Sie können Serien einzeln oder alle löschen und bei Bedarf eine neue hinzufügen. Dem neu eingefügten Diagramm wurden dieser Sammlung einige Standardreihen hinzugefügt. Um sie zu entfernen, müssen Sie die [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/)-Methode aufrufen.

## Arbeiten mit der Single ChartSeries-Klasse

Hier erfahren Sie, wie Sie mit einer bestimmten Serie arbeiten.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Alle einzelnen [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)-Dateien verfügen über standardmäßige [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/)-Optionen. Versuchen Sie bitte, diese mit dem folgenden Code zu ändern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## So arbeiten Sie mit einem einzelnen ChartDataPoint eines `ChartSeries`

Mit [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) können Sie die Formatierung eines einzelnen Datenpunkts der Diagrammreihe anpassen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## So arbeiten Sie mit ChartDataLabel einer einzelnen ChartSeries

Mit [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) können Sie die Formatierung einer einzelnen Datenbeschriftung der Diagrammreihe festlegen, z. B. LegendKey, CategoryName, SeriesName, Value usw. ein-/ausblenden.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## So definieren Sie Standardoptionen für ChartDataLabels von ChartSeries

Die [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/)-Klasse definiert Eigenschaften, die zum Festlegen von Standardoptionen für [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) für Diagrammreihen verwendet werden können. Zu diesen Eigenschaften gehören [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) usw.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Bitte sehen Sie sich das Ergebnis unten an:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## So formatieren Sie die Nummer der Diagrammdatenbeschriftung

Mit [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) können Sie die Zahlenformatierung einer einzelnen Datenbeschriftung des Diagramms festlegen.

Das folgende Codebeispiel zeigt, wie eine Nummer der Datenbeschriftung formatiert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## So legen Sie die Eigenschaften der Diagrammachse fest

Wenn Sie mit Diagrammachsen, Skalierungen und Anzeigeeinheiten für die Werteachse arbeiten möchten, verwenden Sie bitte die Klassen [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) und [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

Das folgende Codebeispiel zeigt, wie X- und Y-Achseneigenschaften definiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### So legen Sie den Date-Zeitwert der Achse fest

Das folgende Codebeispiel zeigt, wie Datums-/Uhrzeitwerte für Achseneigenschaften festgelegt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### So formatieren Sie den Zahlenwert einer Achse

Das folgende Codebeispiel zeigt, wie Sie das Format von Zahlen auf der Werteachse ändern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### So legen Sie Achsengrenzen fest

Die [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/)-Klasse stellt eine minimale oder maximale Grenze von Achsenwerten dar. Bound kann als numerischer Wert, Datum-Uhrzeit-Wert oder spezieller "Auto"-Wert angegeben werden.

Das folgende Codebeispiel zeigt, wie Grenzen einer Achse festgelegt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### So legen Sie die Intervalleinheit zwischen Etiketten fest

Das folgende Codebeispiel zeigt, wie die Intervalleinheit zwischen Beschriftungen auf einer Achse festgelegt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### So blenden Sie die Diagrammachse aus

Wenn Sie die Diagrammachse ein- oder ausblenden möchten, können Sie dies einfach erreichen, indem Sie den Wert der [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/)-Eigenschaft festlegen.

Das folgende Codebeispiel zeigt, wie Sie die Y-Achse des Diagramms ausblenden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### So richten Sie die Diagrammbeschriftung aus

Wenn Sie eine Textausrichtung für mehrzeilige Etiketten festlegen möchten, können Sie dies einfach erreichen, indem Sie den Wert der [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/)-Eigenschaft festlegen.

Das folgende Codebeispiel zeigt, wie die Beschriftungsausrichtung aktiviert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word richtet die Diagrammbeschriftung standardmäßig in der Mitte aus.

{{% /alert %}}

## So legen Sie die Füll- und Strichformatierung fest

Füll- und Strichformatierungen können für Diagrammreihen, Datenpunkte und Markierungen festgelegt werden. Dazu müssen Sie die Eigenschaften des [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/)-Typs in den [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)-, [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/)- und [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/)-Klassen sowie Aliase für einige Eigenschaften wie [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) und [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) in der [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/)-Klasse verwenden.

Das folgende Codebeispiel zeigt, wie die Serienfarbe festgelegt wird:

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

Das folgende Codebeispiel zeigt, wie Linienfarbe und -stärke festgelegt werden:

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
