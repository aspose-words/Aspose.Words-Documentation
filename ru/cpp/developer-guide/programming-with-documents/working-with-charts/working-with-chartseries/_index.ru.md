---
title: Работа с графическими рядами на C++
second_title: Aspose.Words для C++
articleTitle: Работа с графическими рядами
linktitle: Работа с графическими рядами
description: "Настройка рядов диаграмм с помощью C++."
type: docs
weight: 40
url: /ru/cpp/working-with-chartseries/
---

Aspose.Words позволяет пользователям работать с коллекцией ChartSeriesCollection несколькими способами.

## Работа с ChartSeriesКоллекцией диаграмм

Давайте заглянем в коллекцию [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/). Все серии диаграмм доступны через [ChartSeriesCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseriescollection/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cpp" >}}


## Работа с одним классом chartSeries

Вот как работать с конкретной серией:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cpp" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![work-with-chartseries-aspose-words-cpp-1](working-with-chartseries-1.png)


Все одиночные [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) имеют параметры по умолчанию [ChartDataPoint](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/get_datapoints/), пожалуйста, попробуйте изменить их с помощью следующего кода:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cpp" >}}

![work-with-chartseries-aspose-words-cpp-2](working-with-chartseries-2.png)

## Как работать с одной точкой ChartDataPoint из `ChartSeries`

Используя [ChartDataPoint](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapoint/), вы можете настроить форматирование отдельной точки данных в ряду диаграмм:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cpp" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![work-with-chartseries-aspose-words-cpp-3](working-with-chartseries-3.png)
