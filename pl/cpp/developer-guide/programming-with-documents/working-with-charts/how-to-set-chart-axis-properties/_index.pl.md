---
title: Jak ustawić właściwości osi wykresu w C++
second_title: Aspose.Words dla C++
articleTitle: Jak ustawić właściwości osi wykresu
linktitle: Jak ustawić właściwości osi wykresu
description: "Strojenie osi wykresu za pomocą C++."
type: docs
weight: 20
url: /pl/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Jeśli chcesz pracować z osiami wykresu, skalowaniem i jednostkami wyświetlania dla osi wartości, użyj klas [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) i [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Poniższy przykład kodu pokazuje, jak zdefiniować właściwości osi X i y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Jak ustawić wartość Data-Godzina osi

Poniższy przykład kodu pokazuje, jak ustawić wartości daty/godziny na właściwości osi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Jak sformatować wartość liczbową osi

Poniższy przykład kodu pokazuje, jak zmienić format liczb na osi wartości:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Jak ustawić granice osi

Klasa `AxisBound` reprezentuje minimalną lub maksymalną granicę wartości osi. Powiązanie może być określone jako wartość liczbowa, data-godzina lub specjalna wartość "auto".

Poniższy przykład kodu pokazuje, jak ustawić granice osi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Jak ustawić jednostkę interwału między etykietami

Poniższy przykład kodu pokazuje, jak ustawić jednostkę interwału między etykietami na osi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Jak ukryć Oś wykresu

Jeśli chcesz pokazać lub ukryć oś wykresu, możesz to po prostu osiągnąć, ustawiając wartość właściwości set_Hidden.

Poniższy przykład kodu pokazuje, jak ukryć oś Y wykresu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Jak wyrównać Etykietę wykresu

Jeśli chcesz ustawić wyrównanie tekstu dla etykiet wielowierszowych, możesz to po prostu osiągnąć, ustawiając wartość właściwości [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). Poniższy przykład kodu pokazuje, jak zaznaczyć wyrównanie etykiet.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
