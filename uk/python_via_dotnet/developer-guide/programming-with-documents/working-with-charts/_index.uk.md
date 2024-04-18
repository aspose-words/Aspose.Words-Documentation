---
title: Робота з графіками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з графіками
linktitle: Робота з графіками
description: "Створення та редагування діаграм різних типів у документі Pythonй"
type: docs
weight: 310
url: /uk/python-net/working-with-charts/
---

Нові [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) метод додано в [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас. Отже, побачимо, як вставити просту таблицю стовпців у документ, використовуючи [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) метод:

### Як вставити діаграму

У цьому розділі ми дізнаємося, як вставити діаграму в документ.

### Вставити колону діаграми

Приклад наступного коду показує, як вставити діаграму стовпців:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Код виробляє наступний результат:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Є [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) і [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) методи, які піддаються обкладанню всіх можливих варіантів джерел даних для всіх типів діаграм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Код виробляє наступний результат:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Вставити Scatter Графік

Нижче показано, як вставити діаграму скатерів.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Код виробляє наступний результат:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Вставити площу Графік

Приклад коду показує, як вставити діаграму області:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Код виробляє наступний результат:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Вставити Bubble Chart

Приклад наступного коду показує, як вставити діаграму міхура:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Код виробляє наступний результат:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Робота з графіками через об'єкт Shape.chart

Після того, як графік був вставлений і заповнений даними, ви зможете змінити зовнішній вигляд. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) майно містить всі параметри діаграми, доступні через публічний APIй

Наприклад, зміна дати [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) Назва або легенда поведінки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Код генерує результати:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Як працювати з ChartSeriesCollection

Давайте подивимося [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) збірка. Всі серії діаграм доступні через [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) Колекція:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Ви можете видалити серію один за одним або очистити всі вони, а також додати новий, якщо це потрібно. До цієї колекції додано нову таблицю за замовчуванням. Щоб видалити їх потрібно [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) метод.

## Робота з Single ChartSeries клас

Ось як працювати з певною серією.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Будь ласка, введіть результат нижче:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Всі [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) За замовчуванням [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) параметри, будь ласка, спробуйте використовувати наступний код, щоб змінити їх:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Будь ласка, введіть результат нижче:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Як працювати з Single ChartDataPoint `ChartSeries`

Використання [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) Ви зможете налаштувати форматування однієї точки даних серії діаграм:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Будь ласка, введіть результат нижче:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Як працювати з ChartDataLabel з Single ChartSeries

Використання [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) Ви можете вказати форматування одного тега даних серії діаграм, як шоу/hide LegendKey, КатегоріяName, SeriesName, значення тощо.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Будь ласка, введіть результат нижче:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Як видалити параметри за замовчуванням для ChartDataLabels of ChartSeries

Про нас [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) Клас визначає властивості, які можна використовувати для встановлення параметрів за замовчуванням [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) для серії діаграм. Ці властивості включають [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) і т.д.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Будь ласка, введіть результат нижче:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Як форматувати номер етикетки даних

Використання [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) Ви можете вказати форматування номеру однієї мітки даних діаграми.

Приклад наступного коду показує, як форматувати ряд етикеток даних:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Як встановити діаграму осі властивості

Якщо ви хочете працювати з віссю діаграми, масштабування та розподільчих одиниць для осі значення, будь ласка, використовуйте [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), і [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) класи.

Приклад коду показує, як визначити властивості X і Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Як встановити Date Значення часу осі

Приклад наступного коду показує, як встановити значення дати / часу до властивостей осі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Як форматувати номер значення осей

Приклад коду показує, як змінити формат чисел на осі значення:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Як встановити пов'язки осей

Про нас [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) клас являє собою мінімальну або максимальну межу значень осі. Злягання може бути вказаний як числова, дата-time або спеціальне значення "auto".

Приклад коду показує, як встановити межі осі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Як встановити блок між етикетками

Приклад коду показує, як встановити інтервал між етикетками на осі:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Як приховати діаграму Ось

Якщо ви хочете показати або приховати вісь діаграми, ви можете просто досягти цього, встановивши значення [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) майно.

Приклад наступного коду показує, як приховати Y-осені діаграми:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Як видалити етикетку діаграми

Якщо ви хочете встановити вирівнювання тексту для багатолінійних етикеток, ви можете просто досягти цього, встановлюючи значення значення [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) майно.

Приклад наступного коду показує, як вирівняти етикетку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word вирівнює діаграму етикетки в центрі за замовчуванням.

{{% /alert %}}

## Як встановити заповнення та форматування штрихів

Заповнення та форматування штрихів можна встановити для серії діаграм, точок даних та маркерів. Для цього потрібно використовувати властивості [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) тип у [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), і [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) класи, а також псевдоніми для деяких властивостей, таких як [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), і [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) в [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) клас.

Приклад коду показує, як встановити колір серії:

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

Приклад коду показує, як встановити колір лінії і вага:

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
