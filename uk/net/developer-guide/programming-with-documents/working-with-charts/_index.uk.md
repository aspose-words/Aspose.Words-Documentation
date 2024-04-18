---
title: Робота з графіками в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з графіками
linktitle: Робота з графіками
description: "Вступ до діаграми функції, як створити та маніпулювати діаграми за допомогою C#й"
type: docs
weight: 310
url: /uk/net/working-with-charts/
---

Нові [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) метод додано в [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) клас. Отже, побачимо, як вставити просту схему стовпчика в документ, використовуючи [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) метод.

## Як вставити діаграму

У цьому розділі ми дізнаємося, як вставити діаграму в документ.

### Вставити колону діаграми

Приклад наступного коду показує, як вставити діаграму стовпців:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Код виробляє наступний результат:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Є чотири різні перевантаження для серії Додайте метод, який був відкритий для покриття всіх можливих варіантів джерел даних для всіх типів діаграм:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Код виробляє наступний результат:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Вставити Scatter Графік

Приклад наступного коду показує, як вставити діаграму розсіювача:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Код виробляє наступний результат:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Вставити площу Графік

Приклад коду показує, як вставити діаграму області:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Код виробляє наступний результат:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Вставити Bubble Chart

Приклад наступного коду показує, як вставити діаграму міхура:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Код виробляє наступний результат:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Робота з графіками через `Shape.Chart` Об'єкт

Після того, як графік був вставлений і заповнений даними, ви зможете змінити зовнішній вигляд. `Shape.Chart` майно містить всі параметри діаграми, доступні через публічний APIй

Наприклад, зміна дати Назва діаграми або легенда поведінки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Код генерує результати:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Як працювати з ChartSeriesCollection

Давайте подивимося [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) збірка. Всі серії діаграм доступні через [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) збірка, яка **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Ви можете видалити серію один за одним або очистити всі вони, а також додати новий, якщо це потрібно. До цієї колекції додано нову таблицю за замовчуванням. Щоб видалити їх, потрібно викликати **JavaScript licenses API Веб-сайт Go1.13.8** метод.

## Робота з Single ChartSeries клас

Ось як працювати з певною серією:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Будь ласка, введіть результат нижче:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Всі [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) За замовчуванням [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) параметри, будь ласка, спробуйте використовувати наступний код, щоб змінити їх:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Будь ласка, введіть результат нижче:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Як працювати з Single ChartDataPoint `ChartSeries`

Використання [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) Ви зможете налаштувати форматування однієї точки даних серії діаграм:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Будь ласка, введіть результат нижче:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Як працювати з ChartDataLabel з Single ChartSeries

Використання [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) Ви можете вказати форматування одного тега даних серії діаграм, як шоу/hide LegendKey, КатегоріяName, SeriesName, Вартість і т.д

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Будь ласка, введіть результат нижче:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Як видалити параметри за замовчуванням для ChartDataLabels of ChartSeries

Про нас [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) Клас визначає властивості, які можна використовувати для встановлення параметрів за замовчуванням **ChartDataLabels** на графіку **Series**й Ці властивості включають ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, Показати Вартість і т.д

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Будь ласка, введіть результат нижче:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Як форматувати номер етикетки даних

Використання [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) Ви можете вказати форматування номеру однієї мітки даних діаграми.

Приклад наступного коду показує, як форматувати ряд етикеток даних:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Як встановити діаграму осі властивості

Якщо ви хочете працювати з віссю діаграми, масштабування та розподільчих одиниць для осі значення, будь ласка, використовуйте [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), і [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) класи.

Приклад коду показує, як визначити властивості X і Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Як встановити Date Значення часу осі

Приклад наступного коду показує, як встановити значення дати / часу до властивостей осі:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Як форматувати номер значення осей

Приклад коду показує, як змінити формат чисел на осі значення:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Як встановити пов'язки осей

Про нас `AxisBound` клас являє собою мінімальну або максимальну межу значень осі. Злягання може бути вказаний як числова, дата-time або спеціальне значення "auto".

Приклад коду показує, як встановити межі осі:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Як встановити блок між етикетками

Приклад коду показує, як встановити інтервал між етикетками на осі:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Як приховати діаграму Ось

Якщо ви хочете показати або приховати вісь діаграми, ви можете просто досягти цього, встановивши значення `ChartAxis.Hidden` майно.

Приклад наступного коду показує, як приховати Y-осені діаграми:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Як видалити етикетку діаграми

Якщо ви хочете встановити вирівнювання тексту для багатолінійних етикеток, ви можете просто досягти цього, встановивши значення значення значення [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Підпис** майно.

Приклад наступного коду показує, як вирівняти етикетку:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word Вирівнювання Графік етикетки до центру за замовчуванням.

{{% /alert %}}

## Як встановити заповнення та форматування штрихів

Заповнення та форматування штрихів можна встановити для серії діаграм, точок даних та маркерів. Для цього потрібно використовувати властивості **ChartFormat** тип у **ChartSeries**, **ChartDataPoint**, і **ChartMarker** класи, а також псевдоніми для деяких властивостей, таких як ForeColor, BackColor, Visible і прозорість в `Stroke` клас.

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

doc.Save(dir + "ColumnColor.docx");
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
