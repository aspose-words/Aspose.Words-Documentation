---
title: Как да зададете свойствата на оста на диаграмата в C++
second_title: Aspose.Words за C++
articleTitle: Как да зададете свойства на осите на диаграмата
linktitle: Как да зададете свойства на осите на диаграмата
description: "Настройка на оста на диаграмата чрез C++."
type: docs
weight: 20
url: /bg/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Ако искате да работите с ос на диаграмата, мащабиране и показване на единици за оста на стойностите, моля, използвайте класове [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) и [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Следващият пример за код показва как да дефинирате свойствата на оста Х и у:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Как да зададете стойност за дата и час на оста

Следният пример за код показва как да зададете стойности за дата / час на свойства на осите:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Как да форматирате числова стойност на ОС

Следващият пример за код показва как да промените формата на числата по оста на стойностите:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Как да зададете границите на оста

Клас `AxisBound` представлява минимална или максимална граница от стойности на осите. Подвързването може да бъде зададено като числова, дата-час или специална "автоматична" стойност.

Следващият пример за код показва как да зададете границите на ОС:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Как да зададете интервал между етикетите

Следващият пример за код показва как да зададете интервалната единица между етикетите на ОС:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Как да скриете оста на диаграмата

Ако искате да покажете или скриете оста на диаграмата, можете просто да постигнете това, като зададете стойността на свойството set_Hidden.

Следващият пример за код показва как да скриете оста у на диаграмата:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Как да подравните етикета на диаграмата

Ако искате да зададете подравняване на текст за многоредови етикети, можете просто да постигнете това, като зададете стойността на свойството [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). Следващият пример за код показва как да маркирате подравняването на етикета.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
