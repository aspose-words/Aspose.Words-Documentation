---
title: 如何在C++中设置图表轴属性
second_title: Aspose.Words对于C++
articleTitle: 如何设置图表轴属性
linktitle: 如何设置图表轴属性
description: "图表轴调整使用C++."
type: docs
weight: 20
url: /zh/cpp/how-to-set-chart-axis-properties/
---

如果要为值轴处理图表轴、缩放和显示单位，请使用[ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis)、[AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit)和[AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling)类。

下面的代码示例演示如何定义X和Y轴属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## 如何设置轴的日期-时间值

下面的代码示例演示如何将日期/时间值设置为轴属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## 如何格式化轴的数值

下面的代码示例演示如何更改值轴上的数字格式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## 如何设置轴的边界

`AxisBound`类表示轴值的最小值或最大值。 绑定可以指定为数字，日期时间或特殊的"自动"值。

下面的代码示例演示如何设置轴的边界:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## 如何设置标签之间的间隔单位

下面的代码示例演示如何设置轴上标签之间的间隔单位:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## 如何隐藏图表轴

如果要显示或隐藏图表轴，只需通过设置set_Hidden属性的值即可实现此目的。

下面的代码示例演示如何隐藏图表的Y轴:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## 如何对齐图表标签

如果要为多行标签设置文本对齐方式，可以通过设置[TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/)属性的值来简单地实现这一点。 下面的代码示例演示如何勾选标签对齐。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
