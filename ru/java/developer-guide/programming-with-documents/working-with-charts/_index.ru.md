---
title: Работа с картами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с диаграммами
linktitle: Работа с диаграммами
description: "Введение в функцию Chart, как создавать и манипулировать диаграммами с помощью Java."
type: docs
weight: 310
url: /ru/java/working-with-charts/
---

Новый [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) Метод был добавлен в [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) класс. Итак, давайте посмотрим, как вставить простую таблицу столбцов в документ с помощью **вставить Чарт** метод.


## Как вставить диаграмму из Scratch Aspose.Words

В этом разделе мы узнаем, как вставить карту в документ.

###  Включить диаграмму колонок

Следующий пример кода показывает, как вставить столбцовую диаграмму:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Код дает следующий результат:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Есть четыре различных перегрузки для серии. Добавить метод, который был подвержен охвату всех возможных вариантов источников данных для всех типов диаграмм:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Код дает следующий результат:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Включить рассеяние Чарт

Следующий пример кода показывает, как вставить диаграмму рассеяния:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Код дает следующий результат:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Включить зону Чарт

Следующий пример кода показывает, как вставить диаграмму области:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Код дает следующий результат:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Включить Bubble Chart

Следующий пример кода показывает, как вставить пузырьковую диаграмму:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Код дает следующий результат:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Работа с картами через `Shape.Chart` Объект

После того, как график был вставлен и заполнен данными, вы можете изменить его внешний вид. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) собственность содержит все варианты, связанные с диаграммами, доступные через общественность API.

Например, давайте изменим Название диаграммы или поведение легенды:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Код генерирует следующие результаты:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Как работать с ChartSeriesСборник диаграмм

Давайте посмотрим на [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) Коллекция. Все серии карт доступны через [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) Коллекция, которая является **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Вы можете удалить серию по одной или очистить все из них, а также добавить новую, если это необходимо. Недавно вставленный график имеет некоторые серии по умолчанию, добавленные в эту коллекцию. Чтобы удалить их, вам нужно позвонить в **chart.getSeries().clear()** метод.

## Работа с Single ChartSeries Class

Вот как работать с определенной серией.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Все одинокие [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) иметь дефолт [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Пожалуйста, попробуйте использовать следующий код, чтобы изменить их:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Как работать с Single ChartDataPoint `ChartSeries`

Использовать [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Вы можете настроить форматирование одной точки данных серии диаграмм:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Пожалуйста, смотрите результат ниже:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Как работать с ChartDataLabel одной серии

Использовать [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) Вы можете указать форматирование одной метки данных серии диаграмм, такой как show/hide LegendKey, CategoryName, SeriesName, Стоимость и т.д

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Пожалуйста, смотрите результат ниже:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Как определить параметры по умолчанию для ChartDataLabels ChartSeries

The [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) класс определяет свойства, которые могут использоваться для установки опций по умолчанию для **ChartDataLabels** для карты **Series**. Эти свойства включают setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowShow Стоимость и т.д

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Пожалуйста, смотрите результат ниже:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Как форматировать номер таблички с данными

Используя [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) свойство, можно указать номер форматирования одной метки данных диаграммы.

Следующий пример кода показывает, как форматировать номер метки данных:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Как установить свойства Chart Axis

Если вы хотите работать с осью диаграмм, масштабированием и отображением блоков для оси значений, пожалуйста, используйте [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), и [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) классы.

Следующий пример кода показывает, как определить свойства оси X и Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Как установить DateВременное значение оси

Следующий пример кода показывает, как установить значения даты/времени на свойства оси:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Как определить значение числа оси

Следующий пример кода показывает, как изменить формат чисел на оси значений:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Как установить границы оси

The `AxisBound` Класс представляет собой минимальную или максимальную границу значений оси. Связь может быть указана как цифровое, дата-время или специальное "авто" значение.

Следующий пример кода показывает, как установить границы оси:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Как установить интервал между ярлыками

Следующий пример кода показывает, как установить интервал между ярлыками на оси:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Как скрыть ось диаграммы

Если вы хотите показать или скрыть ось диаграммы, вы можете просто достичь этого, установив значение `ChartAxis.Hidden` собственность.

Следующий пример кода показывает, как скрыть Y-ось диаграммы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Как подключить Chart Label

Если вы хотите установить текстовое выравнивание для многострочных меток, вы можете просто достичь этого, установив значение [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) собственность.

Следующий пример кода показывает, как выравнивать этикетку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word выравнивание Графическая этикетка в центр по умолчанию.

{{% /alert %}}

## Как установить наполнение и форматирование инсульта

Форматирование заполнения и хода может быть установлено для серий диаграмм, точек данных и маркеров. Для этого нужно использовать свойства `ChartFormat` тип в классах ChartSeries, ChartDataPoint и ChartMarker, а также псевдонимы для некоторых свойств, таких как ForeColor, BackColor, Visible и Transparency in the `Stroke` класс.

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

doc.Save("ColumnColor.docx");
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
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}
