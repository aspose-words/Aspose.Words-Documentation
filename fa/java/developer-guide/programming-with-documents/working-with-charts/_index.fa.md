---
title: کار با چارت ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با چارت ها
linktitle: کار با چارت ها
description: "مقدمه ای بر ویژگی چارت، چگونه برای ایجاد و دستکاری نمودار با استفاده از Java..."
type: docs
weight: 310
url: /fa/java/working-with-charts/
---

جدید [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) روش اضافه شده به [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) کلاس بنابراین، بیایید ببینیم که چگونه یک نمودار ستون ساده را با استفاده از سند وارد کنیم. **Insert نمودار** روش


## چگونه یک نمودار را از Scratch با استفاده از Aspose.Words

در این بخش ما یاد خواهیم گرفت که چگونه یک نمودار را به یک سند وارد کنیم.

###  Insert Column Chart

مثال کد زیر نشان می دهد که چگونه نمودار ستون را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

کد نتیجه زیر را تولید می کند:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

چهار بار اضافی مختلف برای سری وجود دارد اضافه کردن روش، که در معرض پوشش تمام انواع ممکن از منابع داده برای همه انواع نمودار قرار دارد:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

کد نتیجه زیر را تولید می کند:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Insert Scatter نمودار

مثال کد زیر نشان می دهد که چگونه یک نمودار پراکنده را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

کد نتیجه زیر را تولید می کند:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Insert Area نمودار

مثال کد زیر نشان می دهد که چگونه یک نمودار منطقه ای را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

کد نتیجه زیر را تولید می کند:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### بازی Bubble Chart

مثال کد زیر نشان می دهد که چگونه یک نمودار حبابی را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

کد نتیجه زیر را تولید می کند:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## کار با چارت ها از طریق `Shape.Chart` Object Object Object

هنگامی که نمودار وارد و پر از داده ها شد، می توانید ظاهر آن را تغییر دهید. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) مالکیت شامل تمام گزینه های مربوط به نمودار موجود از طریق عموم مردم است. API...

برای مثال، بیایید تغییر کنیم عنوان یا رفتار افسانه ای:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

کد نتایج زیر را ایجاد می کند:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## چگونه با Chart SeriesCollection کار کنیم

نگاهی به [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) مجموعه تمام سریال ها از طریق [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) مجموعه، که است **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

شما می توانید سری اول را به یک یا روشن همه آنها و همچنین اضافه کردن یک جدید در صورت نیاز. نمودار تازه وارد دارای برخی از سری های پیش فرض اضافه شده به این مجموعه است. برای حذف آنها باید تماس بگیرید **نمودار.get Series()** روش

## کار با کلاس تک چارت

در اینجا چگونگی کار با یک سری خاص است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

نتیجه زیر را ببینید:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک تک [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) پیش فرض [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) گزینه ها، لطفا سعی کنید از کد زیر برای تغییر آنها استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## چگونه با یک نمودار واحد کار کنیم `ChartSeries`

استفاده از [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) شما قادر به سفارشی سازی قالب بندی یک نقطه داده واحد از سری نمودار:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

نتیجه زیر را ببینید:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## چگونه با ChartdataLabel کار کنیم

استفاده از [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) شما قادر به تعیین قالب بندی یک برچسب داده واحد از سری نمودار، مانند Show / Hide LegendKey، CategoryName، SeriesName، ارزش و غیره:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

نتیجه زیر را ببینید:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## چگونه گزینه های پیش فرض را برای ChartDataLabels از Chart Series تعریف کنیم

The The The The The The [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) کلاس ویژگی هایی را تعریف می کند که می تواند برای تنظیم گزینه های پیش فرض برای **ChartDataLabels** نمودار **Series**... این ویژگی ها شامل SetShowCategoryName، setShowBubbleSize، setshowPercentage، setshow SeriesName، Setshow ارزش و غیره:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

نتیجه زیر را ببینید:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## چگونه به فرمت تعداد برچسب داده های چارت

استفاده از [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) اموال، شما می توانید قالب بندی شماره یک برچسب داده واحد از نمودار را مشخص کنید.

مثال کد زیر نشان می دهد که چگونه تعدادی از برچسب داده ها را فرمت کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## چگونه برای تنظیم Chart Properties

اگر می خواهید با محور نمودار، مقیاس و واحدهای نمایش برای محور ارزش کار کنید، لطفا از آن استفاده کنید. [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), و [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) کلاس ها

مثال کد زیر نشان می دهد که چگونه خواص X و Y را تعریف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### چگونه تنظیم کنیم Dateارزش زمان محور

مثال کد زیر نشان می دهد که چگونه مقادیر تاریخ / زمان را به خواص محور تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### چگونه مقدار شماره محور را تنظیم کنیم

مثال کد زیر نشان می دهد که چگونه فرمت اعداد را در محور ارزش تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### چگونه Bounds of Axis را تنظیم کنیم

The The The The The The `AxisBound` کلاس نشان دهنده حداقل یا حداکثر مقدار محور است. Bound را می توان به عنوان یک عددی، تاریخ و یا یک ارزش ویژه " خودکار" مشخص کرد.

مثال کد زیر نشان می دهد که چگونه مرزهای یک محور را تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### چگونه واحد Interval را بین برچسب ها تنظیم کنیم

مثال کد زیر نشان می دهد که چگونه واحد فاصله بین برچسب ها را بر روی محور تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### چگونه به Hide Chart Axis

اگر می خواهید محور نمودار را نشان دهید یا پنهان کنید، می توانید به سادگی با تنظیم ارزش آن به این هدف برسید. `ChartAxis.Hidden` مالکیت

مثال کد زیر نشان می دهد که چگونه Y-axis نمودار را پنهان کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### چگونه برچسب Align Chart

اگر می خواهید یک تراز متنی را برای برچسب های چند خطی تنظیم کنید، می توانید به سادگی با تنظیم ارزش برچسب های چند خط به آن دست یابید. [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) مالکیت

مثال کد زیر نشان می دهد که چگونه تراز برچسب را تیک بزنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word ترازها برچسب چارت به طور پیش فرض به مرکز

{{% /alert %}}

## چگونه تنظیم و دستکاری کنیم

قالب بندی پر و سکته می تواند برای سری نمودار، نقاط داده و نشانگرها تنظیم شود. برای انجام این کار، باید از خواص آن استفاده کنید. `ChartFormat` نوع در نمودار سری، ChartDataPoint و ChartMarker کلاس، و همچنین alias برای برخی از خواص، مانند ForeColor، BackColor، Visible و Transparency در `Stroke` کلاس

مثال کد زیر نشان می دهد که چگونه رنگ سری را تنظیم کنیم:

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

مثال کد زیر نشان می دهد که چگونه رنگ و وزن خط را تنظیم کنیم:

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
