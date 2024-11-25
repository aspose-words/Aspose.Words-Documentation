---
title: العمل مع الرسوم البيانية في Java
second_title: Aspose.Words ل Java
articleTitle: العمل مع الرسوم البيانية
linktitle: العمل مع الرسوم البيانية
description: "مقدمة في ميزة الرسم البياني، وكيفية إنشاء المخططات ومعالجتها باستخدام Java."
type: docs
weight: 310
url: /ar/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

تمت إضافة طريقة [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) الجديدة إلى فئة [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). لذلك، دعونا نرى كيفية إدراج مخطط عمود بسيط في المستند باستخدام طريقة **insertChart**.


## كيفية إدراج مخطط من الصفر باستخدام Aspose.Words

في هذا القسم سوف نتعلم كيفية إدراج مخطط في مستند.

###  إدراج مخطط العمود

يوضح مثال الكود التالي كيفية إدراج مخطط العمود:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

ينتج الكود النتيجة التالية:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

هناك أربعة أحمال زائدة مختلفة لطريقة إضافة السلسلة، والتي تم الكشف عنها لتغطية جميع المتغيرات الممكنة لمصادر البيانات لجميع أنواع المخططات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

ينتج الكود النتيجة التالية:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### إدراج مخطط مبعثر

يوضح مثال الكود التالي كيفية إدراج مخطط مبعثر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

ينتج الكود النتيجة التالية:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### إدراج مخطط المنطقة

يوضح مثال الكود التالي كيفية إدراج مخطط منطقة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

ينتج الكود النتيجة التالية:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### إدراج الرسم البياني فقاعة

يوضح مثال الكود التالي كيفية إدراج مخطط فقاعي:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

ينتج الكود النتيجة التالية:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## العمل مع المخططات من خلال `Shape.Chart` كائن

مرة واحدة تم إدراج الرسم البياني ومليئة البيانات، كنت قادرا على تغيير مظهره. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) تحتوي الخاصية على جميع الخيارات المتعلقة بالمخطط المتاحة من خلال الجمهور API.

على سبيل المثال، لنغير عنوان المخطط أو سلوك وسيلة الإيضاح:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

رمز يولد النتائج التالية:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## كيفية العمل مع ChartSeriesCollection من الرسم البياني

دعونا ننظر في [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) جمع. تتوفر جميع سلاسل المخططات من خلال مجموعة [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries)، وهي **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

يمكنك إزالة سلسلة واحدة تلو الأخرى أو مسح كل منهم وكذلك إضافة واحدة جديدة إذا لزم الأمر. يحتوي المخطط المدرج حديثا على بعض السلاسل الافتراضية المضافة إلى هذه المجموعة. لإزالتها تحتاج إلى استدعاء طريقة **chart.getSeries().clear()**.

## العمل مع فئة واحدة ChartSeries

هنا هو كيفية العمل مع سلسلة معينة.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

كل واحد [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) لديك خيارات [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) الافتراضية، يرجى محاولة استخدام التعليمات البرمجية التالية لتغييرها:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## كيفية العمل مع واحد ChartDataPoint من `ChartSeries`

باستخدام [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) كنت قادرا على تخصيص تنسيق نقطة بيانات واحدة من سلسلة الرسم البياني:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## كيفية العمل مع ChartDataLabel من واحد ChartSeries

باستخدام [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) كنت قادرا على تحديد تنسيق تسمية بيانات واحدة من سلسلة الرسم البياني، مثل إظهار / إخفاء LegendKey, CategoryName, SeriesName, قيمة الخ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## كيفية تحديد الخيارات الافتراضية لـ ChartDataLabels من ChartSeries

تحدد فئة [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) الخصائص التي يمكن استخدامها لتعيين الخيارات الافتراضية لـ **ChartDataLabels** للمخطط **Series**. وتشمل هذه الخصائصsetShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue الخ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

يرجى الاطلاع على النتيجة أدناه:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## كيفية تنسيق رقم تسمية بيانات المخطط

باستخدام خاصية [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat)، يمكنك تحديد تنسيق رقم تسمية بيانات واحدة للمخطط.

يوضح مثال التعليمات البرمجية التالية كيفية تنسيق عدد من تسمية البيانات:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## كيفية تعيين خصائص محور الرسم البياني

إذا كنت ترغب في العمل مع وحدات محور المخطط والقياس والعرض لمحور القيمة، فيرجى استخدام فئات [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/) و [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) و [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

يوضح مثال الكود التالي كيفية تعريف خصائص المحور س و ص:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### كيفية تعيين DateTime قيمة المحور

يوضح مثال التعليمات البرمجية التالية كيفية تعيين قيم التاريخ / الوقت إلى خصائص المحور:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### كيفية تنسيق قيمة رقم المحور

يوضح مثال التعليمات البرمجية التالية كيفية تغيير تنسيق الأرقام على محور القيمة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### كيفية تعيين حدود المحور

تمثل فئة `AxisBound` حدا أدنى أو أقصى لقيم المحور. يمكن تحديد ملزمة كقيمة رقمية أو تاريخ-وقت أو قيمة "تلقائية" خاصة.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين حدود محور:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### كيفية تعيين وحدة الفاصل الزمني بين التسميات

يوضح مثال التعليمات البرمجية التالية كيفية تعيين وحدة الفاصل الزمني بين التسميات على محور:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### كيفية إخفاء محور الرسم البياني

إذا كنت تريد إظهار أو إخفاء محور المخطط، يمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة `ChartAxis.Hidden` خاصية.

يوضح مثال الكود التالي كيفية إخفاء المحور الصادي للمخطط:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### كيفية محاذاة تسمية المخطط

إذا كنت ترغب في تعيين محاذاة نص للتسميات متعددة الأسطر، فيمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) خاصية.

يوضح مثال الكود التالي كيفية تحديد محاذاة التسمية:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word محاذاة تسمية المخطط إلى المركز افتراضيا.

{{% /alert %}}

## كيفية تعيين تنسيق التعبئة والسكتة الدماغية

يمكن تعيين تنسيق التعبئة والسكتة الدماغية لسلسلة المخططات ونقاط البيانات والعلامات. للقيام بذلك، تحتاج إلى استخدام خصائص `ChartFormat` اكتب في ChartSeries، ChartDataPoint، و ChartMarker الطبقات، وكذلك الأسماء المستعارة لبعض الخصائص، مثل ForeColor، BackColor، مرئية، والشفافية في فئة `Stroke`.

يوضح مثال الكود التالي كيفية تعيين لون السلسلة:

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

يوضح مثال الكود التالي كيفية تعيين لون الخط ووزنه:

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
