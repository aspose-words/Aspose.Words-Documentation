---
title: Как задать свойства оси диаграммы в C++
second_title: Aspose.Words для C++
articleTitle: Как задать свойства оси диаграммы
linktitle: Как задать свойства оси диаграммы
description: "Настройка оси диаграммы с помощью C++."
type: docs
weight: 20
url: /ru/cpp/how-to-set-chart-axis-properties/
---

Если вы хотите работать с осью диаграммы, масштабированием и единицами отображения для оси значений, пожалуйста, используйте классы [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) и [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

В следующем примере кода показано, как определить свойства осей X и Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Как установить значение даты и времени на оси

В следующем примере кода показано, как задать значения даты и времени для свойств оси:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Как отформатировать числовое значение оси

В следующем примере кода показано, как изменить формат чисел на оси значений:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Как установить границы оси

Класс `AxisBound` представляет минимальную или максимальную границу значений оси. Граница может быть задана в виде числа, даты и времени или специального "автоматического" значения.

В следующем примере кода показано, как задать границы оси:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Как установить единицу измерения интервала между надписями

В следующем примере кода показано, как задать единицу измерения интервала между метками на оси:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Как скрыть ось диаграммы

Если вы хотите отобразить или скрыть ось диаграммы, вы можете просто добиться этого, установив значение свойства set_Hidden.

В следующем примере кода показано, как скрыть ось Y на диаграмме:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Как выровнять метку диаграммы

Если вы хотите настроить выравнивание текста для многострочных надписей, вы можете просто добиться этого, установив значение свойства [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). В следующем примере кода показано, как установить флажок выравнивания надписей.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
