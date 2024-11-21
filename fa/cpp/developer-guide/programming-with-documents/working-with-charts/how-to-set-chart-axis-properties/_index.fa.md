---
title: نحوه تنظیم ویژگی های محور نمودار در C++
second_title: Aspose.Words برای C++
articleTitle: نحوه تنظیم ویژگی های محور نمودار
linktitle: نحوه تنظیم ویژگی های محور نمودار
description: "تنظیم محور نمودار با استفاده از C++."
type: docs
weight: 20
url: /fa/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

اگر می خواهید با محور نمودار، مقیاس بندی و واحدهای نمایش برای محور ارزش کار کنید، لطفا از کلاس های [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis)، [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) و [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه ویژگی های محور X و Y را تعریف کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## چگونه مقدار تاریخ و زمان محور را تنظیم کنیم

مثال کد زیر نشان می دهد که چگونه مقادیر تاریخ/زمان را به ویژگی های محور تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## نحوه قالب بندی تعداد ارزش محور

مثال کد زیر نشان می دهد که چگونه فرمت اعداد را در محور ارزش تغییر دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## نحوه تنظیم مرزهای محور

کلاس `AxisBound` حداقل یا حداکثر مرز مقادیر محور را نشان می دهد. Bound را می توان به عنوان یک مقدار عددی، تاریخ و زمان یا یک مقدار ویژه "خودکار" مشخص کرد.

مثال کد زیر نشان می دهد که چگونه مرزهای یک محور را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## نحوه تنظیم واحد فاصله بین برچسب ها

مثال کد زیر نشان می دهد که چگونه واحد فاصله بین برچسب ها را در یک محور تنظیم کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## چگونه برای پنهان کردن محور نمودار

اگر می خواهید محور نمودار را نشان دهید یا پنهان کنید، می توانید به سادگی با تنظیم مقدار ویژگی set_Hidden به این هدف برسید.

مثال کد زیر نشان می دهد که چگونه محور Y نمودار را پنهان کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## چگونه برچسب نمودار را تراز کنیم

اگر می خواهید یک تراز متن برای برچسب های چند خطی تنظیم کنید، می توانید به سادگی با تنظیم مقدار ویژگی [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/) به این هدف برسید. مثال کد زیر نشان می دهد که چگونه تراز برچسب را تیک بزنید.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
