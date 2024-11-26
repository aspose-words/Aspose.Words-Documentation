---
title: Робота з графіками в Java
second_title: Aspose.Words для Java
articleTitle: Робота з графіками
linktitle: Робота з графіками
description: "Вступ до діаграми функції, як створити і маніпулювати діаграми за допомогою Javaй"
type: docs
weight: 310
url: /uk/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Новий [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) метод додано в [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) клас. Отже, побачимо, як вставити просту таблицю стовпців у документ, використовуючи **Увійти Графік** метод.


## Як вставити діаграму з Scratch за допомогою Aspose.Words

У цьому розділі ми дізнаємося, як вставити діаграму в документ.

###  Вставити колону діаграми

Приклад наступного коду показує, як вставити діаграму стовпців:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Код виробляє наступний результат:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Є чотири різні перевантаження для серії Додати метод, який піддався обкладинці всіх можливих варіантів джерел даних для всіх типів діаграм:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Код виробляє наступний результат:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Вставити Scatter Графік

Приклад наступного коду показує, як вставити діаграму розсіювача:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Код виробляє наступний результат:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Вставити площу Графік

Приклад коду показує, як вставити діаграму області:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Код виробляє наступний результат:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Вставити Bubble Chart

Приклад наступного коду показує, як вставити діаграму міхура:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Код виробляє наступний результат:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Робота з графіками через `Shape.Chart` Об'єкт

Після того, як графік був вставлений і заповнений даними, ви зможете змінити зовнішній вигляд. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) майно містить всі параметри діаграми, доступні через публічний APIй

Наприклад, зміна дати Назва діаграми або легенда поведінки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Код генерує результати:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Як працювати з ChartSeriesCollection

Давайте подивимося [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) збірка. Всі серії діаграм доступні через [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) Колекція, яка **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Ви можете видалити серію один за одним або очистити всі вони, а також додати новий, якщо це потрібно. У цій колекції додано нову таблицю за замовчуванням. Щоб видалити їх, потрібно викликати **JavaScript licenses API Веб-сайт Go1.13.8** метод.

## Робота з Single ChartSeries клас

Ось як працювати з певною серією.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Будь ласка, введіть результат нижче:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Всі [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) За замовчуванням [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) параметри, будь ласка, спробуйте використовувати наступний код для зміни їх:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Як працювати з Single ChartDataPoint `ChartSeries`

Використання [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Ви зможете налаштувати форматування однієї точки даних серії діаграм:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Будь ласка, введіть результат нижче:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Як працювати з ChartDataLabel з Single ChartSeries

Використання [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) Ви можете вказати форматування одного тега даних серії діаграм, наприклад, show/hide LegendKey, КатегоріяName, SeriesName, Вартість і т.д

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Будь ласка, введіть результат нижче:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Як видалити параметри за замовчуванням для ChartDataLabels of ChartSeries

Про нас [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) Клас визначає властивості, які можуть бути використані для встановлення параметрів за замовчуванням **ChartDataLabels** на графіку **Series**й Ці властивості включають setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShow Вартість і т.д

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Будь ласка, введіть результат нижче:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Як форматувати номер етикетки даних

Використання [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) властивість, можна вказати форматування номеру однієї мітки даних діаграми.

Приклад коду показує, як форматувати ряд етикеток даних:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Як встановити діаграму осі властивості

Якщо ви хочете працювати з віссю діаграми, масштабування та відображення блоків для осі значення, будь ласка, використовуйте [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), і [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) класи.

Приклад коду показує, як визначити властивості X і Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Як встановити DateЗначення часу осі

Приклад наступного коду показує, як встановити значення дати / часу до властивостей осі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Як форматувати номер значення осей

Приклад коду показує, як змінити формат чисел на осі значення:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Як встановити пов'язки осей

Про нас `AxisBound` клас являє собою мінімальну або максимальну межу значень осі. Злягання можна вказати як числовий, дата-time або спеціальне значення "auto".

Приклад коду показує, як встановити межі осі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Як встановити блок між етикетками

Приклад коду показує, як встановити інтервал між етикетками на осі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Як приховати діаграму Ось

Якщо ви хочете показати або приховати вісь діаграми, ви можете просто досягти цього, встановивши значення `ChartAxis.Hidden` майно.

Приклад наступного коду показує, як приховати Y-осені діаграми:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Як видалити етикетку діаграми

Якщо ви хочете встановити вирівнювання тексту для багатолінійних етикеток, ви можете просто досягти цього, встановлюючи значення значення [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) майно.

Приклад наступного коду показує, як вирівняти етикетку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word Вирівнювання Графік етикетки до центру за замовчуванням.

{{% /alert %}}

## Як встановити заповнення та форматування штрихів

Заповнення та форматування штрихів можна встановити для серії діаграм, точок даних та маркерів. Для цього потрібно використовувати властивості `ChartFormat` Тип в ChartSeries, ChartDataPoint та ChartMarker класи, а також псевдоніми для деяких властивостей, таких як ForeColor, BackColor, Visible та прозорості в `Stroke` клас.

Приклад коду показує, як встановити колір серії:

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

Приклад коду показує, як встановити колір лінії і вага:

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
