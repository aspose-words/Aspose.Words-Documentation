---
title: 使用 Python 中的图表
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用图表
linktitle: 使用图表
description: "使用 Python 创建和修改文档中各种类型的图表。"
type: docs
weight: 310
url: /zh/python-net/working-with-charts/
---

新的 [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) 方法已添加到 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 类中。那么，让我们看看如何使用 [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) 方法将简单的柱形图插入到文档中：

### 如何插入图表

在本节中，我们将学习如何将图表插入到文档中。

### 插入柱形图

以下代码示例展示了如何插入柱形图：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

该代码产生以下结果：

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


有 [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/)、[add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) 和 [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) 方法，这些方法涵盖了所有图表类型的数据源的所有可能变体：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

该代码产生以下结果：

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### 插入散点图

下面的示例展示了如何插入散点图。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

该代码产生以下结果：

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### 插入面积图

以下代码示例展示了如何插入面积图：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

该代码产生以下结果：

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### 插入气泡图

以下代码示例展示了如何插入气泡图：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

该代码产生以下结果：

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## 通过 Shape.chart 对象使用图表

插入图表并填充数据后，您就可以更改其外观。 [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) 属性包含通过公共 API 提供的所有图表相关选项。

例如，让我们更改 [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) 标题或图例行为：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

该代码生成以下结果：

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## 如何使用 ChartSeries 图表集合

让我们看看 [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) 集合。所有图表系列均可通过 [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) 集合获取：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

您可以逐个删除系列或清除所有系列，也可以根据需要添加新系列。新插入的图表已添加到此集合中的一些默认系列。要删除它们，您需要调用 [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) 方法。

## 使用单个 ChartSeries 类

以下是如何处理特定系列。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

请看下面的结果：

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


所有单个 [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) 都有默认的 [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) 选项，请尝试使用以下代码更改它们：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

请看下面的结果：

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## 如何使用 `ChartSeries` 的单个 ChartDataPoint

使用 [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/)，您可以自定义图表系列的单个数据点的格式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

请看下面的结果：

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## 如何使用单个 ChartSeries 的 ChartDataLabel

使用 [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/)，您可以指定图表系列的单个数据标签的格式，例如显示/隐藏 LegendKey、CategoryName、SeriesName、Value 等。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

请看下面的结果：

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## 如何定义 ChartSeries 的 ChartDataLabels 的默认选项

[ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) 类定义可用于设置图表系列 [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) 的默认选项的属性。这些属性包括 [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/)、[show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/)、[show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/)、[show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/)、[show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) 等。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

请看下面的结果：

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## 如何设置图表数据标签数量的格式

使用 [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/)，您可以指定图表的单个数据标签的数字格式。

下面的代码示例展示了如何格式化多个数据标签：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## 如何设置图表轴属性

如果您想使用图表轴、缩放比例和值轴的显示单位，请使用 [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/)、[AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) 和 [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) 类。

以下代码示例显示如何定义 X 轴和 Y 轴属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### 如何设置轴的 Date 时间值

以下代码示例显示如何将日期/时间值设置为轴属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### 如何格式化轴的数值

以下代码示例演示如何更改值轴上的数字格式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### 如何设置轴的界限

[AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) 类表示轴值的最小或最大界限。绑定可以指定为数字、日期时间或特殊的"自动"值。

以下代码示例显示如何设置轴的边界：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### 如何设置标签之间的间隔单位

以下代码示例显示如何设置轴上标签之间的间隔单位：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### 如何隐藏图表轴

如果要显示或隐藏图表轴，只需设置 [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) 属性的值即可实现。

以下代码示例展示了如何隐藏图表的 Y 轴：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### 如何对齐图表标签

如果要设置多行标签的文本对齐方式，只需设置 [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) 属性的值即可实现。

以下代码示例展示了如何勾选标签对齐：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

默认情况下，MS Word 将图表标签居中对齐。

{{% /alert %}}

## 如何设置填充和描边格式

可以为图表系列、数据点和标记设置填充和描边格式。为此，您需要使用 [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)、[ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) 和 [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) 类中 [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) 类型的属性，以及某些属性的别名，例如 [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) 类中的 [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/)、[back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/)、[visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) 和 [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/)。

以下代码示例展示了如何设置系列颜色：

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

以下代码示例展示了如何设置线条颜色和粗细：

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
