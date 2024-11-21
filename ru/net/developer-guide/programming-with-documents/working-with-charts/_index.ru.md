---
title: Работа с картами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с диаграммами
linktitle: Работа с диаграммами
description: "Введение в функцию Chart, как создавать и манипулировать диаграммами с помощью C#."
type: docs
weight: 310
url: /ru/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Новый [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) Метод был добавлен в [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) класс. Итак, давайте посмотрим, как вставить простую таблицу столбцов в документ, используя [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) метод.

## Как вставить карту

В этом разделе мы узнаем, как вставить карту в документ.

### Включить диаграмму колонок

Следующий пример кода показывает, как вставить столбцовую диаграмму:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Код дает следующий результат:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Существует четыре различных перегрузки для серии. Добавить метод, который был подвержен охвату всех возможных вариантов источников данных для всех типов диаграмм:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Код дает следующий результат:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Включить рассеяние Чарт

Следующий пример кода показывает, как вставить диаграмму рассеяния:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Код дает следующий результат:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Включить зону Чарт

Следующий пример кода показывает, как вставить диаграмму области:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Код дает следующий результат:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Включить Bubble Chart

Следующий пример кода показывает, как вставить пузырьковую диаграмму:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Код дает следующий результат:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Работа с картами через `Shape.Chart` Объект

После того, как график был вставлен и заполнен данными, вы можете изменить его внешний вид. `Shape.Chart` собственность содержит все варианты, связанные с диаграммами, доступные через общественность API.

Например, давайте изменим Название диаграммы или поведение легенды:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Код генерирует следующие результаты:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Как работать с ChartSeriesСборник диаграмм

Давайте посмотрим на [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) Коллекция. Все серии карт доступны через [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) Коллекция, которая является **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Вы можете удалить серию по одной или очистить все из них, а также добавить новую, если это необходимо. Недавно вставленный график имеет некоторые серии по умолчанию, добавленные в эту коллекцию. Чтобы удалить их, вам нужно позвонить в **Скриншоты из игры Series.Clear()** метод.

## Работа с Single ChartSeries Class

Вот как работать с конкретной серией:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Все одинокие [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) иметь дефолт [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) Пожалуйста, попробуйте использовать следующий код, чтобы изменить их:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Как работать с Single ChartDataPoint `ChartSeries`

Использовать [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) Вы можете настроить форматирование одной точки данных серии диаграмм:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Как работать с ChartDataLabel одной серии

Использовать [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) Вы можете указать форматирование одной метки данных серии диаграмм, такой как show/hide LegendKey, CategoryName, SeriesName, Стоимость и т.д

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Пожалуйста, смотрите результат ниже:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Как определить параметры по умолчанию для ChartDataLabels ChartSeries

The [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) класс определяет свойства, которые могут использоваться для установки опций по умолчанию для **ChartDataLabels** для диаграммы **Series**. Эти свойства включают ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, Show Стоимость и т.д

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Пожалуйста, смотрите результат ниже:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Как форматировать номер таблички с данными

Использовать [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) Вы можете указать форматирование номера одной метки данных диаграммы.

Следующий пример кода показывает, как форматировать номер метки данных:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Как установить свойства Chart Axis

Если вы хотите работать с осью диаграмм, масштабированием и отображением блоков для оси значений, пожалуйста, используйте [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), и [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) классы.

Следующий пример кода показывает, как определить свойства оси X и Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Как установить Date Временное значение оси

Следующий пример кода показывает, как установить значения даты/времени на свойства оси:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Как определить значение числа оси

Следующий пример кода показывает, как изменить формат чисел на оси значений:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Как установить границы оси

The `AxisBound` Класс представляет собой минимальный или максимальный предел значений оси. Связь может быть указана как цифровое, дата-время или специальное "авто" значение.

Следующий пример кода показывает, как установить границы оси:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Как установить интервал между ярлыками

Следующий пример кода показывает, как установить интервал между ярлыками на оси:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Как скрыть ось диаграммы

Если вы хотите показать или скрыть ось диаграммы, вы можете просто достичь этого, установив значение `ChartAxis.Hidden` собственность.

Следующий пример кода показывает, как скрыть Y-ось диаграммы:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Как выровнять Chart Label

Если вы хотите установить текстовое выравнивание для многострочных меток, вы можете просто достичь этого, установив значение [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Выравнивание** собственность.

Следующий пример кода показывает, как выравнивать этикетку:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word выравнивание Графическая этикетка в центр по умолчанию.

{{% /alert %}}

## Как установить наполнение и форматирование инсульта

Форматирование заполнения и хода может быть установлено для серий диаграмм, точек данных и маркеров. Для этого нужно использовать свойства **ChartFormat** тип в котором **ChartSeries**, **ChartDataPoint**, и **ChartMarker** классы, а также псевдонимы для некоторых свойств, таких как ForeColor, BackColor, Visible и Transparency `Stroke` класс.

Следующий пример кода показывает, как установить цвет серии:

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

Следующий пример кода показывает, как установить цвет линии и вес:

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
