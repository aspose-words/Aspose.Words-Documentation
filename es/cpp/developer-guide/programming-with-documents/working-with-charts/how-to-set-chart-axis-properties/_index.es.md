---
title: Cómo Establecer las Propiedades del Eje del Gráfico en C++
second_title: Aspose.Words para C++
articleTitle: Cómo Establecer las Propiedades del Eje del Gráfico
linktitle: Cómo Establecer las Propiedades del Eje del Gráfico
description: "Ajuste del eje del gráfico usando C++."
type: docs
weight: 20
url: /es/cpp/how-to-set-chart-axis-properties/
---

Si desea trabajar con el eje del gráfico, la escala y las unidades de visualización para el eje del valor, utilice las clases [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) y [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

El siguiente ejemplo de código muestra cómo definir las propiedades de los ejes X e Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Cómo Establecer el Valor de Fecha y Hora del Eje

El siguiente ejemplo de código muestra cómo establecer valores de fecha/hora en las propiedades del eje:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Cómo Formatear el Valor Numérico del Eje

El siguiente ejemplo de código muestra cómo cambiar el formato de los números en el eje de valores:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Cómo Establecer Límites del Eje

La clase `AxisBound` representa un límite mínimo o máximo de valores de eje. El límite se puede especificar como un valor numérico, de fecha y hora o un valor especial "automático".

El siguiente ejemplo de código muestra cómo establecer los límites de un eje:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Cómo Establecer la Unidad de Intervalo Entre Etiquetas

El siguiente ejemplo de código muestra cómo establecer la unidad de intervalo entre etiquetas en un eje:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Cómo Ocultar el Eje del Gráfico

Si desea mostrar u ocultar el eje del gráfico, simplemente puede lograrlo estableciendo el valor de la propiedad set_Hidden.

El siguiente ejemplo de código muestra cómo ocultar el eje Y del gráfico:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Cómo Alinear la Etiqueta del Gráfico

Si desea establecer una alineación de texto para etiquetas multilínea, simplemente puede lograrlo estableciendo el valor de la propiedad [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). El siguiente ejemplo de código muestra cómo marcar la alineación de la etiqueta.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
