---
title: کار با نمودارها در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با نمودارها
linktitle: کار با نمودارها
description: "مقدمه ای بر ویژگی نمودار، نحوه ایجاد و دستکاری نمودارها با استفاده از C#."
type: docs
weight: 310
url: /fa/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

روش جدید [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) به کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) اضافه شد. بنابراین، بیایید ببینیم چگونه با استفاده از روش [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) یک نمودار ستونی ساده را در سند وارد کنیم.

## نحوه درج نمودار

در این بخش نحوه درج نمودار را در یک سند یاد خواهیم گرفت.

### درج نمودار ستونی

مثال کد زیر نحوه درج نمودار ستونی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

کد نتیجه زیر را ایجاد می کند:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


چهار اضافه بار مختلف برای روش افزودن سری وجود دارد که برای پوشش همه انواع منابع داده ممکن برای همه انواع نمودار ارائه شده است:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

کد نتیجه زیر را ایجاد می کند:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### درج نمودار پراکندگی

مثال کد زیر نحوه درج نمودار پراکندگی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

کد نتیجه زیر را ایجاد می کند:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### درج نمودار منطقه

مثال کد زیر نحوه درج نمودار منطقه را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

کد نتیجه زیر را ایجاد می کند:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### درج نمودار حباب

مثال کد زیر نحوه درج نمودار حباب را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

کد نتیجه زیر را ایجاد می کند:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## کار با نمودارها از طریق `Shape.Chart` Object

هنگامی که نمودار درج شد و با داده ها پر شد، می توانید ظاهر آن را تغییر دهید. ویژگی `Shape.Chart` شامل تمام گزینه های مربوط به نمودار در دسترس از طریق API عمومی است.

برای مثال، بیایید عنوان نمودار یا رفتار افسانه را تغییر دهیم:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

کد نتایج زیر را ایجاد می کند:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## نحوه کار با ChartSeriesCollection of Chart

بیایید به مجموعه [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) نگاه کنیم. تمام سری نمودارها از طریق مجموعه [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) که **IEnumerable** است در دسترس هستند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

می توانید سری ها را یکی یکی حذف کنید یا همه آن ها را پاک کنید و همچنین در صورت نیاز یک سری جدید اضافه کنید. نموداری که به تازگی درج شده است تعدادی سری پیش فرض به این مجموعه اضافه شده است. برای حذف آنها باید روش **chart.Series.Clear()** را فراخوانی کنید.

## کار با کلاس Single ChartSeries

در اینجا نحوه کار با یک سریال خاص آمده است:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


همه [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) تک گزینه‌های [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) پیش‌فرض دارند، لطفاً از کد زیر برای تغییر آن‌ها استفاده کنید:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## نحوه کار با Single ChartDataPoint یک `ChartSeries`

با استفاده از [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) می‌توانید قالب‌بندی یک نقطه داده از سری نمودار را سفارشی کنید:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## نحوه کار با ChartDataLabel یک ChartSeries منفرد

با استفاده از [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) می‌توانید قالب‌بندی یک برچسب داده از سری نمودار را مشخص کنید، مانند نمایش/پنهان کردن LegendKey، CategoryName، SeriesName، Value و غیره:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

لطفا نتیجه را در زیر ببینید:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## نحوه تعریف گزینه های پیش فرض برای ChartDataLabels از ChartSeries

کلاس [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) ویژگی هایی را تعریف می کند که می توان از آنها برای تنظیم گزینه های پیش فرض برای **ChartDataLabels** برای نمودار **Series** استفاده کرد. این ویژگی ها عبارتند از ShowCategoryName، ShowBubbleSize، ShowPercentage، ShowSeriesName، ShowValue و غیره:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

لطفا نتیجه را در زیر ببینید:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## نحوه قالب بندی شماره برچسب داده نمودار

با استفاده از [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) می توانید قالب بندی عددی یک برچسب داده واحد از نمودار را مشخص کنید.

مثال کد زیر نحوه قالب بندی تعدادی از برچسب داده ها را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## نحوه تنظیم ویژگی های محور نمودار

اگر می‌خواهید با محور نمودار، مقیاس‌بندی و واحدهای نمایشی برای محور ارزش کار کنید، لطفاً از کلاس‌های [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/)، [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/) و [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) استفاده کنید.

مثال کد زیر نحوه تعریف ویژگی های محور X و Y را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### نحوه تنظیم مقدار زمانی محور Date

مثال کد زیر نحوه تنظیم مقادیر تاریخ/زمان را به ویژگی های محور نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### نحوه قالب بندی مقدار عدد محور

مثال کد زیر نحوه تغییر فرمت اعداد در محور مقدار را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### نحوه تنظیم مرزهای محور

کلاس `AxisBound` حداقل یا حداکثر مرز مقادیر محور را نشان می دهد. Bound را می توان به عنوان یک عدد عددی، تاریخ-زمان یا یک مقدار "خودکار" خاص مشخص کرد.

مثال کد زیر نحوه تنظیم مرزهای یک محور را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### نحوه تنظیم واحد فاصله بین برچسب ها

مثال کد زیر نحوه تنظیم واحد فاصله بین برچسب ها را در یک محور نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### نحوه پنهان کردن محور نمودار

اگر می خواهید محور نمودار را نشان دهید یا پنهان کنید، می توانید به سادگی با تنظیم مقدار ویژگی `ChartAxis.Hidden` به این امر دست یابید.

مثال کد زیر نحوه پنهان کردن محور Y نمودار را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### نحوه تراز کردن برچسب نمودار

اگر می‌خواهید یک هم‌ترازی متن برای برچسب‌های چند خطی تنظیم کنید، می‌توانید به سادگی با تنظیم مقدار ویژگی [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.هم ترازی** به این هدف برسید.

مثال کد زیر نحوه تیک زدن تراز برچسب را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word نمودار نمودار را به طور پیش فرض در مرکز تراز می کند.

{{% /alert %}}

## نحوه تنظیم قالب بندی پر و ضربه

قالب بندی پر و استروک را می توان برای سری نمودارها، نقاط داده و نشانگرها تنظیم کرد. برای این کار باید از ویژگی های نوع **ChartFormat** در کلاس های **ChartSeries**، **ChartDataPoint** و **ChartMarker** و همچنین نام مستعار برای برخی از ویژگی ها مانند ForeColor، BackColor، Visible و Transparency در کلاس `Stroke` استفاده کنید.

مثال کد زیر نحوه تنظیم رنگ سری را نشان می دهد:

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

مثال کد زیر نحوه تنظیم رنگ و وزن خط را نشان می دهد:

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
