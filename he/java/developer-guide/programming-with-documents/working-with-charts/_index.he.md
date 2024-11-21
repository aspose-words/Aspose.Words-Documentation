---
title: עבודה עם תרשימים Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Charts
linktitle: עבודה עם Charts
description: "מבוא לתכונה Chart, כיצד ליצור ולתפעל charts באמצעות שימוש Java."
type: docs
weight: 310
url: /he/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

החדש [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) השיטה נוספה לתוך [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) מעמד. אז בואו נראה כיצד להכניס תרשים טור פשוט לתוך המסמך באמצעות **הכנס טבלה** שיטה.


## כיצד להכניס טבלה מגרד באמצעות Aspose.Words

בסעיף זה נלמד כיצד להכניס תרשים למסמך.

###  תגית: Chart

הדוגמה הבאה של הקוד מראה כיצד להוסיף תרשים עמודה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

הקוד יוצר את התוצאה הבאה:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

יש ארבעה עומסים שונים בסדרה הוסף שיטה, אשר נחשפו כדי לכסות את כל הגרסאות האפשריות של מקורות נתונים עבור כל סוגי הטבלה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

הקוד יוצר את התוצאה הבאה:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### הכנס Scחומר טבלה

דוגמא הקוד הבא מראה כיצד להוסיף תרשים פיזור:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

הקוד יוצר את התוצאה הבאה:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### אזור טבלה

הדוגמה הבאה של הקוד מראה כיצד להוסיף תרשים שטח:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

הקוד יוצר את התוצאה הבאה:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### תגית: Bubble Chart

דוגמא הקוד הבא מראה כיצד להכניס תרשים בועות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

הקוד יוצר את התוצאה הבאה:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## עבודה עם טבלאות `Shape.Chart` אובייקטים

לאחר שהטבלה הוחדרה ומלאה בנתונים, אתה יכול לשנות את המראה שלה. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) הנכס מכיל את כל האפשרויות הקשורות לטבלה הזמינות באמצעות הציבור API.

לדוגמה, בואו לשנות כותרת או התנהגות אגדה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

הקוד יוצר את התוצאות הבאות:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## כיצד לעבוד עם ChartSeriesCollection of Chart

בואו נסתכל [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) אוסף. כל סדרות הטבלה זמינות באמצעות [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) אוסף, מה **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

אתה יכול להסיר סדרה אחת או לנקות את כולם, כמו גם להוסיף אחד חדש במידת הצורך. בתרשים המוכנס החדש יש כמה סדרות ברירת מחדל נוספות לאוסף זה. כדי להסיר אותם אתה צריך להתקשר **טבלה.getSeries( clear)** שיטה.

## עבודה עם Single ChartSeries Class

הנה איך לעבוד עם סדרה מסוימת.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

ראה את התוצאה למטה:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

הכל רווק [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) כברירת מחדל [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) אפשרויות, אנא נסה להשתמש בקוד הבא כדי לשנות אותם:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## כיצד לעבוד עם נקודת נתונים בודדת `ChartSeries`

שימוש [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) אתה יכול להתאים אישית את פורמט של נקודת נתונים אחת של סדרת תרשים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

ראה את התוצאה למטה:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## כיצד לעבוד עם ChartDataLabel של טבלה אחת

שימוש [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) אתה יכול לציין את הפורמט של תווית נתונים אחת של סדרת הטבלה, כמו show /hide LegendKey, Category שם הסדרה, ערך וכו':

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

ראה את התוצאה למטה:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## כיצד Define Default Options for ChartDataLabels of ChartSeries

The The The [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) מחלקה מגדיר תכונות שניתן להשתמש כדי להגדיר אפשרויות ברירת מחדל עבור **ChartDataLabels** עבור Chart **Series**. תכונות אלה כוללות להגדיר ShowCategory שם, להגדיר ShowBubbleSize, להגדיר ShowPercentage, להגדיר ShowSeries שם, להגדיר Show ערך וכו':

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

ראה את התוצאה למטה:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## כיצד לעצב מספר של תרשים נתונים

באמצעות [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) נכס, אתה יכול לציין את מספר פורמט של תווית נתונים אחת של התרשים.

הדוגמה הבאה של הקוד מראה כיצד לעצב מספר תוויות הנתונים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## כיצד להגדיר את שאר הנכסים

אם אתה רוצה לעבוד עם ציר תרשים, קנה מידה, ולהציג יחידות עבור ציר הערך, אנא השתמש [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), ו [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) שיעורים.

דוגמה לקוד הבא מראה כיצד להגדיר תכונות X ו- Y-axis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### כיצד להגדיר Dateערך הזמן של ציר

הדוגמה הבאה של הקוד מראה כיצד לקבוע ערכי תאריך/שעה לנכסי ציר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### כיצד לעצב ערך מספר של ציר

לדוגמה הקוד הבא מראה כיצד לשנות את פורמט המספרים על ציר הערך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### כיצד להגדיר גבולות של ציר

The The The `AxisBound` שיעור מייצג מינימום או מקסימום ערכי ציר. Bound יכול להיות מוגדר כמספרי, זמן תאריך או ערך מיוחד "auto".

הדוגמה הבאה של הקוד מראה כיצד להגדיר את גבולות הציר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### כיצד להגדיר יחידת אינטרוול בין תוויות

הדוגמה הבאה של הקוד מראה כיצד להגדיר את יחידת המרווח בין תוויות בציר:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### איך להגות Chart

אם אתה רוצה להראות או להסתיר את ציר התרשים, אתה יכול פשוט להשיג את זה על ידי הגדרת הערך של `ChartAxis.Hidden` רכוש.

הדוגמה הקודית הבאה מראה כיצד להסתיר את Y-axis של התרשים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### איך להגות Align Chart

אם אתה רוצה להגדיר היערכות טקסט עבור תוויות מרובות באינטרנט, אתה יכול פשוט להשיג את זה על ידי הגדרת הערך של [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) רכוש.

הדוגמה הבאה לקוד מראה כיצד לתכנת תוויות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word התאמות טבלה תווית למרכז כברירת מחדל.

{{% /alert %}}

## כיצד להגדיר Fill and Stroke Format

פורמט מלא ושבץ ניתן להגדיר עבור סדרות תרשים, נקודות נתונים וסמן. כדי לעשות זאת, עליך להשתמש בתכונות של `ChartFormat` סוג של הטבלהSeries, ChartDataPoint ו- ChartMarker, כמו גם כינויים עבור כמה תכונות, כגון ForeColor, BackColor, Visible, Transparency in the the Transparency. `Stroke` מעמד.

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

doc.Save("ColumnColor.docx");
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
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}
