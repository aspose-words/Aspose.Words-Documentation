---
title: Working with Charts – Aspose.Words for .NET
articleTitle: Working with Charts
linktitle: Working with Charts
description: "Introduction to Chart feature, how to create and manipulate charts using Aspose.Words for .Net."
type: docs
weight: 50
url: /net/working-with-charts/
---

## Creating OOXML Charts from Scratch using Aspose.Words

New [InsertChart](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/insertchart/methods/1) method was added into the [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) class. So, let's see how to insert a simple column chart into the document using [DocumentBuilder.InsertChart](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/insertchart/methods/1) method:

### How to Insert Column chart

Below examples shows how to insert column chart.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

The code produces the following result:

![create-column-chart-aspose-words-net](working-with-charts-1.png)


There are four different overloads for series Add method, which was exposed to cover all possible variants of data sources for all chart types:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

The code produces the following result:

![create-column-chart-from-datasource-aspose-words-net](working-with-charts-2.png)

### How to Insert Scatter Chart

Below example shows how to insert a scatter chart.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

The code produces the following result:

![scatter-chart-aspose-words-net](working-with-charts-3.png)

### How to Insert Area Chart

Below example shows how to insert an area chart.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

The code produces the following result:

![area-chart-aspose-words-net](working-with-charts-4.png)

### How to Insert Bubble Chart

Below example shows how to insert a bubble chart.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

The code produces the following result:

![bubble-chart-aspose-words-net](working-with-charts-5.png)

## Working with Charts through Shape.Chart Object

Once the chart was inserted and filled with data, you are able to change its appearance. Shape.Chart property contains all chart related options available through the public API. For example, let's change Chart title or legend behavior:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

The code generates the followings results:

![line-chart-aspose-words-net](working-with-charts-6.png)

## How to Work with ChartSeriesCollection of Chart

Let’s look into ChartSeries collection. All chart series are available through chart.Series collection, which is IEnumerable:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

You can remove series one by one or clear all of them as well as add a new one if needed. The newly inserted chart has some default series added to this collection. To remove them you need to call chart.Series.Clear() method.

## Working with Single ChartSeries Class

Here is how to work with a particular series.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Please see the result below:

![line-chart-chartseries-aspose-words-net](working-with-charts-7.png)


All single ChartSeries have default ChartDataPoint options, please try using the following code to change them:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

![line-chart-chartdatapoint-aspose-words-net](working-with-charts-8.png)

## How to Work with Single ChartDataPoint of a ChartSeries

Using ChartDataPoint you are able to customize the formatting of a single data point of the chart series.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Please see the result below:

![line-chart-datapoint-aspose-words-net](working-with-charts-9.png)

## How to Work with ChartDataLabel of a Single ChartSeries

Using ChartDataLabel you are able to specify the formatting of a single data label of the chart series, like show/hide LegendKey, CategoryName, SeriesName, Value etc.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Please see the result below:

![bar-chart-aspose-words-net](working-with-charts-10.png)

## How to Define Default Options for ChartDataLabels of ChartSeries

The ChartDataLabelCollection class defines properties which can be used to set default options for ChartDataLabels for Chart Series. These properties include ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue etc.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Please see the result below:

![pie-chart-aspose-words-net](working-with-charts-11.png)

## How to Format Number of Chart Data Label

Using ChartDataLabel.NumberFormat you are able to specify number formatting of a single data label of the chart. The code example given below shows how to format a number of the data label. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## How to Set Chart Axis Properties

If you want to work with chart axis, scaling, and display units for the value axis, please use [ChartAxis](https://apireference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis), [AxisDisplayUnit](https://apireference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit), and [AxisScaling](https://apireference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling) classes. The code example given below shows how to define X and Y-axis properties.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### How to Set Date Time Value of Axis

The following code example shows how to set date/time values to axis properties.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### How to Format Number Value of Axis

` `The following code example shows how to change the format of numbers on the value axis.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### How to Set Bounds of Axis

The AxisBound class represents a minimum or maximum bound of axis values. Bound can be specified as a numeric, date-time or a special "auto" value. The following code example shows how to set bounds of an axis.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### How to Set Interval Unit Between Labels

The following code example shows how to set the interval unit between labels on an axis.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### How to Hide Chart Axis

If you want to show or hide the chart axis, you can simply achieve this by setting the value of ChartAxis.Hidden property. The following code example shows how to hide the Y-axis of the chart. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### How to Align Chart Label

If you want to set a text alignment for multi-line labels, you can simply achieve this by setting the value of ChartAxis.TickLabelAlignment property. The following code example shows how to tick label alignment.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}} 

MS Word aligns Chart Label to the centre by default.

{{% /alert %}}

## How to Set Fill and Stroke Formatting

Fill and stroke formatting can be set for chart series, data points, and markers. To do this, you need to use the properties of the ChartFormat type in the ChartSeries, ChartDataPoint, and ChartMarker classes, as well as aliases for some properties, such as ForeColor, BackColor, Visible, and Transparency in the Stroke class.

The following code example shows how to set series color:

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Column, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Create category names array.
string[] categories = new string[] { "AW Category 1", "AW Category 2" };

// Adding new series. Value and category arrays must be the same size.
ChartSeries series1 = seriesColl.Add("AW Series 1", categories, new double[] { 1, 2 });
ChartSeries series2 = seriesColl.Add("AW Series 2", categories, new double[] { 3, 4 });
ChartSeries series3 = seriesColl.Add("AW Series 3", categories, new double[] { 5, 6 });

// Set series color.
series1.Format.Fill.ForeColor = Color.Red;
series2.Format.Fill.ForeColor = Color.Yellow;
series3.Format.Fill.ForeColor = Color.Blue;

doc.Save(dir + "ColumnColor.docx");
{{< /highlight >}}

The following code example shows how to set line color and weight:

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Line, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 },
	new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 },
	new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save(dir + "LineColorAndWeight.docx");
{{< /highlight >}}
