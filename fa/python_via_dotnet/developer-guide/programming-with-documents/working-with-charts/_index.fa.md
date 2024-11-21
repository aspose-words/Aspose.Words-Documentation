---
title: کار با نمودارها در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با نمودارها
linktitle: کار با نمودارها
description: "با استفاده از Python نمودارهایی از انواع مختلف را در یک سند ایجاد و اصلاح کنید."
type: docs
weight: 310
url: /fa/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

روش جدید [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) به کلاس [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) اضافه شد. بنابراین، بیایید ببینیم که چگونه یک نمودار ستونی ساده را با استفاده از روش [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) در سند وارد کنیم:

### نحوه درج نمودار

در این بخش نحوه درج نمودار را در یک سند یاد خواهیم گرفت.

### درج نمودار ستونی

مثال کد زیر نحوه درج نمودار ستونی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

کد نتیجه زیر را ایجاد می کند:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


روش‌های [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/)، [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) و [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) وجود دارد که برای پوشش همه انواع منابع داده‌ای ممکن برای همه انواع نمودار در معرض دید قرار گرفت:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

کد نتیجه زیر را ایجاد می کند:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### درج نمودار پراکندگی

مثال زیر نحوه درج نمودار پراکندگی را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

کد نتیجه زیر را ایجاد می کند:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### درج نمودار منطقه

مثال کد زیر نحوه درج نمودار منطقه را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

کد نتیجه زیر را ایجاد می کند:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### درج نمودار حباب

مثال کد زیر نحوه درج نمودار حباب را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

کد نتیجه زیر را ایجاد می کند:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## کار با نمودارها از طریق Shape.chart Object

هنگامی که نمودار درج شد و با داده ها پر شد، می توانید ظاهر آن را تغییر دهید. ویژگی [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) شامل تمام گزینه های مربوط به نمودار در دسترس از طریق API عمومی است.

به عنوان مثال، اجازه دهید عنوان یا رفتار افسانه [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) را تغییر دهیم:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

کد نتایج زیر را ایجاد می کند:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## نحوه کار با ChartSeriesCollection of Chart

بیایید به مجموعه [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) نگاه کنیم. تمام سری نمودارها از طریق مجموعه [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) در دسترس هستند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

می‌توانید سری‌ها را یکی یکی حذف کنید یا همه آن‌ها را پاک کنید و در صورت نیاز یک سری جدید اضافه کنید. نموداری که به تازگی درج شده است تعدادی سری پیش فرض به این مجموعه اضافه شده است. برای حذف آنها باید با روش [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) تماس بگیرید.

## کار با کلاس Single ChartSeries

در اینجا نحوه کار با یک سریال خاص است.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


همه [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) تک گزینه‌های [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) پیش‌فرض دارند، لطفاً از کد زیر برای تغییر آن‌ها استفاده کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## نحوه کار با Single ChartDataPoint یک `ChartSeries`

با استفاده از [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) می‌توانید قالب‌بندی یک نقطه داده از سری نمودار را سفارشی کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

لطفا نتیجه را در زیر ببینید:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## نحوه کار با ChartDataLabel یک ChartSeries منفرد

با استفاده از [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) می‌توانید قالب‌بندی یک برچسب داده از سری نمودار را مشخص کنید، مانند نمایش/پنهان کردن LegendKey، CategoryName، SeriesName، Value و غیره.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

لطفا نتیجه را در زیر ببینید:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## نحوه تعریف گزینه های پیش فرض برای ChartDataLabels ChartSeries

کلاس [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) ویژگی هایی را تعریف می کند که می توان از آنها برای تنظیم گزینه های پیش فرض برای [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) برای سری نمودار استفاده کرد. این ویژگی ها عبارتند از [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/)، [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/)، [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/)، [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/)، [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) و غیره.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

لطفا نتیجه را در زیر ببینید:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## نحوه قالب بندی شماره برچسب داده نمودار

با استفاده از [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) می توانید قالب بندی عددی یک برچسب داده واحد از نمودار را مشخص کنید.

مثال کد زیر نحوه قالب بندی تعدادی از برچسب داده ها را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## نحوه تنظیم ویژگی های محور نمودار

اگر می‌خواهید با محور نمودار، مقیاس‌بندی و واحدهای نمایشی برای محور ارزش کار کنید، لطفاً از کلاس‌های [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/)، [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) و [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) استفاده کنید.

مثال کد زیر نحوه تعریف ویژگی های محور X و Y را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### نحوه تنظیم مقدار زمانی محور Date

مثال کد زیر نحوه تنظیم مقادیر تاریخ/زمان به ویژگی های محور را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### نحوه قالب بندی مقدار عدد محور

مثال کد زیر نحوه تغییر فرمت اعداد در محور مقدار را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### نحوه تنظیم مرزهای محور

کلاس [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) حداقل یا حداکثر مرز مقادیر محور را نشان می دهد. Bound را می توان به عنوان یک عدد عددی، تاریخ-زمان یا یک مقدار "خودکار" خاص مشخص کرد.

مثال کد زیر نحوه تنظیم مرزهای یک محور را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### نحوه تنظیم واحد فاصله بین برچسب ها

مثال کد زیر نحوه تنظیم واحد فاصله بین برچسب ها را در یک محور نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### نحوه پنهان کردن محور نمودار

اگر می خواهید محور نمودار را نشان دهید یا پنهان کنید، می توانید به سادگی با تنظیم مقدار ویژگی [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) به این امر دست یابید.

مثال کد زیر نحوه پنهان کردن محور Y نمودار را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### نحوه تراز کردن برچسب نمودار

اگر می‌خواهید یک هم‌ترازی متن برای برچسب‌های چند خطی تنظیم کنید، می‌توانید به سادگی با تنظیم مقدار ویژگی [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) به این هدف برسید.

مثال کد زیر نحوه تیک زدن تراز برچسب را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word به طور پیش فرض نمودار نمودار را در مرکز تراز می کند.

{{% /alert %}}

## نحوه تنظیم قالب بندی پر و ضربه

قالب بندی پر و استروک را می توان برای سری نمودارها، نقاط داده و نشانگرها تنظیم کرد. برای این کار باید از ویژگی های نوع [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) در کلاس های [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)، [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) و [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) و همچنین نام مستعار برای برخی از ویژگی ها مانند [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/)، [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/)، [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) و [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) در کلاس [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) استفاده کنید.

مثال کد زیر نحوه تنظیم رنگ سری را نشان می دهد:

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

مثال کد زیر نحوه تنظیم رنگ و وزن خط را نشان می دهد:

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
