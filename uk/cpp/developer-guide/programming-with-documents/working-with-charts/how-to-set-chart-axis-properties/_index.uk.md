---
title: Як задати властивості осі діаграми в C++
second_title: Aspose.Words для C++
articleTitle: Як задати властивості осі діаграми
linktitle: Як задати властивості осі діаграми
description: "Налаштування осі діаграми за допомогою C++."
type: docs
weight: 20
url: /uk/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Якщо ви хочете працювати з віссю діаграми, масштабуванням та одиницями відображення для осі значень, будь ласка, використовуйте класи [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) та [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Наступний приклад коду показує, як визначити властивості осей X та Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Як встановити значення дати та часу на осі

Наступний приклад коду показує, як встановити значення дати та часу для властивостей осі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Як відформатувати Числове значення осі

Наступний приклад коду показує, як змінити формат чисел на осі значень:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Як встановити межі осі

Клас `AxisBound` представляє мінімальну або максимальну межу значень осі. Межа може бути задана у вигляді числа, дати і часу або спеціального "автоматичного" значення.

У наступному прикладі коду показано, як задати межі осі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Як встановити одиницю виміру інтервалу між написами

У наступному прикладі коду показано, як задати одиницю виміру інтервалу між мітками на осі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Як приховати вісь діаграми

Якщо ви хочете відобразити або приховати вісь діаграми, ви можете просто досягти цього, встановивши значення властивості set_Hidden.

Наступний приклад коду показує, як приховати вісь Y на діаграмі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Як вирівняти мітку діаграми

Якщо ви хочете налаштувати вирівнювання тексту для багаторядкових міток, ви можете просто досягти цього, встановивши значення властивості [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). У наступному прикладі коду показано, як встановити прапорець вирівнювання написів.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
