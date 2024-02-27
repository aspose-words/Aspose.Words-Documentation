---
title: Trabajar con gráficos en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con gráficos
linktitle: Trabajar con gráficos
description: "Cree y modifique gráficos de varios tipos en un documento usando Python."
type: docs
weight: 310
url: /es/python-net/working-with-charts/
---

Se agregó un nuevo método [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) a la clase [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Entonces, veamos cómo insertar un gráfico de columnas simple en el documento usando el método [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Cómo insertar un gráfico

En esta sección aprenderemos cómo insertar un gráfico en un documento.

### Insertar gráfico de columnas

El siguiente ejemplo de código muestra cómo insertar un gráfico de columnas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

El código produce el siguiente resultado:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Existen métodos [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) y [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), que se expusieron para cubrir todas las variantes posibles de fuentes de datos para todos los tipos de gráficos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

El código produce el siguiente resultado:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Insertar gráfico de dispersión

El siguiente ejemplo muestra cómo insertar un gráfico de dispersión.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

El código produce el siguiente resultado:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Insertar gráfico de áreas

El siguiente ejemplo de código muestra cómo insertar un gráfico de áreas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

El código produce el siguiente resultado:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Insertar gráfico de burbujas

El siguiente ejemplo de código muestra cómo insertar un gráfico de burbujas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

El código produce el siguiente resultado:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Trabajar con gráficos a través del objeto Shape.chart

Una vez que el gráfico se insertó y se llenó con datos, podrá cambiar su apariencia. La propiedad [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) contiene todas las opciones relacionadas con gráficos disponibles a través del API público.

Por ejemplo, cambiemos el comportamiento de la leyenda o el título [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

El código genera los siguientes resultados:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Cómo trabajar con ChartSeriesCollection of Chart

Echemos un vistazo a la colección [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Todas las series de gráficos están disponibles a través de la colección [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Puede eliminar series una por una o borrarlas todas, así como agregar una nueva si es necesario. El gráfico recién insertado tiene algunas series predeterminadas agregadas a esta colección. Para eliminarlos es necesario llamar al método [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Trabajar con una única clase ChartSeries

A continuación se explica cómo trabajar con una serie en particular.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Por favor vea el resultado a continuación:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Todos los [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) individuales tienen opciones de [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) predeterminadas; intente usar el siguiente código para cambiarlas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Por favor vea el resultado a continuación:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Cómo trabajar con un único ChartDataPoint de un `ChartSeries`

Con [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) puede personalizar el formato de un único punto de datos de la serie de gráficos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Por favor vea el resultado a continuación:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Cómo trabajar con ChartDataLabel de una única ChartSeries

Con [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) puede especificar el formato de una única etiqueta de datos de la serie de gráficos, como mostrar/ocultar LegendKey, CategoryName, SeriesName, Value, etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Por favor vea el resultado a continuación:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Cómo definir opciones predeterminadas para ChartDataLabels de ChartSeries

La clase [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) define propiedades que se pueden utilizar para establecer opciones predeterminadas para [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) para series de gráficos. Estas propiedades incluyen [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/), etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Por favor vea el resultado a continuación:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Cómo dar formato al número de etiqueta de datos del gráfico

Con [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) puede especificar el formato numérico de una única etiqueta de datos del gráfico.

El siguiente ejemplo de código muestra cómo formatear un número de la etiqueta de datos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Cómo configurar las propiedades del eje del gráfico

Si desea trabajar con el eje del gráfico, la escala y las unidades de visualización para el eje de valores, utilice las clases [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) y [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

El siguiente ejemplo de código muestra cómo definir las propiedades de los ejes X e Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Cómo establecer el valor de fecha y hora del eje

El siguiente ejemplo de código muestra cómo establecer valores de fecha/hora en las propiedades del eje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Cómo formatear el valor numérico del eje

El siguiente ejemplo de código muestra cómo cambiar el formato de los números en el eje de valores:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Cómo establecer límites de eje

La clase [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) representa un límite mínimo o máximo de valores de eje. El límite se puede especificar como un valor numérico, de fecha y hora o un valor "automático" especial.

El siguiente ejemplo de código muestra cómo establecer los límites de un eje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Cómo configurar la unidad de intervalo entre etiquetas

El siguiente ejemplo de código muestra cómo configurar la unidad de intervalo entre etiquetas en un eje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Cómo ocultar el eje del gráfico

Si desea mostrar u ocultar el eje del gráfico, simplemente puede lograrlo estableciendo el valor de la propiedad [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

El siguiente ejemplo de código muestra cómo ocultar el eje Y del gráfico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Cómo alinear la etiqueta del gráfico

Si desea establecer una alineación de texto para etiquetas de varias líneas, simplemente puede lograrlo estableciendo el valor de la propiedad [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

El siguiente ejemplo de código muestra cómo marcar la alineación de la etiqueta:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word alinea la etiqueta del gráfico con el centro de forma predeterminada.

{{% /alert %}}

## Cómo configurar el formato de relleno y trazo

Se puede configurar el formato de relleno y trazo para series de gráficos, puntos de datos y marcadores. Para hacer esto, necesita usar propiedades del tipo [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) en las clases [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) y [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), así como alias para algunas propiedades, como [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) y [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) en la clase [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

El siguiente ejemplo de código muestra cómo configurar el color de la serie:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.COLUMN, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Create category names array.
categories = [ "AW Category 1", "AW Category 2" ]

# Adding new series. Value and category arrays must be the same size.
series1 = seriesColl.add("AW Series 1", categories, [ 1, 2 ])
series2 = seriesColl.add("AW Series 2", categories, [ 3, 4 ])
series3 = seriesColl.add("AW Series 3", categories, [ 5, 6 ])

# Set series color.
series1.format.fill.fore_color = drawing.Color.red
series2.format.fill.fore_color = drawing.Color.yellow
series3.format.fill.fore_color = drawing.Color.blue

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.set_series_color.docx")
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo establecer el color y el grosor de la línea:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.LINE, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Adding new series.
series1 = seriesColl.add_double("AW Series 1", [ 0.7, 1.8, 2.6 ], [ 2.7, 3.2, 0.8 ])
series2 = seriesColl.add_double("AW Series 2", [ 0.5, 1.5, 2.5 ], [ 3, 1, 2 ])

# Set series color.
series1.format.stroke.fore_color = drawing.Color.red
series1.format.stroke.weight = 5
series2.format.stroke.fore_color = drawing.Color.light_green
series2.format.stroke.weight = 5

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.line_color_and_weight.docx")
{{< /highlight >}}
