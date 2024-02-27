---
title: Работа с диаграммами в Python
second_title: Aspose.Words за Python via .NET
articleTitle: Работа с диаграммами
linktitle: Работа с диаграммами
description: "Создавайте и изменяйте диаграммы различных типов в документе с помощью Python."
type: docs
weight: 310
url: /ru/python-net/working-with-charts/
---

В класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) добавлен новый метод [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/). Итак, давайте посмотрим, как вставить в документ простую гистограмму методом [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Как вставить диаграмму

В этом разделе мы научимся вставлять диаграмму в документ.

### Вставить столбчатую диаграмму

В следующем примере кода показано, как вставить гистограмму:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Код дает следующий результат:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Существуют методы [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) и [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), которые призваны охватить все возможные варианты источников данных для всех типов диаграмм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Код дает следующий результат:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Вставить точечную диаграмму

В примере ниже показано, как вставить точечную диаграмму.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Код дает следующий результат:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Вставить диаграмму площади

В следующем примере кода показано, как вставить диаграмму с областями:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Код дает следующий результат:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Вставить пузырьковую диаграмму

В следующем примере кода показано, как вставить пузырьковую диаграмму:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Код дает следующий результат:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Работа с диаграммами через объект Shape.chart

После того как диаграмма была вставлена и заполнена данными, вы можете изменить ее внешний вид. Свойство [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) содержит все параметры, связанные с диаграммами, доступные через общедоступный API.

Например, давайте изменим поведение заголовка или легенды [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Код генерирует следующие результаты:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Как работать с ChartSeriesCollection of Chart

Давайте посмотрим на коллекцию [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Все серии диаграмм доступны в коллекции [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Вы можете удалять серии по одной или очищать их все, а также при необходимости добавлять новые. Недавно вставленная диаграмма содержит некоторые серии по умолчанию, добавленные в эту коллекцию. Чтобы их удалить, нужно вызвать метод [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Работа с одним классом ChartSeries

Вот как работать с конкретной серией.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Пожалуйста, посмотрите результат ниже:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Все одиночные [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) имеют параметры по умолчанию [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/). Попробуйте использовать следующий код, чтобы изменить их:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Пожалуйста, посмотрите результат ниже:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Как работать с одной точкой ChartDataPoint `ChartSeries`

Используя [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), вы можете настроить форматирование отдельной точки данных серии диаграмм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Пожалуйста, посмотрите результат ниже:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Как работать с ChartDataLabel одной серии ChartSeries

Используя [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/), вы можете указать форматирование одной метки данных серии диаграмм, например показать/скрыть LegendKey, CategoryName, SeriesName, Value и т.д.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Пожалуйста, посмотрите результат ниже:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Как определить параметры по умолчанию для ChartDataLabels ChartSeries

Класс [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) определяет свойства, которые можно использовать для установки параметров по умолчанию для [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) для серий диаграмм. К этим свойствам относятся [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) и т.д.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Пожалуйста, посмотрите результат ниже:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Как отформатировать метку номера диаграммы

Используя [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/), вы можете указать форматирование чисел для одной метки данных диаграммы.

В следующем примере кода показано, как отформатировать число метки данных:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Как установить свойства оси диаграммы

Если вы хотите работать с осью диаграммы, масштабированием и единицами отображения для оси значений, используйте классы [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) и [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

В следующем примере кода показано, как определить свойства осей X и Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Как установить Date Временное значение оси

В следующем примере кода показано, как установить значения даты и времени для свойств оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Как отформатировать числовое значение оси

В следующем примере кода показано, как изменить формат чисел на оси значений:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Как установить границы оси

Класс [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) представляет минимальную или максимальную границу значений оси. Привязка может быть указана как числовое значение, значение даты и времени или специальное "автоматическое" значение.

В следующем примере кода показано, как установить границы оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Как установить единицу интервала между метками

В следующем примере кода показано, как установить единицу интервала между метками на оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Как скрыть ось диаграммы

Если вы хотите отобразить или скрыть ось диаграммы, вы можете просто добиться этого, установив значение свойства [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

В следующем примере кода показано, как скрыть ось Y диаграммы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Как выровнять метку диаграммы

Если вы хотите настроить выравнивание текста для многострочных меток, вы можете просто добиться этого, установив значение свойства [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

В следующем примере кода показано, как отметить выравнивание меток:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word по умолчанию выравнивает метку диаграммы по центру.

{{% /alert %}}

## Как установить форматирование заливки и обводки

Форматирование заливки и обводки можно настроить для серий диаграмм, точек данных и маркеров. Для этого необходимо использовать свойства типа [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) в классах [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) и [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), а также псевдонимы некоторых свойств, например [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) и [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) в классе [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

В следующем примере кода показано, как установить цвет серии:

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

В следующем примере кода показано, как установить цвет и толщину линии:

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
