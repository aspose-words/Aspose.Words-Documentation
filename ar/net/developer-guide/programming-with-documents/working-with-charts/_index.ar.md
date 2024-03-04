---
title: العمل مع الرسوم البيانية في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الرسوم البيانية
linktitle: العمل مع الرسوم البيانية
description: "مقدمة إلى ميزة الرسم البياني، وكيفية إنشاء الرسوم البيانية ومعالجتها باستخدام C#."
type: docs
weight: 310
url: /ar/net/working-with-charts/
---

تمت إضافة طريقة [InsertChart](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertchart/) جديدة إلى فئة [DocumentBuilder](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/). لذلك، دعونا نرى كيفية إدراج مخطط عمودي بسيط في المستند باستخدام طريقة [InsertChart](https://reference.aspose.com/words/ar/net/aspose.words/documentbuilder/insertchart/).

## كيفية إدراج مخطط

سنتعلم في هذا القسم كيفية إدراج مخطط في مستند.

### إدراج مخطط عمودي

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مخطط عمودي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

الكود يعطي النتيجة التالية:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


هناك أربعة حمولات زائدة مختلفة لطريقة إضافة السلسلة، والتي تم عرضها لتغطية جميع المتغيرات المحتملة لمصادر البيانات لجميع أنواع المخططات:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

الكود يعطي النتيجة التالية:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### إدراج مخطط مبعثر

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مخطط مبعثر:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

الكود يعطي النتيجة التالية:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### إدراج مخطط مساحي

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مخطط مساحي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

الكود يعطي النتيجة التالية:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### إدراج مخطط فقاعي

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مخطط فقاعي:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

الكود يعطي النتيجة التالية:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## العمل مع المخططات من خلال كائن `Shape.Chart`

بمجرد إدراج المخطط وملؤه بالبيانات، يمكنك تغيير مظهره. تحتوي خاصية `Shape.Chart` على جميع الخيارات المتعلقة بالمخطط المتاحة من خلال API العام.

على سبيل المثال، لنغير عنوان المخطط أو سلوك وسيلة الإيضاح:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

يُنشئ الكود النتائج التالية:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## كيفية العمل مع مجموعة ChartSeries من الرسم البياني

دعونا نلقي نظرة على مجموعة [ChartSeries](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartseries/). جميع سلاسل الرسوم البيانية متاحة من خلال مجموعة [chart.Series](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chart/series/)، وهي **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

يمكنك إزالة السلسلة واحدة تلو الأخرى أو مسحها جميعًا بالإضافة إلى إضافة سلسلة جديدة إذا لزم الأمر. يحتوي المخطط المدرج حديثًا على بعض السلاسل الافتراضية المضافة إلى هذه المجموعة. لإزالتها تحتاج إلى استدعاء طريقة **مخطط.سلسلة.واضح()**.

## العمل مع فئة ChartSeries واحدة

إليك كيفية العمل مع سلسلة معينة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


تحتوي جميع ملفات [ChartSeries](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartseries/) المنفردة على خيارات [ChartDataPoint](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartdatapoint/) افتراضية، يرجى محاولة استخدام الكود التالي لتغييرها:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## كيفية العمل مع ChartDataPoint واحد لـ `ChartSeries`

باستخدام [ChartDataPoint](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartdatapoint/)، يمكنك تخصيص تنسيق نقطة بيانات واحدة في سلسلة المخططات:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## كيفية العمل مع ChartDataLabel لسلسلة ChartSeries واحدة

باستخدام [ChartDataLabel](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartdatalabel/)، يمكنك تحديد تنسيق تسمية بيانات واحدة لسلسلة المخططات، مثل إظهار/إخفاء LegendKey وCategoryName وSeriesName وValue وما إلى ذلك:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

يرجى الاطلاع على النتيجة أدناه:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## كيفية تحديد الخيارات الافتراضية لـ ChartDataLabels في ChartSeries

تحدد فئة [ChartDataLabelCollection](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartdatalabelcollection/) الخصائص التي يمكن استخدامها لتعيين الخيارات الافتراضية لـ **ChartDataLabels** لـ Chart **Series**. تتضمن هذه الخصائص ShowCategoryName وShowBubbleSize وShowPercentage وShowSeriesName وShowValue وما إلى ذلك:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

يرجى الاطلاع على النتيجة أدناه:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## كيفية تنسيق عدد تسمية بيانات المخطط

باستخدام [NumberFormat](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartdatalabel/numberformat/)، يمكنك تحديد تنسيق الأرقام لتسمية بيانات واحدة للمخطط.

يوضح مثال التعليمات البرمجية التالي كيفية تنسيق عدد من تسمية البيانات:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## كيفية تعيين خصائص محور المخطط

إذا كنت تريد العمل مع محور المخطط ووحدات القياس والعرض لمحور القيمة، فيرجى استخدام فئات [ChartAxis](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartaxis/) و[AxisDisplayUnit](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/axisdisplayunit/) و[AxisScaling](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/axisscaling/).

يوضح مثال التعليمات البرمجية التالي كيفية تعريف خصائص المحور X وY:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### كيفية تعيين القيمة الزمنية للمحور Date

يوضح مثال التعليمات البرمجية التالي كيفية تعيين قيم التاريخ/الوقت لخصائص المحور:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### كيفية تنسيق قيمة الرقم للمحور

يوضح مثال التعليمات البرمجية التالي كيفية تغيير تنسيق الأرقام على محور القيمة:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### كيفية تعيين حدود المحور

تمثل فئة `AxisBound` الحد الأدنى أو الأقصى لقيم المحور. يمكن تحديد المنضم كقيمة رقمية أو تاريخ/وقت أو قيمة "تلقائية" خاصة.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين حدود المحور:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### كيفية ضبط وحدة الفاصل الزمني بين التسميات

يوضح مثال التعليمات البرمجية التالي كيفية تعيين وحدة الفاصل الزمني بين التسميات على المحور:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### كيفية إخفاء محور الرسم البياني

إذا كنت تريد إظهار أو إخفاء محور المخطط، فيمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة خاصية `ChartAxis.Hidden`.

يوضح مثال التعليمات البرمجية التالي كيفية إخفاء المحور Y للمخطط:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### كيفية محاذاة تسمية المخطط

إذا كنت تريد تعيين محاذاة النص للتسميات متعددة الأسطر، فيمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة خاصية [TickLabels](https://reference.aspose.com/words/ar/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.تنسيق**.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد محاذاة التسمية:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

يقوم Microsoft Word بمحاذاة تسمية المخطط إلى المركز بشكل افتراضي.

{{% /alert %}}

## كيفية ضبط تنسيق التعبئة والحد

يمكن تعيين تنسيق التعبئة والحد لسلسلة المخططات ونقاط البيانات والعلامات. للقيام بذلك، تحتاج إلى استخدام خصائص نوع **ChartFormat** في فئات **ChartSeries** و**ChartDataPoint** و**ChartMarker**، بالإضافة إلى الأسماء المستعارة لبعض الخصائص، مثل ForeColor وBackColor وVisible وTransparency في فئة `Stroke`.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين لون السلسلة:

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

يوضح مثال التعليمات البرمجية التالي كيفية تعيين لون الخط ووزنه:

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
