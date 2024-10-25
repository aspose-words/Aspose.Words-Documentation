---
title: So legen Sie die Eigenschaften der Diagrammachse in C++ fest
second_title: Aspose.Words für C++
articleTitle: So legen Sie die Eigenschaften der Diagrammachse fest
linktitle: So legen Sie die Eigenschaften der Diagrammachse fest
description: "Optimierung der Diagrammachse mit C++."
type: docs
weight: 20
url: /de/cpp/how-to-set-chart-axis-properties/
---

Wenn Sie mit Diagrammachse, Skalierung und Anzeigeeinheiten für die Wertachse arbeiten möchten, verwenden Sie bitte die Klassen [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) und [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Das folgende Codebeispiel zeigt, wie X- und Y-Achsen-Eigenschaften definiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## So stellen Sie den Datums- / Uhrzeitwert der Achse ein

Das folgende Codebeispiel zeigt, wie Datums-/ Uhrzeitwerte für Achseneigenschaften festgelegt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## So formatieren Sie den Zahlenwert der Achse

Das folgende Codebeispiel zeigt, wie Sie das Format von Zahlen auf der Wertachse ändern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## So legen Sie die Grenzen der Achse fest

Die `AxisBound` -Klasse repräsentiert eine minimale oder maximale Grenze von Achsenwerten. Bound kann als numerischer, Datums-/Uhrzeitwert oder als spezieller "Auto" -Wert angegeben werden.

Das folgende Codebeispiel zeigt, wie die Grenzen einer Achse festgelegt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## So stellen Sie die Intervalleinheit zwischen Etiketten ein

Das folgende Codebeispiel zeigt, wie die Intervalleinheit zwischen Beschriftungen auf einer Achse festgelegt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## So blenden Sie die Diagrammachse aus

Wenn Sie die Diagrammachse ein- oder ausblenden möchten, können Sie dies einfach erreichen, indem Sie den Wert der Eigenschaft set_Hidden festlegen.

Das folgende Codebeispiel zeigt, wie die Y-Achse des Diagramms ausgeblendet wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## So richten Sie die Diagrammbeschriftung aus

Wenn Sie eine Textausrichtung für mehrzeilige Beschriftungen festlegen möchten, können Sie dies einfach erreichen, indem Sie den Wert der Eigenschaft [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/) festlegen. Das folgende Codebeispiel zeigt, wie die Etikettenausrichtung angekreuzt wird.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
