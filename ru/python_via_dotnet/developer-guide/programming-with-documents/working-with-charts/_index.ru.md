---
title: Работа с картами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с диаграммами
linktitle: Работа с диаграммами
description: "Создание и изменение диаграмм различных типов в документе с использованием Python."
type: docs
weight: 310
url: /ru/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Новый [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) Метод был добавлен в [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) класс. Итак, давайте посмотрим, как вставить простую таблицу столбцов в документ с помощью [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) метод:

### Как вставить карту

В этом разделе мы узнаем, как вставить карту в документ.

### Включить диаграмму колонок

Следующий пример кода показывает, как вставить столбцовую диаграмму:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Код дает следующий результат:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Существуют [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) и [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) Методы, которые были подвергнуты воздействию, охватывают все возможные варианты источников данных для всех типов диаграмм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Код дает следующий результат:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Включить рассеяние Чарт

Ниже пример показывает, как вставить диаграмму рассеяния.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Код дает следующий результат:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Включить зону Чарт

Следующий пример кода показывает, как вставить диаграмму области:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Код дает следующий результат:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Включить Bubble Chart

Следующий пример кода показывает, как вставить пузырьковую диаграмму:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Код дает следующий результат:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Работа с графиками через Shape.chart Object

После того, как график был вставлен и заполнен данными, вы можете изменить его внешний вид. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) собственность содержит все варианты, связанные с диаграммами, доступные через общественность API.

Например, давайте изменим [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) Заголовок или поведение легенды:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Код генерирует следующие результаты:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Как работать с ChartSeriesСборник диаграмм

Давайте посмотрим на [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) Коллекция. Все серии карт доступны через [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) коллекция:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Вы можете удалить серию по одной или очистить все из них, а также добавить новую, если это необходимо. Недавно вставленный график имеет некоторые серии по умолчанию, добавленные в эту коллекцию. Чтобы удалить их, вам нужно позвонить [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) метод.

## Работа с Single ChartSeries Class

Вот как работать с определенной серией.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Все одинокие [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) иметь дефолт [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) Пожалуйста, попробуйте использовать следующий код, чтобы изменить их:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Как работать с Single ChartDataPoint `ChartSeries`

Использовать [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) Вы можете настроить форматирование одной точки данных серии диаграмм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Как работать с ChartDataLabel одной серии

Использовать [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) Вы можете указать форматирование одной метки данных серии диаграмм, такой как show/hide LegendKey, CategoryName, SeriesName, Value и т.д.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Пожалуйста, смотрите результат ниже:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Как определить параметры по умолчанию для ChartDataLabels ChartSeries

The [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) класс определяет свойства, которые могут использоваться для установки опций по умолчанию для [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) Серия карт. Эти свойства включают [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) и т.д.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Пожалуйста, смотрите результат ниже:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Как форматировать номер таблички с данными

Использовать [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) Вы можете указать форматирование номера одной метки данных диаграммы.

Следующий пример кода показывает, как форматировать номер метки данных:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Как установить свойства Chart Axis

Если вы хотите работать с осью диаграмм, масштабированием и отображением блоков для оси значений, пожалуйста, используйте [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), и [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) классы.

Следующий пример кода показывает, как определить свойства оси X и Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Как установить Date Временное значение оси

Следующий пример кода показывает, как установить значения даты/времени на свойства оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Как определить значение числа оси

Следующий пример кода показывает, как изменить формат чисел на оси значений:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Как установить границы оси

The [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) Класс представляет собой минимальный или максимальный предел значений оси. Связь может быть указана как цифровое, дата-время или специальное "авто" значение.

Следующий пример кода показывает, как установить границы оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Как установить интервал между ярлыками

Следующий пример кода показывает, как установить интервал между ярлыками на оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Как скрыть ось диаграммы

Если вы хотите показать или скрыть ось диаграммы, вы можете просто достичь этого, установив значение [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) собственность.

Следующий пример кода показывает, как скрыть Y-ось диаграммы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Как выровнять Chart Label

Если вы хотите установить текстовое выравнивание для многострочных меток, вы можете просто достичь этого, установив значение [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) собственность.

Следующий пример кода показывает, как выравнивать этикетку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word по умолчанию выравнивает Chart Label в центр.

{{% /alert %}}

## Как установить наполнение и форматирование инсульта

Форматирование заполнения и хода может быть установлено для серий диаграмм, точек данных и маркеров. Для этого нужно использовать свойства [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) тип в котором [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), и [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) классы, а также псевдонимы для некоторых свойств, таких как [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), и [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) в [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) класс.

Следующий пример кода показывает, как установить цвет серии:

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

Следующий пример кода показывает, как установить цвет линии и вес:

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
