---
title: Trabajar con gráficos en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Gráficos
linktitle: Trabajar con Gráficos
description: "Introducción a la función de gráficos, cómo crear y manipular gráficos usando Java."
type: docs
weight: 310
url: /es/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

El nuevo método [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) se agregó a la clase [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Entonces, veamos cómo insertar un gráfico de columnas simple en el documento usando el método **insertChart**.


## Cómo Insertar un Gráfico desde Cero usando Aspose.Words

En esta sección aprenderemos a insertar un gráfico en un documento.

###  Insertar Gráfico de Columnas

El siguiente ejemplo de código muestra cómo insertar un gráfico de columnas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

El código produce el siguiente resultado:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Hay cuatro sobrecargas diferentes para el método de adición de series, que se expusieron para cubrir todas las variantes posibles de fuentes de datos para todos los tipos de gráficos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

El código produce el siguiente resultado:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Insertar Gráfico de Dispersión

El siguiente ejemplo de código muestra cómo insertar un gráfico de dispersión:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

El código produce el siguiente resultado:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Insertar Gráfico de Área

El siguiente ejemplo de código muestra cómo insertar un gráfico de áreas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

El código produce el siguiente resultado:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Insertar Gráfico de Burbujas

El siguiente ejemplo de código muestra cómo insertar un gráfico de burbujas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

El código produce el siguiente resultado:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Trabajar con gráficos a través del objeto `Shape.Chart`

Una vez que el gráfico se insertó y se llenó con datos, puede cambiar su apariencia. La propiedad [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) contiene todas las opciones relacionadas con el gráfico disponibles a través del público API.

Por ejemplo, cambiemos el título del gráfico o el comportamiento de la leyenda.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

El código genera los siguientes resultados:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Cómo trabajar con ChartSeriesCollection de Gráfico

Echemos un vistazo a la colección [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/). Todas las series de gráficos están disponibles a través de la colección [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), que es **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Puede eliminar series una por una o borrarlas todas, así como agregar una nueva si es necesario. El gráfico recién insertado tiene algunas series predeterminadas agregadas a esta colección. Para eliminarlos, debe llamar al método **chart.getSeries().clear()**.

## Trabajando con una sola Clase ChartSeries

Aquí se explica cómo trabajar con una serie en particular.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Por favor, vea el resultado a continuación:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Todos los [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) individuales tienen opciones predeterminadas de [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), intente usar el siguiente código para cambiarlas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Cómo trabajar con un solo ChartDataPoint de un `ChartSeries`

Con [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) puede personalizar el formato de un solo punto de datos de la serie de gráficos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Por favor, vea el resultado a continuación:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Cómo trabajar con ChartDataLabel de un solo ChartSeries

Con [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) puede especificar el formato de una sola etiqueta de datos de la serie de gráficos, como mostrar / ocultar LegendKey, CategoryName, SeriesName, Valor etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Por favor, vea el resultado a continuación:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Cómo definir Opciones predeterminadas para ChartDataLabels de ChartSeries

La clase [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) define propiedades que se pueden usar para establecer opciones predeterminadas para **ChartDataLabels** para el gráfico **Series**. Estas propiedades incluyen setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue etc.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Por favor, vea el resultado a continuación:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Cómo Formatear la Etiqueta del Número de Datos del Gráfico

Con la propiedad [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), puede especificar el formato numérico de una sola etiqueta de datos del gráfico.

El siguiente ejemplo de código muestra cómo formatear un número de la etiqueta de datos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Cómo Establecer las Propiedades del Eje del Gráfico

Si desea trabajar con el eje del gráfico, la escala y las unidades de visualización para el eje del valor, utilice las clases [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) y [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

El siguiente ejemplo de código muestra cómo definir las propiedades de los ejes X e Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Cómo establecer el valor DateTime del Eje

El siguiente ejemplo de código muestra cómo establecer valores de fecha/hora en las propiedades del eje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Cómo Formatear el Valor Numérico del Eje

El siguiente ejemplo de código muestra cómo cambiar el formato de los números en el eje de valores:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Cómo Establecer Límites del Eje

La clase `AxisBound` representa un límite mínimo o máximo de valores de eje. El límite se puede especificar como un valor numérico, de fecha y hora o un valor especial "automático".

El siguiente ejemplo de código muestra cómo establecer los límites de un eje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Cómo Establecer la Unidad de Intervalo Entre Etiquetas

El siguiente ejemplo de código muestra cómo establecer la unidad de intervalo entre etiquetas en un eje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Cómo Ocultar el Eje del Gráfico

Si desea mostrar u ocultar el eje del gráfico, simplemente puede lograrlo estableciendo el valor de la propiedad `ChartAxis.Hidden`.

El siguiente ejemplo de código muestra cómo ocultar el eje Y del gráfico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Cómo Alinear la Etiqueta del Gráfico

Si desea establecer una alineación de texto para etiquetas multilínea, simplemente puede lograrlo estableciendo el valor de la propiedad [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

El siguiente ejemplo de código muestra cómo marcar la alineación de etiquetas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word alinea la etiqueta del gráfico al centro de forma predeterminada.

{{% /alert %}}

## Cómo Configurar el Formato de Relleno y Trazo

El formato de relleno y trazo se puede configurar para series de gráficos, puntos de datos y marcadores. Para hacer esto, debe usar las propiedades del tipo `ChartFormat` en las clases ChartSeries, ChartDataPoint y ChartMarker, así como alias para algunas propiedades, como ForeColor, BackColor, Visible y Transparencia en la clase `Stroke`.

El siguiente ejemplo de código muestra cómo establecer el color de la serie:

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

El siguiente ejemplo de código muestra cómo establecer el color y el grosor de la línea:

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
