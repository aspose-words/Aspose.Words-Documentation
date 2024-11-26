---
title: کار با نمودارها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با نمودارها
linktitle: کار با نمودارها
description: "مقدمه ای به ویژگی نمودار، نحوه ایجاد و دستکاری نمودارها با استفاده از Java."
type: docs
weight: 310
url: /fa/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

روش جدید [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) به کلاس [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) اضافه شد. پس بیایید ببینیم که چگونه یک نمودار ستون ساده را با استفاده از روش **insertChart** وارد سند کنیم.


## چگونه یک نمودار را از ابتدا با استفاده از Aspose.Wordsوارد کنیم

در این بخش ما یاد خواهیم گرفت که چگونه یک نمودار را در یک سند قرار دهیم.

###  وارد نمودار ستون

مثال کد زیر نشان می دهد که چگونه نمودار ستون را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

کد نتیجه زیر را تولید می کند:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

چهار بار اضافی مختلف برای روش اضافه کردن سری وجود دارد که در معرض پوشش تمام انواع ممکن منابع داده برای همه انواع نمودار قرار گرفته است:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

کد نتیجه زیر را تولید می کند:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### نمودار پراکندگی را وارد کنید

مثال کد زیر نشان می دهد که چگونه یک نمودار پراکندگی را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

کد نتیجه زیر را تولید می کند:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### وارد نمودار منطقه

مثال کد زیر نشان می دهد که چگونه یک نمودار منطقه را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

کد نتیجه زیر را تولید می کند:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### درج نمودار حباب

مثال کد زیر نشان می دهد که چگونه یک نمودار حباب را وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

کد نتیجه زیر را تولید می کند:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## کار با نمودارها از طریق `Shape.Chart` Object

هنگامی که نمودار وارد شد و با داده ها پر شد، شما قادر به تغییر ظاهر آن هستید. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) property شامل تمام گزینه های مربوط به نمودار است که از طریق public API در دسترس است.

به عنوان مثال، بیایید عنوان نمودار یا رفتار افسانه ای را تغییر دهیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

کد نتایج زیر را تولید می کند:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## نحوه کار با ChartSeriesCollection نمودار

بیایید به مجموعه [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) نگاه کنیم. تمام سری های نمودار از طریق مجموعه [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) که **Iterable**است در دسترس هستند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

شما می توانید سری را یک به یک حذف کنید یا همه آنها را پاک کنید و همچنین در صورت نیاز یک سری جدید اضافه کنید. نمودار تازه وارد شده دارای مجموعه ای پیش فرض است که به این مجموعه اضافه شده است. برای حذف آنها باید روش **chart.getSeries().clear()** را فراخوانی کنید.

## کار با کلاس Single ChartSeries

در اینجا نحوه کار با یک سری خاص آورده شده است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

همه گزینه های تک [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) دارای گزینه های پیش فرض [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) هستند، لطفا از کد زیر برای تغییر آنها استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## چگونه با تک ChartDataPoint از `ChartSeries`کار کنیم

با استفاده از [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) شما قادر به سفارشی کردن قالب بندی یک نقطه داده واحد از سری نمودار هستید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## چگونه با ChartDataLabel از یک ChartSeriesکار کنیم

با استفاده از [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) شما می توانید قالب بندی یک برچسب داده واحد از سری نمودار را مشخص کنید، مانند show / hide LegendKey, CategoryName, SeriesName, ارزش و غیره:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

لطفا نتیجه را در زیر ببینید:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## چگونه گزینه های پیش فرض را برای ChartDataLabels از ChartSeriesتعریف کنیم

کلاس [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) ویژگی هایی را تعریف می کند که می تواند برای تنظیم گزینه های پیش فرض برای **ChartDataLabels** برای نمودار **Series** استفاده شود. این خواص عبارتند ازsetShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue و غیره:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

لطفا نتیجه را در زیر ببینید:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## نحوه قالب بندی تعداد برچسب داده نمودار

با استفاده از ویژگی [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat)، می توانید قالب بندی شماره یک برچسب داده واحد نمودار را مشخص کنید.

مثال کد زیر نشان می دهد که چگونه تعدادی از برچسب داده ها را فرمت کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## نحوه تنظیم ویژگی های محور نمودار

اگر می خواهید با محور نمودار، مقیاس بندی و واحدهای نمایش برای محور ارزش کار کنید، لطفا از کلاس های [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/)، [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) و [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) استفاده کنید.

مثال کد زیر نشان می دهد که چگونه ویژگی های محور X و Y را تعریف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### چگونه مقدار DateTime محور را تنظیم کنیم

مثال کد زیر نشان می دهد که چگونه مقادیر تاریخ/زمان را به ویژگی های محور تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### نحوه قالب بندی تعداد ارزش محور

مثال کد زیر نشان می دهد که چگونه فرمت اعداد را در محور ارزش تغییر دهید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### نحوه تنظیم مرزهای محور

کلاس `AxisBound` حداقل یا حداکثر مرز مقادیر محور را نشان می دهد. Bound را می توان به عنوان یک مقدار عددی، تاریخ و زمان یا یک مقدار ویژه "خودکار" مشخص کرد.

مثال کد زیر نشان می دهد که چگونه مرزهای یک محور را تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### نحوه تنظیم واحد فاصله بین برچسب ها

مثال کد زیر نشان می دهد که چگونه واحد فاصله بین برچسب ها را در یک محور تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### چگونه برای پنهان کردن محور نمودار

اگر می خواهید محور نمودار را نشان دهید یا پنهان کنید، می توانید به سادگی با تنظیم مقدار `ChartAxis.Hidden` خاصیت به این هدف برسید.

مثال کد زیر نشان می دهد که چگونه محور Y نمودار را پنهان کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### چگونه برچسب نمودار را تراز کنیم

اگر می خواهید یک تراز متن برای برچسب های چند خطی تنظیم کنید، می توانید به سادگی با تنظیم مقدار [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) property به این هدف برسید.

مثال کد زیر نشان می دهد که چگونه تراز برچسب را تیک بزنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word برچسب نمودار را به طور پیش فرض به مرکز تراز می کند.

{{% /alert %}}

## نحوه تنظیم قالب بندی پر کردن و سکته مغزی

قالب بندی Fill و stroke را می توان برای سری های نمودار، نقاط داده و نشانگرها تنظیم کرد. برای انجام این کار، باید از ویژگی های نوع `ChartFormat` در کلاس های ChartSeries، ChartDataPoint و ChartMarker و همچنین نام مستعار برای برخی از ویژگی ها مانند ForeColor، BackColor، قابل مشاهده و شفافیت در کلاس `Stroke` استفاده کنید.

مثال کد زیر نشان می دهد که چگونه رنگ سری را تنظیم کنید:

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

مثال کد زیر نشان می دهد که چگونه رنگ و وزن خط را تنظیم کنید:

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
