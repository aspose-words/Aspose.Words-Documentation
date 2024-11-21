---
title: Работа с графики в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с графики
linktitle: Работа с графики
description: "Създаване и промяна на графики от различни видове в документ, използвайки Python."
type: docs
weight: 310
url: /bg/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Нов [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) метод е добавен в [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Клас. И така, нека видим как да вмъкнем проста колона в документа, използвайки [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) метод:

### Как да въведете диаграма

В този раздел ще се научим как да вкараме диаграма в документ.

### Вмъкване на колона

Следният пример за код показва как да се вмъкне колона диаграма:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Кодът дава следния резултат:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Има. [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) както и [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) методи, които са били изложени на всички възможни варианти на източници на данни за всички видове карти:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Кодът дава следния резултат:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Вмъкване на скатер Графика

По-долу пример показва как да се вмъкне скатер диаграма.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Кодът дава следния резултат:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Вмъкване на зона Графика

Следният пример с код показва как да се постави диаграма на областта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Кодът дава следния резултат:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Вмъкване на таблицата с мехурчета

Следният пример за код показва как да се вмъкне диаграма балон:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Кодът дава следния резултат:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Работа с карти чрез Shape.chart Object

След като диаграмата е поставена и изпълнена с данни, вие сте в състояние да промени външния си вид. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) имотът съдържа всички опции, свързани с графиката, достъпни чрез обществеността API.

Например, нека се променим. [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) заглавието или легендарното поведение:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Кодът генерира следните резултати:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Как да работите с ChartSeriesCollection of Chart

Нека да погледнем в [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) Колекция. Всички серии карти са достъпни чрез [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) събиране:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Можете да премахнете серия една по една или да изчистите всички от тях, както и да добавите нова, ако е необходимо. Нововградената диаграма има някои добавени серии по подразбиране към тази колекция. За да ги премахнете, трябва да се обадите. [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) метод.

## Работа с единни карти клас

Ето как се работи с определена серия.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Моля, вижте резултата по-долу:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Всички необвързани [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) е по подразбиране [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) опции, моля опитайте се да използвате следния код, за да ги промените:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Моля, вижте резултата по-долу:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Как да работите с единична графикаDataPoint на a `ChartSeries`

Използване [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) Вие сте в състояние да персонализирате форматирането на една точка от данните на серията диаграма:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Моля, вижте резултата по-долу:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Как да работите с ChartDataLabel на единични карти

Използване [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) Вие сте в състояние да посочи форматирането на един етикет на данните от серията диаграма, като шоу / скрий ЛегендаКлюч, Категория Име, Серия Име, Стойност и др.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Моля, вижте резултата по-долу:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Как да определите настройките по подразбиране за ChartDataLabels на ChartSeries

На [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) клас определя свойства, които могат да бъдат използвани за задаване на опции по подразбиране за [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) за Chart Series. Тези свойства включват [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) и т.н.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Моля, вижте резултата по-долу:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Как да форматираме номер на табелката с данните

Използване [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) Вие сте в състояние да посочи номер форматиране на един етикет данни на диаграмата.

Следният пример за код показва как да се форматира редица от етикета на данните:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Как да зададете свойства на оста на диаграмата

Ако искате да работите с графика ос, мащабиране, и дисплей единици за стойността ос, моля, използвайте [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), както и [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) Класове.

Следният пример за код показва как да се определят свойствата на оста X и Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Как да зададете Date Времева стойност на оста

Следният пример за код показва как да се определят стойностите на дата/времето на осовите свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Как да форматираме стойността на числото на оста

Следният пример за код показва как да се промени формата на числата по оста на стойността:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Как да се определят границите на оста

На [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) класът представлява минимална или максимална граница на осите. Облигацията може да бъде посочена като цифрова, дата или специална стойност на "автоматично."

Следният пример за код показва как да се определят границите на оста:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Как да зададете интервал между етикетите

Следният пример за код показва как да се зададе интервалната единица между етикетите по оста:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Как да скрием оста на графиката

Ако искате да покажете или скриете оста на диаграмата, можете просто да постигнете това чрез определяне на стойността на [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) собственост.

Следният пример за код показва как да се скрие оста Y на диаграмата:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Как да се подравнява етикет диаграма

Ако искате да зададете подравняване на текст за многолинейни етикети, можете просто да постигнете това чрез определяне на стойността на [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) собственост.

Следният пример за код показва как да се открои подравняването на етикета:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word подравнява Chart Label към центъра по подразбиране.

{{% /alert %}}

## Как да зададете форматиране на запълване и удар

Запълване и инсулт форматиране може да се настрои за диаграма серия, точки от данни, и маркери. За да направите това, трябва да използвате свойствата на [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) тип в [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), както и [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) класове, както и псевдоними за някои свойства, като [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), както и [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) в [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) Клас.

Следният пример за код показва как да зададете цвят серия:

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

Следният пример за код показва как да зададете цвят и тегло линия:

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
