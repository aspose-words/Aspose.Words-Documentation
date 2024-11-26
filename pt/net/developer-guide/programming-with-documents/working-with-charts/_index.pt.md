---
title: Trabalhando com gráficos em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com gráficos
linktitle: Trabalhando com gráficos
description: "Introdução ao recurso Gráfico, como criar e manipular gráficos usando C#."
type: docs
weight: 310
url: /pt/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Novo método [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) foi adicionado à classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Então, vamos ver como inserir um gráfico de colunas simples no documento usando o método [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/).

## Como inserir um gráfico

Nesta seção aprenderemos como inserir um gráfico em um documento.

### Inserir gráfico de colunas

O exemplo de código a seguir mostra como inserir um gráfico de colunas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

O código produz o seguinte resultado:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Existem quatro sobrecargas diferentes para o método Add da série, que foi exposto para cobrir todas as variantes possíveis de fontes de dados para todos os tipos de gráfico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

O código produz o seguinte resultado:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Inserir gráfico de dispersão

O exemplo de código a seguir mostra como inserir um gráfico de dispersão:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

O código produz o seguinte resultado:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Inserir gráfico de área

O exemplo de código a seguir mostra como inserir um gráfico de área:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

O código produz o seguinte resultado:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Inserir gráfico de bolhas

O exemplo de código a seguir mostra como inserir um gráfico de bolhas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

O código produz o seguinte resultado:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Trabalhando com gráficos por meio de objeto `Shape.Chart`

Depois que o gráfico for inserido e preenchido com dados, você poderá alterar sua aparência. A propriedade `Shape.Chart` contém todas as opções relacionadas ao gráfico disponíveis através do API público.

Por exemplo, vamos alterar o comportamento do título ou da legenda do gráfico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

O código gera os seguintes resultados:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Como trabalhar com ChartSeriesCollection of Chart

Vejamos a coleção [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/). Todas as séries de gráficos estão disponíveis através da coleção [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/), que é **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Você pode remover as séries uma por uma ou limpar todas elas, bem como adicionar uma nova, se necessário. O gráfico recém-inserido possui algumas séries padrão adicionadas a esta coleção. Para removê-los você precisa chamar o método **gráfico.Series.Clear()**.

## Trabalhando com classe única ChartSeries

Veja como trabalhar com uma série específica:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Por favor, veja o resultado abaixo:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Todos os [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) únicos têm opções [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) padrão. Tente usar o seguinte código para alterá-los:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Por favor, veja o resultado abaixo:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Como trabalhar com ChartDataPoint único de um `ChartSeries`

Usando [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) você pode personalizar a formatação de um único ponto de dados da série do gráfico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Por favor, veja o resultado abaixo:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Como trabalhar com ChartDataLabel de um único ChartSeries

Usando [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) você pode especificar a formatação de um único rótulo de dados da série de gráficos, como mostrar/ocultar LegendKey, CategoryName, SeriesName, Value etc:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Por favor, veja o resultado abaixo:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Como definir opções padrão para ChartDataLabels de ChartSeries

A classe [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) define propriedades que podem ser usadas para definir opções padrão para **ChartDataLabels** para Chart **Series**. Essas propriedades incluem ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue etc:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Por favor, veja o resultado abaixo:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Como formatar o número do rótulo de dados do gráfico

Usando [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) você pode especificar a formatação numérica de um único rótulo de dados do gráfico.

O exemplo de código a seguir mostra como formatar um número do rótulo de dados:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Como definir propriedades do eixo do gráfico

Se você deseja trabalhar com eixo do gráfico, escala e unidades de exibição para o eixo de valor, use as classes [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/) e [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/).

O exemplo de código a seguir mostra como definir as propriedades dos eixos X e Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Como definir o valor de tempo Date do eixo

O exemplo de código a seguir mostra como definir valores de data/hora para propriedades de eixo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Como formatar o valor numérico do eixo

O exemplo de código a seguir mostra como alterar o formato dos números no eixo de valores:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Como definir limites do eixo

A classe `AxisBound` representa um limite mínimo ou máximo dos valores do eixo. O limite pode ser especificado como um valor numérico, de data e hora ou um valor "automático" especial.

O exemplo de código a seguir mostra como definir limites de um eixo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Como definir a unidade de intervalo entre rótulos

O exemplo de código a seguir mostra como definir a unidade de intervalo entre rótulos em um eixo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Como ocultar o eixo do gráfico

Se quiser mostrar ou ocultar o eixo do gráfico, você pode simplesmente fazer isso definindo o valor da propriedade `ChartAxis.Hidden`.

O exemplo de código a seguir mostra como ocultar o eixo Y do gráfico:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Como alinhar o rótulo do gráfico

Se você deseja definir um alinhamento de texto para rótulos de múltiplas linhas, você pode simplesmente fazer isso definindo o valor da propriedade [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Alignment**.

O exemplo de código a seguir mostra como marcar o alinhamento do rótulo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word alinha o rótulo do gráfico ao centro por padrão.

{{% /alert %}}

## Como definir a formatação de preenchimento e traçado

A formatação de preenchimento e traçado pode ser definida para séries de gráficos, pontos de dados e marcadores. Para isso, é necessário utilizar as propriedades do tipo **ChartFormat** nas classes **ChartSeries**, **ChartDataPoint** e **ChartMarker**, bem como aliases para algumas propriedades, como ForeColor, BackColor, Visible e Transparency na classe `Stroke`.

O exemplo de código a seguir mostra como definir a cor da série:

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

O exemplo de código a seguir mostra como definir a cor e a espessura da linha:

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
