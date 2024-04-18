---
title: Работа с графики в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с графики
linktitle: Работа с графики
description: "Въведение в функцията Chart, как да създадете и манипулирате графики, използвайки C#."
type: docs
weight: 310
url: /bg/net/working-with-charts/
---

Нов [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) метод е добавен в [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Клас. И така, нека видим как да вкараме проста колона в документа с помощта на [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) метод.

## Как да въведете диаграма

В този раздел ще се научим как да вкараме диаграма в документ.

### Вмъкване на колона

Следният пример за код показва как да се вмъкне колона диаграма:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Кодът дава следния резултат:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Има четири различни претоварване за серия Добавете метод, който е бил изложен на покритие на всички възможни варианти на източници на данни за всички видове карти:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Кодът дава следния резултат:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Вмъкване на скатер Графика

Следният пример с код показва как да се постави схема за разсейване:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Кодът дава следния резултат:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Вмъкване на зона Графика

Следният пример с код показва как да се постави диаграма на областта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Кодът дава следния резултат:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Вмъкване на таблицата с мехурчета

Следният пример за код показва как да се вмъкне диаграма балон:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Кодът дава следния резултат:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Работа с карти чрез `Shape.Chart` Обект

След като диаграмата е поставена и изпълнена с данни, вие сте в състояние да промени външния си вид. `Shape.Chart` имотът съдържа всички опции, свързани с графиката, достъпни чрез обществеността API.

Например, нека се променим. Заглавие или поведение на легенда:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Кодът генерира следните резултати:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Как да работите с ChartSeriesCollection of Chart

Нека да погледнем в [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) Колекция. Всички серии карти са достъпни чрез [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) събиране, което е **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Можете да премахнете серия една по една или да изчистите всички от тях, както и да добавите нова, ако е необходимо. Нововградената диаграма има някои добавени серии по подразбиране към тази колекция. За да ги премахнете, трябва да се обадите на **диаграма.серии.чисти()** метод.

## Работа с единни карти клас

Ето как се работи с определена серия:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Моля, вижте резултата по-долу:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Всички необвързани [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) е по подразбиране [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) опции, моля опитайте се да използвате следния код, за да ги промените:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Моля, вижте резултата по-долу:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Как да работите с единична графикаDataPoint на a `ChartSeries`

Използване [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) Вие сте в състояние да персонализирате форматирането на една точка от данните на серията диаграма:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Моля, вижте резултата по-долу:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Как да работите с ChartDataLabel на единични карти

Използване [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) Вие сте в състояние да посочи форматирането на един етикет на данните от серията диаграма, като шоу / скрий ЛегендКей, Категория Име, Серия име, Стойност и т.н.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Моля, вижте резултата по-долу:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Как да определите настройките по подразбиране за ChartDataLabels на ChartSeries

На [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) клас определя свойства, които могат да бъдат използвани за задаване на опции по подразбиране за **ChartDataLabels** за диаграма **Series**. Тези свойства включват ShowCategoryName, ShowBubbleSize, ShowPrentage, ShowSeriesName, Show Стойност и т.н.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Моля, вижте резултата по-долу:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Как да форматираме номер на табелката с данните

Използване [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) Вие сте в състояние да посочи номер форматиране на един етикет данни на диаграмата.

Следният пример за код показва как да се форматира редица от етикета на данните:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Как да зададете свойства на оста на диаграмата

Ако искате да работите с графика ос, мащабиране, и дисплей единици за стойността ос, моля, използвайте [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), както и [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) Класове.

Следният пример за код показва как да се определят свойствата на оста X и Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Как да зададете Date Времева стойност на оста

Следният пример за код показва как да се определят стойностите на дата/времето на осовите свойства:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Как да форматираме стойността на числото на оста

Следният пример за код показва как да се промени формата на числата по оста на стойността:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Как да се определят границите на оста

На `AxisBound` класът представлява минимална или максимална граница на осите. Облигацията може да бъде посочена като цифрова, дата или специална стойност на "автоматично."

Следният пример за код показва как да се определят границите на оста:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Как да зададете интервал между етикетите

Следният пример за код показва как да се зададе интервалната единица между етикетите по оста:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Как да скрием оста на графиката

Ако искате да покажете или скриете оста на диаграмата, можете просто да постигнете това чрез определяне на стойността на `ChartAxis.Hidden` собственост.

Следният пример за код показва как да се скрие оста Y на диаграмата:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Как да се подравнява етикет диаграма

Ако искате да зададете подравняване на текст за многолинейни етикети, можете просто да постигнете това чрез определяне на стойността на [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Подравняване** собственост.

Следният пример за код показва как да се открои подравняването на етикета:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word подравняване Таблица Етикет към центъра по подразбиране.

{{% /alert %}}

## Как да зададете форматиране на запълване и удар

Запълване и инсулт форматиране може да се настрои за диаграма серия, точки от данни, и маркери. За да направите това, трябва да използвате свойствата на **ChartFormat** тип в **ChartSeries**, **ChartDataPoint**, както и **ChartMarker** класове, както и псевдоними за някои имоти, като например ForeColor, BackColor, Visible, и прозрачност в `Stroke` Клас.

Следният пример за код показва как да зададете цвят серия:

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

Следният пример за код показва как да зададете цвят и тегло линия:

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
