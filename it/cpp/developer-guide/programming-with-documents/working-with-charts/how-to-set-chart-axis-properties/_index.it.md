---
title: Come impostare le proprietà degli assi del grafico in C++
second_title: Aspose.Words per C++
articleTitle: Come impostare le proprietà dell'asse grafico
linktitle: Come impostare le proprietà dell'asse grafico
description: "Asse grafico tuning utilizzando C++."
type: docs
weight: 20
url: /it/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Se si desidera lavorare con l'asse grafico, il ridimensionamento e le unità di visualizzazione per l'asse dei valori, utilizzare le classi [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) e [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

L'esempio di codice seguente mostra come definire le proprietà degli assi X e Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Come impostare il valore Data-Ora dell'asse

L'esempio di codice seguente mostra come impostare i valori di data/ora sulle proprietà dell'asse:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Come formattare il valore numerico dell'asse

Il seguente esempio di codice mostra come modificare il formato dei numeri sull'asse dei valori:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Come impostare i limiti dell'asse

La classe `AxisBound` rappresenta un limite minimo o massimo dei valori degli assi. Bound può essere specificato come un valore numerico, data-ora o uno speciale valore "auto".

L'esempio di codice seguente mostra come impostare i limiti di un asse:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Come impostare l'unità di intervallo tra le etichette

L'esempio di codice seguente mostra come impostare l'unità di intervallo tra le etichette su un asse:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Come nascondere l'asse del grafico

Se si desidera mostrare o nascondere l'asse del grafico, è sufficiente impostare il valore della proprietà set_Hidden.

Il seguente esempio di codice mostra come nascondere l'asse Y del grafico:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Come allineare l'etichetta del grafico

Se si desidera impostare un allineamento del testo per le etichette a più righe, è sufficiente impostare il valore della proprietà [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). Il seguente esempio di codice mostra come spuntare l'allineamento delle etichette.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
