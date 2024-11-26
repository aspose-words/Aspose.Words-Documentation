---
title: Работа с графиками в Java
second_title: Aspose.Words для Java
articleTitle: Работа с графиками
linktitle: Работа с графиками
description: "Введение в функцию построения диаграмм, как создавать диаграммы и манипулировать ими с помощью Java."
type: docs
weight: 310
url: /ru/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

В класс [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) был добавлен новый метод [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double). Итак, давайте посмотрим, как вставить простую столбчатую диаграмму в документ, используя метод **insertChart**.


## Как вставить диаграмму с нуля, используя Aspose.Words

В этом разделе мы узнаем, как вставить диаграмму в документ.

###  Вставить столбчатую диаграмму

В следующем примере кода показано, как вставить столбчатую диаграмму:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Код выдает следующий результат:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Для метода добавления рядов существует четыре различных режима перегрузки, которые были применены для охвата всех возможных вариантов источников данных для всех типов диаграмм:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Код выдает следующий результат:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Вставить точечную диаграмму

В следующем примере кода показано, как вставить точечную диаграмму:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Код выдает следующий результат:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Вставка диаграммы области

В следующем примере кода показано, как вставить областную диаграмму:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Код выдает следующий результат:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Вставить пузырьковую диаграмму

В следующем примере кода показано, как вставить пузырьковую диаграмму:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Код выдает следующий результат:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Работа с графиками через объект `Shape.Chart`

После того, как диаграмма была вставлена и заполнена данными, вы можете изменить ее внешний вид. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) свойство содержит все связанные с диаграммой параметры, доступные через общедоступный API.

Например, давайте изменим название диаграммы или поведение условных обозначений:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Код генерирует следующие результаты:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Как работать с ChartSeriesCollection диаграммы

Давайте заглянем в коллекцию [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/). Все серии диаграмм доступны в коллекции [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), которая называется **Iterable**.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Вы можете удалять ряды по одному или очистить их все, а также добавить новый, если это необходимо. Во вновь вставленной диаграмме в эту коллекцию добавлены некоторые ряды по умолчанию. Чтобы удалить их, вам нужно вызвать метод **chart.getSeries().clear()**.

## Работа с одним классом ChartSeries

Вот как работать с конкретной серией.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Все одиночные [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) имеют параметры по умолчанию [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), пожалуйста, попробуйте изменить их с помощью следующего кода:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Как работать с одним ChartDataPoint из `ChartSeries`

Используя [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), вы можете настроить форматирование отдельной точки данных в ряду диаграмм:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Как работать с ChartDataLabel из одного ChartSeries

Используя [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/), вы можете задать форматирование отдельной метки данных в серии диаграмм, например, показать/скрыть LegendKey, CategoryName, SeriesName, Значение и т.д:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Как определить параметры по умолчанию для ChartDataLabels из ChartSeries

Класс [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) определяет свойства, которые можно использовать для установки параметров по умолчанию для **ChartDataLabels** для диаграммы **Series**. Эти свойства включают в себя setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue и т.д:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Пожалуйста, ознакомьтесь с результатом ниже:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Как отформатировать номер метки данных диаграммы

Используя свойство [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), вы можете задать числовое оформление отдельной метки данных диаграммы.

В следующем примере кода показано, как отформатировать номер метки данных:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Как задать свойства оси диаграммы

Если вы хотите работать с осью диаграммы, масштабированием и единицами отображения для оси значений, пожалуйста, используйте классы [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) и [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

В следующем примере кода показано, как определить свойства осей X и Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Как установить значение DateTime для оси

В следующем примере кода показано, как задать значения даты и времени для свойств оси:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Как отформатировать числовое значение оси

В следующем примере кода показано, как изменить формат чисел на оси значений:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Как установить границы оси

Класс `AxisBound` представляет минимальную или максимальную границу значений оси. Граница может быть задана в виде числа, даты и времени или специального "автоматического" значения.

В следующем примере кода показано, как задать границы оси:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Как установить единицу измерения интервала между надписями

В следующем примере кода показано, как задать единицу измерения интервала между метками на оси:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Как скрыть ось диаграммы

Если вы хотите отобразить или скрыть ось диаграммы, вы можете просто добиться этого, установив значение свойства `ChartAxis.Hidden`.

В следующем примере кода показано, как скрыть ось Y на диаграмме:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Как выровнять метку диаграммы

Если вы хотите задать выравнивание текста для многострочных надписей, вы можете просто добиться этого, установив значение свойства [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

В следующем примере кода показано, как установить флажок для выравнивания меток:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word по умолчанию выравнивает метку диаграммы по центру.

{{% /alert %}}

## Как настроить форматирование заливки и обводки

Для рядов диаграмм, точек данных и маркеров можно задать форматирование заливки и обводки. Для этого вам необходимо использовать свойства типа `ChartFormat` в классах ChartSeries, ChartDataPoint и ChartMarker, а также псевдонимы для некоторых свойств, таких как ForeColor, BackColor, Visible и Transparency в классе `Stroke`.

В следующем примере кода показано, как задать цвет серии:

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

В следующем примере кода показано, как задать цвет и вес линии:

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
