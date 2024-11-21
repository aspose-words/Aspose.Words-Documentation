---
title: Trabajando con Charts en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con los Gráficos
linktitle: Trabajando con los Gráficos
description: "Introducción a la función Chart, cómo crear y manipular gráficos usando Java."
type: docs
weight: 310
url: /es/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

El nuevo [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) método se agregó en el [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) clase. Así que veamos cómo insertar un gráfico de columna simple en el documento usando **insertar Chart** método.


## Cómo insertar un gráfico desde Scratch utilizando Aspose.Words

En esta sección aprenderemos a insertar un gráfico en un documento.

###  Insertar la columna Chart

El siguiente ejemplo de código muestra cómo insertar el gráfico de columna:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

El código produce el siguiente resultado:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Hay cuatro sobrecargas diferentes para la serie Agregar método, que fueron expuestos a cubrir todas las posibles variantes de fuentes de datos para todos los tipos de gráficos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

El código produce el siguiente resultado:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Insertar Scatter Chart

El siguiente ejemplo de código muestra cómo insertar una tabla de distribución:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

El código produce el siguiente resultado:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Insertar la zona Chart

El siguiente ejemplo de código muestra cómo insertar un diagrama de área:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

El código produce el siguiente resultado:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Insertar Bubble Chart

El siguiente ejemplo de código muestra cómo insertar un gráfico de burbujas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

El código produce el siguiente resultado:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Trabajando con los Gráficos a través `Shape.Chart` Objeto

Una vez que el gráfico fue insertado y lleno de datos, usted es capaz de cambiar su apariencia. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) propiedad contiene todas las opciones relacionadas con el gráfico disponibles a través del público API.

Por ejemplo, cambiemos. Título de Gráfico o comportamiento de leyenda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

El código genera los siguientes resultados:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Cómo trabajar con ChartSeriesColección de Chart

Miremos en [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) colección. Todas las series de gráficos están disponibles a través de [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) colección, que es **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Usted puede eliminar la serie uno por uno o limpiar todos ellos, así como añadir una nueva si es necesario. El gráfico recién insertado tiene algunas series predeterminadas agregadas a esta colección. Para eliminarlos necesitas llamar al **gráfico.getSeries().clear()** método.

## Trabajando con la clase de serie de gráficos individuales

Aquí es cómo trabajar con una serie particular.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Véase el resultado a continuación:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Todo soltero [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) Por defecto [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opciones, por favor trate de usar el siguiente código para cambiarlos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Cómo trabajar con un solo ChartDataPoint de un `ChartSeries`

Uso [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) usted es capaz de personalizar el formato de un único punto de datos de la serie de gráficos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Véase el resultado a continuación:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Cómo trabajar con ChartDataLabel de una sola tabla

Uso [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) puede especificar el formato de una sola etiqueta de datos de la serie de gráficos, como show/hide LegendKey, CategoryName, SeriesName, Valor etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Véase el resultado a continuación:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Cómo definir las opciones predeterminadas para ChartDataLabels of ChartSeries

El [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) clase define propiedades que se pueden utilizar para establecer opciones predeterminadas **ChartDataLabels** para Chart **Series**. Estas propiedades incluyen setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowName, setShow Valor etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Véase el resultado a continuación:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Cómo Formato Número de etiqueta de datos de gráficos

Usando el [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) propiedad, puede especificar el formato número de una sola etiqueta de datos del gráfico.

El siguiente ejemplo de código muestra cómo formatear un número de la etiqueta de datos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Cómo establecer las propiedades de eje de carga

Si desea trabajar con ejes de gráficos, escalas y unidades de visualización para el eje de valor, por favor use [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), y [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) clases.

El siguiente ejemplo de código muestra cómo definir las propiedades X y Y-axis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Cómo establecer DateValor del tiempo del eje

El siguiente ejemplo de código muestra cómo establecer valores de fecha/hora a las propiedades del eje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Cómo Formato Número de valor de eje

El siguiente ejemplo de código muestra cómo cambiar el formato de los números en el eje de valor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Cómo establecer libras de eje

El `AxisBound` clase representa un límite mínimo o máximo de valores del eje. La montura se puede especificar como un valor numérico, de fecha o un "auto" especial.

El siguiente ejemplo de código muestra cómo establecer los límites de un eje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Cómo establecer Unidad Interval entre etiquetas

El siguiente ejemplo de código muestra cómo establecer la unidad de intervalo entre etiquetas en un eje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Cómo ocultar el eje de la gráfica

Si desea mostrar o ocultar el eje de la gráfica, simplemente puede lograrlo estableciendo el valor `ChartAxis.Hidden` propiedad.

El siguiente ejemplo de código muestra cómo ocultar el eje Y del gráfico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Cómo alinear Chart Label

Si desea establecer una alineación de texto para etiquetas multilínea, simplemente puede lograrlo estableciendo el valor de [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) propiedad.

El siguiente ejemplo de código muestra cómo marcar la alineación de etiquetas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word alineados Chart Label al centro por defecto.

{{% /alert %}}

## Cómo configurar el formato Fill y Stroke

El formato de relleno y trazo se puede configurar para series de gráficos, puntos de datos y marcadores. Para ello, es necesario utilizar las propiedades de las `ChartFormat` tipo en las clases de ChartSeries, ChartDataPoint y ChartMarker, así como alias para algunas propiedades, como ForeColor, BackColor, Visible y Transparencia en `Stroke` clase.

El siguiente ejemplo de código muestra cómo configurar el color de serie:

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

El siguiente ejemplo de código muestra cómo configurar el color y el peso de la línea:

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
