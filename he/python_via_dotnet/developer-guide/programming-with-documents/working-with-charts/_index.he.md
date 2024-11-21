---
title: עבודה עם תרשימים Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Charts
linktitle: עבודה עם Charts
description: "ליצור ולשנות תרשימים של סוגים שונים במסמך באמצעות Python."
type: docs
weight: 310
url: /he/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

חדש חדש חדש [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) השיטה נוספה [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) מעמד. אז בואו נראה כיצד להכניס תרשים טור פשוט לתוך המסמך באמצעות [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) שיטה:

### כיצד להכניס טבלה

בסעיף זה נלמד כיצד להכניס תרשים למסמך.

### תגית: Chart

הדוגמה הבאה של הקוד מראה כיצד להוסיף תרשים עמודה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

הקוד יוצר את התוצאה הבאה:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


יש [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) ו [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) שיטות, שנחשפו כדי לכסות את כל הגרסאות האפשריות של מקורות נתונים לכל סוגי הטבלה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

הקוד יוצר את התוצאה הבאה:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### הכנס Scחומר טבלה

להלן דוגמאות כיצד להוסיף תרשים פיזור.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

הקוד יוצר את התוצאה הבאה:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### אזור טבלה

לדוגמה הקוד הבא מראה כיצד להוסיף תרשים שטח:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

הקוד יוצר את התוצאה הבאה:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### תגית: Bubble Chart

הדוגמה הבאה של הקוד מראה כיצד להכניס תרשים בועות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

הקוד יוצר את התוצאה הבאה:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## עבודה עם תרשימים באמצעות Shape.chart Object

לאחר שהטבלה הוחדרה ומלאה בנתונים, אתה יכול לשנות את המראה שלה. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) הנכס מכיל את כל האפשרויות הקשורות לטבלה הזמינות באמצעות הציבור API.

לדוגמה, בואו לשנות [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) שם או אגדה התנהגות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

הקוד יוצר את התוצאות הבאות:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## כיצד לעבוד עם ChartSeriesCollection of Chart

בואו נסתכל [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) אוסף. כל סדרות הטבלה זמינות באמצעות [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) אוסף:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

אתה יכול להסיר סדרה אחת או לנקות את כולם, כמו גם להוסיף אחד חדש במידת הצורך. בתרשים המוכנס החדש יש כמה סדרות ברירת מחדל נוספות לאוסף זה. כדי להסיר אותם אתה צריך להתקשר [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) שיטה.

## עבודה עם Single ChartSeries Class

הנה איך לעבוד עם סדרה מסוימת.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

ראה את התוצאה למטה:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


הכל רווק [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) כברירת מחדל [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) אפשרויות, אנא נסה להשתמש בקוד הבא כדי לשנות אותם:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

ראה את התוצאה למטה:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## כיצד לעבוד עם נקודת נתונים בודדת `ChartSeries`

שימוש [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) אתה יכול להתאים אישית את פורמט של נקודת נתונים אחת של סדרת תרשים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

ראה את התוצאה למטה:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## כיצד לעבוד עם ChartDataLabel של טבלה אחת

שימוש [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) אתה יכול לציין את הפורמט של תווית נתונים אחת של סדרת התרשים, כמו show /hide LegendKey, Category שם, סדרה, ערך וכו '.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

ראה את התוצאה למטה:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## כיצד Define Default Options for ChartDataLabels of ChartSeries

The The The [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) מחלקה מגדיר תכונות שניתן להשתמש כדי להגדיר אפשרויות ברירת מחדל עבור [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) עבור Chart Series. תכונות אלה כוללות [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) וכו'.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

ראה את התוצאה למטה:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## כיצד לעצב מספר של תרשים נתונים

שימוש [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) אתה יכול לציין פורמט מספר של תווית נתונים אחת של התרשים.

לדוגמה הקוד הבא מראה כיצד לעצב מספר של תווית הנתונים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## כיצד להגדיר את שאר הנכסים

אם אתה רוצה לעבוד עם ציר תרשים, קנה מידה, ולהציג יחידות עבור ציר הערך, אנא השתמש [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), ו [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) שיעורים.

הדוגמה הבאה של הקוד מראה כיצד להגדיר תכונות X ו- Y-axis:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### כיצד להגדיר Date ערך הזמן של ציר

הדוגמה הבאה של הקוד מראה כיצד לקבוע ערכי תאריך/שעה לתכונות ציר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### כיצד לעצב ערך מספר של ציר

לדוגמה הקוד הבא מראה כיצד לשנות את פורמט המספרים על ציר הערך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### כיצד להגדיר גבולות של ציר

The The The [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) שיעור מייצג מינימום או מקסימום ערכי ציר. Bound יכול להיות מוגדר כמספרי, זמן תאריך או ערך מיוחד "auto".

הדוגמה הבאה של הקוד מראה כיצד להגדיר גבולות של ציר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### כיצד להגדיר יחידת אינטרוול בין תוויות

הדוגמה הבאה של הקוד מראה כיצד להגדיר את יחידת המרווח בין תוויות בציר:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### איך להגות Chart

אם אתה רוצה להראות או להסתיר את ציר התרשים, אתה יכול פשוט להשיג את זה על ידי הגדרת הערך של [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) רכוש.

הדוגמה הקודית הבאה מראה כיצד להסתיר את Y-axis של התרשים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### איך להגות Align Chart

אם אתה רוצה להגדיר היערכות טקסט עבור תוויות מרובות באינטרנט, אתה יכול פשוט להשיג את זה על ידי הגדרת הערך של [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד לתכנת תוויות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word מיישר את התווית של Chart למרכז כברירת מחדל.

{{% /alert %}}

## כיצד להגדיר Fill and Stroke Format

פורמט מלא ושבץ ניתן להגדיר עבור סדרות תרשים, נקודות נתונים וסמן. כדי לעשות זאת, עליך להשתמש בתכונות של [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) סוג ב [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), ו [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) שיעורים, כמו גם כינויים עבור כמה נכסים, כגון [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), ו [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) בתוך [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) מעמד.

דוגמה לקוד הבא מראה כיצד להגדיר צבע סדרה:

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

דוגמה לקוד הבא מראה כיצד להגדיר צבע קו ומשקל:

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
