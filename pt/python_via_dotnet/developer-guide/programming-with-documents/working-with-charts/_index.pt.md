---
title: Trabalhando com gráficos em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com gráficos
linktitle: Trabalhando com gráficos
description: "Crie e modifique gráficos de vários tipos em um documento usando Python."
type: docs
weight: 310
url: /pt/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Novo método [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) foi adicionado à classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Então, vamos ver como inserir um gráfico de colunas simples no documento usando o método [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Como inserir um gráfico

Nesta seção aprenderemos como inserir um gráfico em um documento.

### Inserir gráfico de colunas

O exemplo de código a seguir mostra como inserir um gráfico de colunas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

O código produz o seguinte resultado:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Existem métodos [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) e [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), que foram expostos para cobrir todas as variantes possíveis de fontes de dados para todos os tipos de gráficos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

O código produz o seguinte resultado:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Inserir gráfico de dispersão

O exemplo abaixo mostra como inserir um gráfico de dispersão.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

O código produz o seguinte resultado:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Inserir gráfico de área

O exemplo de código a seguir mostra como inserir um gráfico de área:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

O código produz o seguinte resultado:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Inserir gráfico de bolhas

O exemplo de código a seguir mostra como inserir um gráfico de bolhas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

O código produz o seguinte resultado:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Trabalhando com gráficos por meio do objeto Shape.chart

Depois que o gráfico for inserido e preenchido com dados, você poderá alterar sua aparência. A propriedade [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) contém todas as opções relacionadas ao gráfico disponíveis através do API público.

Por exemplo, vamos alterar o comportamento do título ou da legenda [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

O código gera os seguintes resultados:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Como trabalhar com ChartSeriesCollection of Chart

Vejamos a coleção [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Todas as séries de gráficos estão disponíveis através da coleção [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Você pode remover as séries uma por uma ou limpar todas elas, bem como adicionar uma nova, se necessário. O gráfico recém-inserido possui algumas séries padrão adicionadas a esta coleção. Para removê-los você precisa chamar o método [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Trabalhando com classe única ChartSeries

Veja como trabalhar com uma série específica.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Por favor, veja o resultado abaixo:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Todos os [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) únicos têm opções [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) padrão. Tente usar o seguinte código para alterá-los:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Por favor, veja o resultado abaixo:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Como trabalhar com ChartDataPoint único de um `ChartSeries`

Usando [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) você pode personalizar a formatação de um único ponto de dados da série do gráfico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Por favor, veja o resultado abaixo:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Como trabalhar com ChartDataLabel de um único ChartSeries

Usando [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) você pode especificar a formatação de um único rótulo de dados da série de gráficos, como mostrar/ocultar LegendKey, CategoryName, SeriesName, Value etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Por favor, veja o resultado abaixo:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Como definir opções padrão para ChartDataLabels de ChartSeries

A classe [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) define propriedades que podem ser usadas para definir opções padrão para [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) para séries de gráficos. Essas propriedades incluem [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) etc.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Por favor, veja o resultado abaixo:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Como formatar o número do rótulo de dados do gráfico

Usando [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) você pode especificar a formatação numérica de um único rótulo de dados do gráfico.

O exemplo de código a seguir mostra como formatar um número do rótulo de dados:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Como definir propriedades do eixo do gráfico

Se você deseja trabalhar com eixo do gráfico, escala e unidades de exibição para o eixo de valor, use as classes [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) e [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

O exemplo de código a seguir mostra como definir as propriedades dos eixos X e Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Como definir o valor de tempo Date do eixo

O exemplo de código a seguir mostra como definir valores de data/hora para propriedades de eixo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Como formatar o valor numérico do eixo

O exemplo de código a seguir mostra como alterar o formato dos números no eixo de valores:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Como definir limites do eixo

A classe [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) representa um limite mínimo ou máximo dos valores do eixo. O limite pode ser especificado como um valor numérico, de data e hora ou um valor "automático" especial.

O exemplo de código a seguir mostra como definir limites de um eixo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Como definir a unidade de intervalo entre rótulos

O exemplo de código a seguir mostra como definir a unidade de intervalo entre rótulos em um eixo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Como ocultar o eixo do gráfico

Se quiser mostrar ou ocultar o eixo do gráfico, você pode simplesmente fazer isso definindo o valor da propriedade [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

O exemplo de código a seguir mostra como ocultar o eixo Y do gráfico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Como alinhar o rótulo do gráfico

Se você deseja definir um alinhamento de texto para rótulos multilinhas, você pode simplesmente fazer isso definindo o valor da propriedade [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

O exemplo de código a seguir mostra como marcar o alinhamento do rótulo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

O MS Word alinha o rótulo do gráfico ao centro por padrão.

{{% /alert %}}

## Como definir a formatação de preenchimento e traçado

A formatação de preenchimento e traçado pode ser definida para séries de gráficos, pontos de dados e marcadores. Para isso, é necessário utilizar as propriedades do tipo [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) nas classes [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) e [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), bem como aliases para algumas propriedades, como [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) e [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) na classe [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

O exemplo de código a seguir mostra como definir a cor da série:

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

O exemplo de código a seguir mostra como definir a cor e a espessura da linha:

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
