---
title: Trabajar con gráficos en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con gráficos
linktitle: Trabajar con gráficos
description: "Introducción a la función de gráficos, cómo crear y manipular gráficos usando C#."
type: docs
weight: 310
url: /es/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Se agregó un nuevo método [InsertChart](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertchart/) a la clase [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/). Entonces, veamos cómo insertar un gráfico de columnas simple en el documento usando el método [InsertChart](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertchart/).

## Cómo insertar un gráfico

En esta sección aprenderemos cómo insertar un gráfico en un documento.

### Insertar gráfico de columnas

El siguiente ejemplo de código muestra cómo insertar un gráfico de columnas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

El código produce el siguiente resultado:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Hay cuatro sobrecargas diferentes para el método Agregar serie, que se expuso para cubrir todas las variantes posibles de fuentes de datos para todos los tipos de gráficos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

El código produce el siguiente resultado:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Insertar gráfico de dispersión

El siguiente ejemplo de código muestra cómo insertar un gráfico de dispersión:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

El código produce el siguiente resultado:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Insertar gráfico de áreas

El siguiente ejemplo de código muestra cómo insertar un gráfico de áreas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

El código produce el siguiente resultado:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Insertar gráfico de burbujas

El siguiente ejemplo de código muestra cómo insertar un gráfico de burbujas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

El código produce el siguiente resultado:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Trabajar con gráficos a través de objetos `Shape.Chart`

Una vez que el gráfico se insertó y se llenó con datos, podrá cambiar su apariencia. La propiedad `Shape.Chart` contiene todas las opciones relacionadas con gráficos disponibles a través del API público.

Por ejemplo, cambiemos el título del gráfico o el comportamiento de la leyenda:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

El código genera los siguientes resultados:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Cómo trabajar con ChartSeriesCollection of Chart

Echemos un vistazo a la colección [ChartSeries](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartseries/). Todas las series de gráficos están disponibles a través de la colección [chart.Series](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chart/series/), que es **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Puede eliminar series una por una o borrarlas todas, así como agregar una nueva si es necesario. El gráfico recién insertado tiene algunas series predeterminadas agregadas a esta colección. Para eliminarlos es necesario llamar al método **gráfico.Series.Clear()**.

## Trabajar con una única clase ChartSeries

A continuación se explica cómo trabajar con una serie en particular:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Por favor vea el resultado a continuación:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Todos los [ChartSeries](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartseries/) individuales tienen opciones de [ChartDataPoint](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartdatapoint/) predeterminadas; intente usar el siguiente código para cambiarlas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Por favor vea el resultado a continuación:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Cómo trabajar con un único ChartDataPoint de un `ChartSeries`

Con [ChartDataPoint](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartdatapoint/) puede personalizar el formato de un único punto de datos de la serie de gráficos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Por favor vea el resultado a continuación:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Cómo trabajar con ChartDataLabel de una única ChartSeries

Con [ChartDataLabel](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartdatalabel/) puede especificar el formato de una única etiqueta de datos de la serie de gráficos, como mostrar/ocultar LegendKey, CategoryName, SeriesName, Value, etc.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Por favor vea el resultado a continuación:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Cómo definir opciones predeterminadas para ChartDataLabels de ChartSeries

La clase [ChartDataLabelCollection](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartdatalabelcollection/) define propiedades que se pueden utilizar para establecer opciones predeterminadas para **ChartDataLabels** para Chart **Series**. Estas propiedades incluyen ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue, etc.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Por favor vea el resultado a continuación:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Cómo dar formato al número de etiqueta de datos del gráfico

Con [NumberFormat](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) puede especificar el formato numérico de una única etiqueta de datos del gráfico.

El siguiente ejemplo de código muestra cómo formatear un número de la etiqueta de datos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Cómo configurar las propiedades del eje del gráfico

Si desea trabajar con el eje del gráfico, la escala y las unidades de visualización para el eje de valores, utilice las clases [ChartAxis](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/axisdisplayunit/) y [AxisScaling](https://reference.aspose.com/words/es/net/aspose.words.drawing.charts/axisscaling/).

El siguiente ejemplo de código muestra cómo definir las propiedades de los ejes X e Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Cómo establecer el valor de fecha y hora del eje

El siguiente ejemplo de código muestra cómo establecer valores de fecha/hora en las propiedades del eje:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Cómo formatear el valor numérico del eje

El siguiente ejemplo de código muestra cómo cambiar el formato de los números en el eje de valores:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Cómo establecer límites de eje

La clase `AxisBound` representa un límite mínimo o máximo de valores de eje. El límite se puede especificar como un valor numérico, de fecha y hora o un valor "automático" especial.

El siguiente ejemplo de código muestra cómo establecer los límites de un eje:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Cómo configurar la unidad de intervalo entre etiquetas

El siguiente ejemplo de código muestra cómo configurar la unidad de intervalo entre etiquetas en un eje:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Cómo ocultar el eje del gráfico

Si desea mostrar u ocultar el eje del gráfico, simplemente puede lograrlo estableciendo el valor de la propiedad `ChartAxis.Hidden`.

El siguiente ejemplo de código muestra cómo ocultar el eje Y del gráfico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Cómo alinear la etiqueta del gráfico

Si desea establecer una alineación de texto para etiquetas de varias líneas, simplemente puede lograrlo estableciendo el valor de la propiedad [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Alignment**.

El siguiente ejemplo de código muestra cómo marcar la alineación de la etiqueta:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word alinea la etiqueta del gráfico con el centro de forma predeterminada.

{{% /alert %}}

## Cómo configurar el formato de relleno y trazo

Se puede configurar el formato de relleno y trazo para series de gráficos, puntos de datos y marcadores. Para hacer esto, necesita usar las propiedades del tipo **ChartFormat** en las clases **ChartSeries**, **ChartDataPoint** y **ChartMarker**, así como alias para algunas propiedades, como ForeColor, BackColor, Visible y Transparency en la clase `Stroke`.

El siguiente ejemplo de código muestra cómo configurar el color de la serie:

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
