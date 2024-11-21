---
title: Работа с карти в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с карти
linktitle: Работа с карти
description: "Въведение в функцията Chart, как да създадете и манипулирате карти, използвайки Java."
type: docs
weight: 310
url: /bg/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Новият [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) метод е добавен в [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Клас. И така, нека видим как да вкараме проста колона в документа, използвайки **вмъкване Графика** метод.


## Как да въведете диаграма от четка използване Aspose.Words

В този раздел ще се научим как да вкараме диаграма в документ.

###  Вмъкване на колона

Следният пример за код показва как да се въведе колона диаграма:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Кодът дава следния резултат:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Има четири различни претоварвания за серията Добавете метод, който е бил изложен на всички възможни варианти на източници на данни за всички видове карти:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Кодът дава следния резултат:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Вмъкване на скатер Графика

Следният пример с код показва как да се вмъкне скатер диаграма:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Кодът дава следния резултат:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Вмъкване на зона Графика

Следният пример за код показва как да се вмъкне диаграма област:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Кодът дава следния резултат:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Вмъкване на таблицата с мехурчета

Следният пример за код показва как да се вмъкне балон диаграма:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Кодът дава следния резултат:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Работа с карти чрез `Shape.Chart` Обект

След като диаграмата е поставена и изпълнена с данни, вие сте в състояние да промените външния й вид. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) имот съдържа всички опции, свързани с графиката, достъпни чрез обществеността API.

Например, нека се променим. Заглавие или поведение на легенда:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Кодът генерира следните резултати:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Как да работите с ChartSeriesCollection of Chart

Нека да погледна в [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) Колекция. Всички серии карти са достъпни чрез [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) събиране, което е **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Можете да премахнете серия един по един или да изчистите всички от тях, както и да добавите нова, ако е необходимо. Нововградената диаграма има някои добавени серии по подразбиране към тази колекция. За да ги премахнете, трябва да се обадите на **диаграма.getSeries(). ясно()** метод.

## Работа с единични карти клас

Ето как се работи с определена серия.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Моля, вижте резултата по-долу:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Всички необвързани [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) имате по подразбиране [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) опции, моля опитайте се да използвате следния код, за да ги промените:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Как да работите с единична графикаDataPoint на a `ChartSeries`

Използване [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Вие сте в състояние да персонализира форматирането на една точка от данните на серията диаграма:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Моля, вижте резултата по-долу:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Как да работите с ChartDataLabel на единични карти

Използване [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) Вие сте в състояние да посочи форматирането на един етикет на данните на серията диаграма, като шоу / скрий ЛегендаКей, Категория Име, SeriesName, Стойност и т.н.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Моля, вижте резултата по-долу:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Как да определите настройките по подразбиране за ChartDataLabels на ChartSeries

На [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) клас определя свойствата, които могат да се използват за задаване на опции по подразбиране за **ChartDataLabels** за диаграма **Series**. Тези свойства включват setShow CategoryName, setShowBubbleSize, setShowPrescentage, setShowSeriesName, setShow Стойност и т.н.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Моля, вижте резултата по-долу:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Как да форматираме номер на табелката

Използване на [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) имот, можете да посочите числото форматиране на един етикет данни на диаграмата.

Следният пример за код показва как да се форматира редица от етикета на данните:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Как да зададете свойства на оста на графиката

Ако искате да работите с графична ос, мащабиране и дисплей единици за стойността ос, моля използвайте [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), както и [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) Класове.

Следният пример за код показва как да се определят свойствата на оста X и Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Как да зададете DateВремева стойност на оста

Следният пример за код показва как да се определят стойностите на дата/времето на осовите свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Как да форматираме стойността на числото на оста

Следният пример за код показва как да промените формата на числата по оста на стойността:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Как да се определят границите на оста

На `AxisBound` класът представлява минимална или максимална граница на осите. Облигацията може да бъде посочена като цифрова, дата-време или специална "авто" стойност.

Следният пример за код показва как да се определят границите на оста:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Как да зададете интервал между етикетите

Следният пример за код показва как да се определи интервалната единица между етикетите на оста:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Как да скрием оста на графиката

Ако искате да покажете или скриете оста на диаграмата, можете просто да постигнете това чрез определяне на стойността на `ChartAxis.Hidden` собственост.

Следният пример за код показва как да се скрие оста Y на диаграмата:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Как да се подравнява етикет диаграма

Ако искате да зададете подравняване на текст за многолинейни етикети, можете просто да постигнете това чрез задаване на стойността на [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) собственост.

Следният пример за код показва как да маркирате подравняването на етикета:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word подравняване Чарт етикет към центъра по подразбиране.

{{% /alert %}}

## Как да зададете форматиране на запълване и удар

Запълване и инсулт форматиране може да се настрои за серия диаграма, точки от данни, и маркери. За да направите това, трябва да използвате свойствата на `ChartFormat` тип в класа ChartSeries, ChartDataPoint и ChartMarker, както и псевдоними за някои имоти, като например ForeColor, BackColor, Visible, и прозрачност в `Stroke` Клас.

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

doc.Save("ColumnColor.docx");
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
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}
