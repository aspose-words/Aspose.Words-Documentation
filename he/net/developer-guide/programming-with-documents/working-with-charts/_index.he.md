---
title: עבודה עם תרשימים C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Charts
linktitle: עבודה עם Charts
description: "מבוא לתכונה Chart, כיצד ליצור ולתפעל charts באמצעות שימוש C#."
type: docs
weight: 310
url: /he/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

חדש חדש חדש [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) השיטה נוספה [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) מעמד. אז, בואו נראה כיצד להכניס תרשים טור פשוט לתוך המסמך תוך שימוש במסמך. [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) שיטה.

## כיצד להכניס טבלה

בסעיף זה נלמד כיצד להכניס תרשים למסמך.

### תגית: Chart

הדוגמה הבאה של הקוד מראה כיצד להוסיף תרשים עמודה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

הקוד יוצר את התוצאה הבאה:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


ישנם ארבעה עומסים שונים בסדרה הוסף שיטה, אשר נחשף כדי לכסות את כל הגרסאות האפשריות של מקורות נתונים עבור כל סוגי הטבלה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

הקוד יוצר את התוצאה הבאה:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### הכנס Scחומר טבלה

הדוגמה הבאה של הקוד מראה כיצד להוסיף תרשים פיזור:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

הקוד יוצר את התוצאה הבאה:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### אזור טבלה

לדוגמה הקוד הבא מראה כיצד להוסיף תרשים שטח:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

הקוד יוצר את התוצאה הבאה:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### תגית: Bubble Chart

הדוגמה הבאה של הקוד מראה כיצד להכניס תרשים בועות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

הקוד יוצר את התוצאה הבאה:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## עבודה עם טבלאות `Shape.Chart` אובייקטים

לאחר שהטבלה הוחדרה ומלאה בנתונים, אתה יכול לשנות את המראה שלה. `Shape.Chart` הנכס מכיל את כל האפשרויות הקשורות לטבלה הזמינות באמצעות הציבור API.

לדוגמה, בואו לשנות כותרת או התנהגות אגדה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

הקוד יוצר את התוצאות הבאות:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## כיצד לעבוד עם ChartSeriesCollection of Chart

בואו נסתכל [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) אוסף. כל סדרות הטבלה זמינות באמצעות [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) אוסף, מה **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

אתה יכול להסיר סדרה אחת או לנקות את כולם, כמו גם להוסיף אחד חדש במידת הצורך. בתרשים המוכנס החדש יש כמה סדרות ברירת מחדל נוספות לאוסף זה. כדי להסיר אותם אתה צריך להתקשר **טבלה.Series.Clear()** שיטה.

## עבודה עם Single ChartSeries Class

הנה איך לעבוד עם סדרה מסוימת:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

ראה את התוצאה למטה:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


הכל רווק [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) כברירת מחדל [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) אפשרויות, אנא נסה להשתמש בקוד הבא כדי לשנות אותם:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

ראה את התוצאה למטה:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## כיצד לעבוד עם נקודת נתונים בודדת `ChartSeries`

שימוש [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) אתה יכול להתאים אישית את פורמט של נקודת נתונים אחת של סדרת תרשים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

ראה את התוצאה למטה:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## כיצד לעבוד עם ChartDataLabel של טבלה אחת

שימוש [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) אתה יכול לציין את הפורמט של תווית נתונים אחת של סדרת התרשים, כמו show /hide LegendKey, Category שם, סדרה, ערך וכו':

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

ראה את התוצאה למטה:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## כיצד Define Default Options for ChartDataLabels of ChartSeries

The The The [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) מחלקה מגדיר תכונות שניתן להשתמש כדי להגדיר אפשרויות ברירת מחדל עבור **ChartDataLabels** עבור Chart **Series**. תכונות אלה כוללות ShowCategoryname, ShowBubbleSize, ShowPercentage, ShowSeriesname, ShowSeriesname. ערך וכו':

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

ראה את התוצאה למטה:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## כיצד לעצב מספר של תרשים נתונים

שימוש [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) אתה יכול לציין פורמט מספר של תווית נתונים אחת של התרשים.

לדוגמה הקוד הבא מראה כיצד לעצב מספר של תווית הנתונים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## כיצד להגדיר את שאר הנכסים

אם אתה רוצה לעבוד עם ציר תרשים, קנה מידה, ולהציג יחידות עבור ציר הערך, אנא השתמש [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), ו [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) שיעורים.

הדוגמה הבאה של הקוד מראה כיצד להגדיר תכונות X ו- Y-axis:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### כיצד להגדיר Date ערך הזמן של ציר

הדוגמה הבאה של הקוד מראה כיצד לקבוע ערכי תאריך/שעה לתכונות ציר:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### כיצד לעצב ערך מספר של ציר

לדוגמה הקוד הבא מראה כיצד לשנות את פורמט המספרים על ציר הערך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### כיצד להגדיר גבולות של ציר

The The The `AxisBound` שיעור מייצג מינימום או מקסימום ערכי ציר. Bound יכול להיות מוגדר כמספרי, זמן תאריך או ערך מיוחד "auto".

הדוגמה הבאה של הקוד מראה כיצד להגדיר גבולות של ציר:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### כיצד להגדיר יחידת אינטרוול בין תוויות

הדוגמה הבאה של הקוד מראה כיצד להגדיר את יחידת המרווח בין תוויות בציר:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### איך להגות Chart

אם אתה רוצה להראות או להסתיר את ציר התרשים, אתה יכול פשוט להשיג את זה על ידי הגדרת הערך של `ChartAxis.Hidden` רכוש.

הדוגמה הקודית הבאה מראה כיצד להסתיר את Y-axis של התרשים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### איך להגות Align Chart

אם אתה רוצה להגדיר היערכות טקסט עבור תוויות מרובות באינטרנט, אתה יכול פשוט להשיג את זה על ידי הגדרת הערך של [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.תגית: Alignment** רכוש.

הדוגמה הבאה של הקוד מראה כיצד לתכנת תוויות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word התאמות טבלה תווית למרכז כברירת מחדל.

{{% /alert %}}

## כיצד להגדיר Fill and Stroke Format

פורמט מלא ושבץ ניתן להגדיר עבור סדרות תרשים, נקודות נתונים וסמן. כדי לעשות זאת, עליך להשתמש בתכונות של **ChartFormat** סוג ב **ChartSeries**, **ChartDataPoint**, ו **ChartMarker** שיעורים, כמו גם alias עבור כמה נכסים, כגון ForeColor, BackColor, Visible ו Transparency in the Transparency `Stroke` מעמד.

דוגמה לקוד הבא מראה כיצד להגדיר צבע סדרה:

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

דוגמה לקוד הבא מראה כיצד להגדיר צבע קו ומשקל:

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
