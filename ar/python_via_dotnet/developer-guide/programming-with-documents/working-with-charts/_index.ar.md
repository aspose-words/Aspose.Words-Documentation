---
title: العمل مع الرسوم البيانية في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الرسوم البيانية
linktitle: العمل مع الرسوم البيانية
description: "قم بإنشاء وتعديل المخططات من أنواع مختلفة في مستند باستخدام Python."
type: docs
weight: 310
url: /ar/python-net/working-with-charts/
---

تمت إضافة طريقة [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) جديدة إلى فئة [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). لذلك، دعونا نرى كيفية إدراج مخطط عمودي بسيط في المستند باستخدام طريقة [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### كيفية إدراج مخطط

سنتعلم في هذا القسم كيفية إدراج مخطط في مستند.

### إدراج مخطط عمودي

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مخطط عمودي:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

الكود يعطي النتيجة التالية:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


هناك طرق [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/) و[add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) و[add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/)، والتي تم عرضها لتغطية جميع المتغيرات المحتملة لمصادر البيانات لجميع أنواع المخططات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

الكود يعطي النتيجة التالية:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### إدراج مخطط مبعثر

يوضح المثال أدناه كيفية إدراج مخطط مبعثر.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

الكود يعطي النتيجة التالية:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### إدراج مخطط مساحي

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مخطط مساحي:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

الكود يعطي النتيجة التالية:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### إدراج مخطط فقاعي

يوضح مثال التعليمات البرمجية التالي كيفية إدراج مخطط فقاعي:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

الكود يعطي النتيجة التالية:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## العمل مع المخططات من خلال كائن Shape.chart

بمجرد إدراج المخطط وملؤه بالبيانات، يمكنك تغيير مظهره. تحتوي خاصية [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) على جميع الخيارات المتعلقة بالمخطط المتاحة من خلال API العام.

على سبيل المثال، لنغير عنوان [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) أو سلوك وسيلة الإيضاح:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

يُنشئ الكود النتائج التالية:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## كيفية العمل مع مجموعة ChartSeries من الرسم البياني

دعونا نلقي نظرة على مجموعة [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). جميع سلاسل المخططات متاحة من خلال مجموعة [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

يمكنك إزالة السلسلة واحدة تلو الأخرى أو مسحها جميعًا بالإضافة إلى إضافة سلسلة جديدة إذا لزم الأمر. يحتوي المخطط المدرج حديثًا على بعض السلاسل الافتراضية المضافة إلى هذه المجموعة. لإزالتها تحتاج إلى استدعاء طريقة [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## العمل مع فئة ChartSeries واحدة

إليك كيفية العمل مع سلسلة معينة.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


تحتوي جميع ملفات [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) المنفردة على خيارات [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) افتراضية، يرجى محاولة استخدام الكود التالي لتغييرها:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## كيفية العمل مع ChartDataPoint واحد لـ `ChartSeries`

باستخدام [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/)، يمكنك تخصيص تنسيق نقطة بيانات واحدة في سلسلة المخططات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

يرجى الاطلاع على النتيجة أدناه:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## كيفية العمل مع ChartDataLabel لسلسلة ChartSeries واحدة

باستخدام [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/)، يمكنك تحديد تنسيق تسمية بيانات واحدة لسلسلة المخططات، مثل إظهار/إخفاء LegendKey وCategoryName وSeriesName وValue وما إلى ذلك.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

يرجى الاطلاع على النتيجة أدناه:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## كيفية تحديد الخيارات الافتراضية لـ ChartDataLabels في ChartSeries

تحدد فئة [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) الخصائص التي يمكن استخدامها لتعيين الخيارات الافتراضية لـ [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) لسلسلة المخططات. تتضمن هذه الخصائص [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/) و[show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/) و[show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/) و[show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/) و[show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) وما إلى ذلك.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

يرجى الاطلاع على النتيجة أدناه:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## كيفية تنسيق عدد تسمية بيانات المخطط

باستخدام [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/)، يمكنك تحديد تنسيق الأرقام لتسمية بيانات واحدة للمخطط.

يوضح مثال التعليمات البرمجية التالي كيفية تنسيق عدد من تسمية البيانات:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## كيفية تعيين خصائص محور المخطط

إذا كنت تريد العمل مع محور المخطط ووحدات القياس والعرض لمحور القيمة، فيرجى استخدام فئات [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/) و[AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) و[AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

يوضح مثال التعليمات البرمجية التالي كيفية تعريف خصائص المحور X وY:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### كيفية تعيين القيمة الزمنية للمحور Date

يوضح مثال التعليمات البرمجية التالي كيفية تعيين قيم التاريخ/الوقت لخصائص المحور:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### كيفية تنسيق قيمة الرقم للمحور

يوضح مثال التعليمات البرمجية التالي كيفية تغيير تنسيق الأرقام على محور القيمة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### كيفية تعيين حدود المحور

تمثل فئة [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) الحد الأدنى أو الأقصى لقيم المحور. يمكن تحديد المنضم كقيمة رقمية أو تاريخ/وقت أو قيمة "تلقائية" خاصة.

يوضح مثال التعليمات البرمجية التالي كيفية تعيين حدود المحور:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### كيفية ضبط وحدة الفاصل الزمني بين التسميات

يوضح مثال التعليمات البرمجية التالي كيفية تعيين وحدة الفاصل الزمني بين التسميات على المحور:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### كيفية إخفاء محور الرسم البياني

إذا كنت تريد إظهار أو إخفاء محور المخطط، فيمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة خاصية [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

يوضح مثال التعليمات البرمجية التالي كيفية إخفاء المحور Y للمخطط:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### كيفية محاذاة تسمية المخطط

إذا كنت تريد تعيين محاذاة النص للتسميات متعددة الأسطر، فيمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة خاصية [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

يوضح مثال التعليمات البرمجية التالي كيفية تحديد محاذاة التسمية:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

يقوم برنامج MS Word بمحاذاة تسمية المخطط إلى المركز بشكل افتراضي.

{{% /alert %}}

## كيفية ضبط تنسيق التعبئة والحد

يمكن تعيين تنسيق التعبئة والحد لسلسلة المخططات ونقاط البيانات والعلامات. للقيام بذلك، تحتاج إلى استخدام خصائص نوع [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) في فئات [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) و[ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) و[ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/)، بالإضافة إلى الأسماء المستعارة لبعض الخصائص، مثل [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/) و[back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/) و[visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) و[transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) في فئة [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

يوضح مثال التعليمات البرمجية التالي كيفية تعيين لون السلسلة:

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

يوضح مثال التعليمات البرمجية التالي كيفية تعيين لون الخط ووزنه:

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
