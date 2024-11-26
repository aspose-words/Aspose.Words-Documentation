---
title: Работа с графиками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с графиками
linktitle: Работа с графиками
description: "Создавайте и изменяйте диаграммы различных типов в документе, используя Python."
type: docs
weight: 310
url: /ru/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

В класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) был добавлен новый метод [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/). Итак, давайте посмотрим, как вставить простую столбчатую диаграмму в документ с помощью метода [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Как вставить диаграмму

В этом разделе мы узнаем, как вставить диаграмму в документ.

### Вставить столбчатую диаграмму

В следующем примере кода показано, как вставить столбчатую диаграмму:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Код выдает следующий результат:

![create-column-chart-aspose-words-net](working-with-charts-1.png)


Существуют методы [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) и [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), которые были использованы для охвата всех возможных вариантов источников данных для всех типов диаграмм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Код выдает следующий результат:

![create-column-chart-from-datasource-aspose-words-net](working-with-charts-2.png)

### Вставить точечную диаграмму

В приведенном ниже примере показано, как вставить точечную диаграмму.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Код выдает следующий результат:

![scatter-chart-aspose-words-net](working-with-charts-3.png)

### Вставка диаграммы области

В следующем примере кода показано, как вставить областную диаграмму:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Код выдает следующий результат:

![area-chart-aspose-words-net](working-with-charts-4.png)

### Вставить пузырьковую диаграмму

В следующем примере кода показано, как вставить пузырьковую диаграмму:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Код выдает следующий результат:

![bubble-chart-aspose-words-net](working-with-charts-5.png)

## Работа с диаграммами с помощью объекта Shape.chart

После того, как диаграмма была вставлена и заполнена данными, вы можете изменить ее внешний вид. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) свойство содержит все связанные с диаграммой параметры, доступные через общедоступный API.

Например, давайте изменим поведение заголовка [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) или легенды:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Код генерирует следующие результаты:

![line-chart-aspose-words-net](working-with-charts-6.png)

## Как работать с ChartSeriesCollection диаграммы

Давайте заглянем в коллекцию [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Все серии диаграмм доступны в коллекции [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/).:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Вы можете удалять ряды по одному или очистить их все, а также добавить новый, если это необходимо. Во вновь вставленной диаграмме в эту коллекцию добавлены некоторые ряды по умолчанию. Чтобы удалить их, вам нужно вызвать метод [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Работа с одним классом ChartSeries

Вот как работать с конкретной серией.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![line-chart-chartseries-aspose-words-net](working-with-charts-7.png)


Все одиночные [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) имеют параметры по умолчанию [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), пожалуйста, попробуйте изменить их с помощью следующего кода:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![line-chart-chartdatapoint-aspose-words-net](working-with-charts-8.png)

## Как работать с одним ChartDataPoint из `ChartSeries`

Используя [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), вы можете настроить форматирование отдельной точки данных в ряду диаграмм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![line-chart-datapoint-aspose-words-net](working-with-charts-9.png)

## Как работать с ChartDataLabel из одного ChartSeries

Используя [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/), вы можете задать форматирование отдельной метки данных в серии диаграмм, например, показать/скрыть LegendKey, CategoryName, SeriesName, Значение и т.д.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![bar-chart-aspose-words-net](working-with-charts-10.png)

## Как определить параметры по умолчанию для ChartDataLabels из ChartSeries

Класс [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) определяет свойства, которые можно использовать для установки параметров по умолчанию для [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) для рядов диаграмм. Эти свойства включают в себя [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) и т.д.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![pie-chart-aspose-words-net](working-with-charts-11.png)

## Как отформатировать номер метки данных диаграммы

Используя [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/), вы можете задать числовое оформление отдельной метки данных на диаграмме.

В следующем примере кода показано, как отформатировать номер метки данных:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Как задать свойства оси диаграммы

Если вы хотите работать с осью диаграммы, масштабированием и единицами отображения для оси значений, пожалуйста, используйте классы [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) и [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

В следующем примере кода показано, как определить свойства осей X и Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Как установить значение даты и времени на оси

В следующем примере кода показано, как задать значения даты и времени для свойств оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Как отформатировать числовое значение оси

В следующем примере кода показано, как изменить формат чисел на оси значений:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Как установить границы оси

Класс [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) представляет минимальную или максимальную границу значений оси. Граница может быть задана в виде числа, даты и времени или специального "автоматического" значения.

В следующем примере кода показано, как задать границы оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Как установить единицу измерения интервала между надписями

В следующем примере кода показано, как задать единицу измерения интервала между метками на оси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Как скрыть ось диаграммы

Если вы хотите отобразить или скрыть ось диаграммы, вы можете просто добиться этого, установив значение свойства [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

В следующем примере кода показано, как скрыть ось Y на диаграмме:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Как выровнять метку диаграммы

Если вы хотите задать выравнивание текста для многострочных надписей, вы можете просто добиться этого, установив значение свойства [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

В следующем примере кода показано, как установить флажок для выравнивания меток:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS По умолчанию Word выравнивает метку диаграммы по центру.

{{% /alert %}}

## Как настроить форматирование заливки и обводки

Для рядов диаграмм, точек данных и маркеров можно задать форматирование заливки и обводки. Для этого вам необходимо использовать свойства типа [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) в классах [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) и [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), а также псевдонимы для некоторых свойств, таких как [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), и [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) в классе [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

В следующем примере кода показано, как задать цвет серии:

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

В следующем примере кода показано, как задать цвет и вес линии:

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
