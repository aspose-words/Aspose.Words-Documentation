---
title: Working with Charts
type: docs
weight: 50
url: /java/working-with-charts/
---

WorkWithChartDataLabelOfASingleChartSeries


## Creating OOXML Charts from Scratch using Aspose.Words

The new insertChart method was added into the [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) class. So, let's see how to insert a simple column chart into the document using DocumentBuilder.insertChart method:

### How to insert Column chart

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

The code produces the following result:

|![column-chart-aspose-words-java-1](http://i.imgur.com/nWkr86s.png)|
| :- |
There are four different overloads for the series Add method, which were exposed to cover all possible variants of data sources for all chart types:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

The code produces the following result:

|![column-chart-aspose-words-java-2](http://i.imgur.com/U7ylb6t.png)|
| :- |

### How to insert Scatter chart

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

The code produces the following result:

|![scutter-chart-aspose-words-java](http://i.imgur.com/35LAqIe.png)|
| :- |

### How to insert Area chart

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

The code produces the following result:

|![area-chart-aspose-words-java](http://i.imgur.com/wUxVamC.png)|
| :- |

### How to insert Bubble chart

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

The code produces the following result:

|![bubble-chart-aspose-words-java](http://i.imgur.com/fZTtwpH.png)|
| :- |

## Working with Charts through Shape.Chart Object

Once the chart was inserted and filled with data, you are able to change its appearance. [Shape.Chart](http://www.aspose.com/api/java/words/com.aspose.words/classes/Shape/properties/getChart\(\)/) property contains all chart related options available through the public API. For example, let's change Chart title or legend behavior:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

The code generates the followings results:

![line-chart-aspose-words-java-1](working-with-charts_1.png)

## How to Work with ChartSeriesCollection of Chart

Let’s look into [ChartSeries](http://www.aspose.com/api/java/words/com.aspose.words/classes/ChartSeries) collection. All chart series are available through the chart.getSeries()collection, which is Iterable:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

You can remove series one by one or clear all of them as well as add a new one if needed. The newly inserted chart has some default series added to this collection. To remove them you need to call the chart.getSeries().clear()method.

## Working with Single ChartSeries Class

Here is how to work with a particular series.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Please see the result below:

![line-chart-aspose-words-java-2](working-with-charts_2.png)

All single [ChartSeries](http://www.aspose.com/api/java/words/com.aspose.words/classes/ChartSeries) have default [ChartDataPoint](http://www.aspose.com/api/java/words/com.aspose.words/classes/ChartDataPoint) options, please try using the following code to change them:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](working-with-charts_3.png)

## How to Work with Single ChartDataPoint of a ChartSeries

Using ChartDataPoint you are able to customize the formatting of a single data point of the chart series.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Please see the result below:

![line-chart-aspose-words-java-4](working-with-charts_4.png)

## How to Work with ChartDataLabel of a Single ChartSeries

Using ChartDataLabel you are able to specify the formatting of a single data label of the chart series, like show/hide LegendKey, CategoryName, SeriesName, Value etc.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Please see the result below:

![bar-chart-aspose-words-java](working-with-charts_5.png)

## How to Define Default Options for ChartDataLabels of ChartSeries

The ChartDataLabelCollection class defines properties which can be used to set default options for ChartDataLabels for Chart Series. These properties include setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue etc.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Please see the result below:

![pie-chart-aspose-words-java](working-with-charts_6.png)

## How to Format Number of Chart Data Label

Using the NumberFormat property of ChartDataLabel,  you can specify the number formatting of a single data label of the chart. The below code example demonstrates how to format a number of the data label. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## How to Set Chart Axis Properties

If you want to work with chart axis, scaling, and display units for the value axis, please use ChartAxis, AxisDisplayUnit, and AxisScaling classes. The following code example demonstrates how to define X and Y-axis properties.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### How to Set DateTime Value of Axis

The following code example demonstrates how to set date/time values to axis properties.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### How to Format Number Value of Axis

The following code example demonstrates how to change the format of numbers on the value axis.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### How to Set Bounds of Axis

The AxisBound class represents a minimum or maximum bound of axis values. Bound can be specified as a numeric, date-time or a special "auto" value. The following code example shows how to set the bounds of an axis.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### How to Set Interval Unit Between Labels

The following code example shows how to set the interval unit between labels on an axis.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### How to Hide Chart Axis

If you want to show or hide the chart axis, you can simply achieve this by setting the value of ChartAxis.Hidden property. The following code example demonstrates how to hide the Y-axis of the chart. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### How to Align Chart Label

If you want to set a text alignment for multi-line labels, you can simply achieve this by setting the value of ChartAxis.setTickLabelAlignment() property. The following code example shows how to tick label alignment.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}} 

MS Word aligns Chart Label to the center by default.

{{% /alert %}}

## How to Set Fill and Stroke Formatting

Fill and stroke formatting can be set for chart series, data points, and markers. To do this, you need to use the properties of the ChartFormat type in the ChartSeries, ChartDataPoint, and ChartMarker classes, as well as aliases for some properties, such as ForeColor, BackColor, Visible, and Transparency in the Stroke class.

The following code example demonstrates how to set series color:

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

doc.Save("ColumnColor.docx");
{{< /highlight >}}

The following code example demonstrates how to set line color and weight:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Line, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}
