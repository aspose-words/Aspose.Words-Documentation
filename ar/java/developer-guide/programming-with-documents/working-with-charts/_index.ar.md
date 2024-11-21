---
title: العمل مع `تشارتس` Java
second_title: Aspose.Words for Java
articleTitle: العمل مع (تشارت)
linktitle: العمل مع (تشارت)
description: "التعريف بملامح الرسم البياني، وكيفية وضع الخرائط والتلاعب بها باستخدام Java."
type: docs
weight: 310
url: /ar/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

الجديد [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) أضيفت طريقة إلى [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) صف لذا، دعونا نرى كيف ندخل مخطط عمودي بسيط في الوثيقة باستخدام **يدرج ما يلي: Chart** طريقة


## كيف يُرسل شارة من (سكراتش) Aspose.Words

وسنتعلم في هذا الفرع كيفية إدراج خريطة في وثيقة.

###  Insert Column Chart

ويبين المثال الرمزي التالي كيفية إدراج المخطط العمودي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

وتنتج المدونة النتيجة التالية:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

هناك أربع تحميلات مختلفة للسلسلة يضاف أسلوب معرَّض لتغطية جميع المتغيرات المحتملة لمصادر البيانات بالنسبة لجميع أنواع الخرائط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

وتنتج المدونة النتيجة التالية:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Insert Scatter Chart

ويبين المثال الرمزي التالي كيفية إدراج خريطة مبعثرة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

وتنتج المدونة النتيجة التالية:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### المنطقة المزروعة Chart

ويبيّن المثال الرمزي التالي كيفية إدراج خريطة منطقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

وتنتج المدونة النتيجة التالية:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Insert Bubble Chart

ويبين المثال الرمزي التالي كيفية إدخال خريطة فقاعة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

وتنتج المدونة النتيجة التالية:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## العمل مع (تشارت) `Shape.Chart` اعتراض

بمجرد إدخال المخطط وملأه بالبيانات يمكنك تغيير مظهره [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) تتضمن الممتلكات جميع الخيارات المتاحة عن طريق الجمهور API.

على سبيل المثال، دعونا نتغير اللقب أو السلوك الأسطوري:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

The code generates the followings results:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## How to work with ChartSeries Collection of Chart

دعونا ننظر في [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) مجموعة جميع سلسلة الخرائط متاحة من خلال [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) المجموعة، التي هي **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

يمكنك أن تزيل السلسلة الواحدة تلو الأخرى أو تنظفها كلها إضافة واحدة جديدة إذا لزم الأمر ويضاف إلى هذه المجموعة بعض سلسلة التقصير التي أضيفت حديثا. لإزالتهم يجب أن تتصل بهم **الرسم البياني** طريقة

## العمل مع كلاسيكية واحدة

هنا هو كيفية العمل مع سلسلة معينة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

كل واحد [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) لديه قصور [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) الخيارات، يرجى محاولة استخدام الرمز التالي لتغييرها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## كَيفَ يَعْملُ مَع وحيدِ ChartDataPoint a `ChartSeries`

استخدام [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) يمكنك تكييف شكل نقطة بيانات واحدة من سلسلة المخططات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## How to work with ChartDataLabel of a single ChartSeries

استخدام [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) يمكنك تحديد شكل بطاقة بيانات واحدة لسلسلة الرسم البياني، مثل العرض/الهيد سيليندكي، الفئة نايم، ست نام القيمة وغيرها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## How to Default Options for ChartDataLabels of ChartSeries

The [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) يحدد الفصل الممتلكات التي يمكن استخدامها لتحديد خيارات التقصير **ChartDataLabels** for Chart **Series**. وتشمل هذه الخواص مجمّع (ShowCategoryName)، ومقياس (ShowBubbleSize)، ونسبة مئوية من البرمجيات (ShowPercentage)، ومؤسسة (ShowSeriesName)، ومؤسسة (ShowSeriesName، وشركة القيمة وغيرها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## How to Format Number of Chart Data Label

استخدام [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) العقارات، يمكنك تحديد رقم استمارة لعلامة بيانات واحدة

ويبين المثال الرمزي التالي كيفية تشكيل عدد من بطاقات البيانات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## How to Set Chart Axis Properties

إذا كنت تريد العمل مع محور الرسم البياني، والتوسع، ووحدات العرض لمحور القيمة، يرجى استخدام [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), و [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) الصفوف

The following code example shows how to define X and Y-axis properties:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### How to Set Dateالقيمة الزمنية للمحور

ويبين المثال الرمزي التالي كيفية تحديد قيم التاريخ/الوقت للمحور:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### How to Format Number Value of Axis

ويبين المثال الرمزي التالي كيفية تغيير شكل الأرقام في محور القيمة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### How to Set Bounds of Axis

The `AxisBound` وتمثل الفئة حدا أدنى أو حدا أقصى للقيم المحورية. يمكن تحديد باوند كقيمة رقمية، وقت التأريخ، أو قيمة خاصة "أوتو".

The following code example shows how to set the bounds of an axis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### How to Set Interval Unit Between Labels

The following code example shows how to set the interval unit between labels on an axis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### How to Hide Chart Axis

إذا كنت تريد أن تظهر أو تخفي محور المخطط، يمكنك ببساطة تحقيق هذا من خلال تحديد قيمة `ChartAxis.Hidden` ملكية

The following code example shows how to hide the Y-axis of the chart:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### How to Align Chart Label

إذا أردت أن تضع نصاً متوافقاً مع الملصقات المتعددة الخط، يمكنك ببساطة تحقيق هذا بتحديد قيمة [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) ملكية

The following code example shows how to tick label alignment:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word الاتساقات (شارت لابل) إلى المركز عن طريق الخطأ

{{% /alert %}}

## كيف يوضع فيل و ستروك

ويمكن تحديد شكل الرصاص والسكتة الدماغية لسلسلة الخرائط ونقاط البيانات والعلامات. لتفعل هذا، عليك استخدام ممتلكات `ChartFormat` Type in the ChartSeries, ChartDataPoint, and ChartMarker classes, as well as aliases for some properties, such as ForeColor, BackColor, Visible, and Transparency in the `Stroke` الصف

والمثال الرمزي التالي يبين كيفية وضع لون السلسلة:

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

ويبين المثال الرمزي التالي كيفية تحديد لون الخط والوزن:

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
