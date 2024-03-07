---
title: Работа с диаграммами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с диаграммами
linktitle: Работа с диаграммами
description: "Введение в функцию диаграммы, как создавать диаграммы и управлять ими с помощью C#."
type: docs
weight: 310
url: /ru/net/working-with-charts/
---

В класс [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) добавлен новый метод [InsertChart](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertchart/). Итак, давайте посмотрим, как вставить в документ простую гистограмму методом [InsertChart](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertchart/).

## Как вставить диаграмму

В этом разделе мы научимся вставлять диаграмму в документ.

### Вставить столбчатую диаграмму

В следующем примере кода показано, как вставить гистограмму:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Код дает следующий результат:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Существует четыре различных перегрузки метода Add серии, который охватывает все возможные варианты источников данных для всех типов диаграмм:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Код дает следующий результат:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Вставить точечную диаграмму

В следующем примере кода показано, как вставить точечную диаграмму:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Код дает следующий результат:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Вставить диаграмму площади

В следующем примере кода показано, как вставить диаграмму с областями:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Код дает следующий результат:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Вставить пузырьковую диаграмму

В следующем примере кода показано, как вставить пузырьковую диаграмму:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Код дает следующий результат:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Работа с графиками через объект `Shape.Chart`

После того как диаграмма была вставлена и заполнена данными, вы можете изменить ее внешний вид. Свойство `Shape.Chart` содержит все параметры, связанные с диаграммами, доступные через общедоступный API.

Например, давайте изменим заголовок диаграммы или поведение легенды:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Код генерирует следующие результаты:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Как работать с ChartSeriesCollection of Chart

Давайте посмотрим на коллекцию [ChartSeries](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartseries/). Все серии диаграмм доступны в коллекции [chart.Series](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chart/series/), то есть **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Вы можете удалять серии по одной или очищать их все, а также при необходимости добавлять новые. Недавно вставленная диаграмма содержит некоторые серии по умолчанию, добавленные в эту коллекцию. Чтобы их удалить нужно вызвать метод **диаграмма.Серия.Очистить()**.

## Работа с одним классом ChartSeries

Вот как работать с конкретной серией:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Пожалуйста, посмотрите результат ниже:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Все одиночные [ChartSeries](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartseries/) имеют параметры по умолчанию [ChartDataPoint](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartdatapoint/). Попробуйте использовать следующий код, чтобы изменить их:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Пожалуйста, посмотрите результат ниже:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Как работать с одним ChartDataPoint `ChartSeries`

Используя [ChartDataPoint](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartdatapoint/), вы можете настроить форматирование отдельной точки данных серии диаграмм:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Пожалуйста, посмотрите результат ниже:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Как работать с ChartDataLabel одной серии ChartSeries

Используя [ChartDataLabel](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartdatalabel/), вы можете указать форматирование одной метки данных серии диаграмм, например показать/скрыть LegendKey, CategoryName, SeriesName, Value и т.д.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Пожалуйста, посмотрите результат ниже:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Как определить параметры по умолчанию для ChartDataLabels ChartSeries

Класс [ChartDataLabelCollection](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartdatalabelcollection/) определяет свойства, которые можно использовать для установки параметров по умолчанию для **ChartDataLabels** для диаграммы **Series**. К этим свойствам относятся ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue и т.д.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Пожалуйста, посмотрите результат ниже:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Как отформатировать метку номера диаграммы

Используя [NumberFormat](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartdatalabel/numberformat/), вы можете указать форматирование чисел для одной метки данных диаграммы.

В следующем примере кода показано, как отформатировать число метки данных:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Как установить свойства оси диаграммы

Если вы хотите работать с осью диаграммы, масштабированием и единицами отображения для оси значений, используйте классы [ChartAxis](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/axisdisplayunit/) и [AxisScaling](https://reference.aspose.com/words/ru/net/aspose.words.drawing.charts/axisscaling/).

В следующем примере кода показано, как определить свойства осей X и Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Как установить значение времени Date оси

В следующем примере кода показано, как установить значения даты и времени для свойств оси:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Как отформатировать числовое значение оси

В следующем примере кода показано, как изменить формат чисел на оси значений:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Как установить границы оси

Класс `AxisBound` представляет минимальную или максимальную границу значений оси. Привязка может быть указана как числовое значение, значение даты и времени или специальное "автоматическое" значение.

В следующем примере кода показано, как установить границы оси:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Как установить единицу интервала между метками

В следующем примере кода показано, как установить единицу интервала между метками на оси:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Как скрыть ось диаграммы

Если вы хотите показать или скрыть ось диаграммы, вы можете просто добиться этого, установив значение свойства `ChartAxis.Hidden`.

В следующем примере кода показано, как скрыть ось Y диаграммы:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Как выровнять метку диаграммы

Если вы хотите настроить выравнивание текста для многострочных меток, вы можете просто добиться этого, установив значение свойства [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Alignment**.

В следующем примере кода показано, как отметить выравнивание меток:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word по умолчанию выравнивает метку диаграммы по центру.

{{% /alert %}}

## Как установить форматирование заливки и обводки

Форматирование заливки и обводки можно настроить для серий диаграмм, точек данных и маркеров. Для этого необходимо использовать свойства типа **ChartFormat** в классах **ChartSeries**, **ChartDataPoint** и **ChartMarker**, а также псевдонимы некоторых свойств, например ForeColor, BackColor, Visible и Transparency в классе `Stroke`.

В следующем примере кода показано, как установить цвет серии:

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

В следующем примере кода показано, как установить цвет и толщину линии:

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
