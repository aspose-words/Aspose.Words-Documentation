---
title: Trabalhar com gráficos em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com gráficos
linktitle: Trabalhar com gráficos
description: "Introdução ao recurso gráfico, como criar e manipular gráficos usando Java."
type: docs
weight: 310
url: /pt/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

O novo método [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) foi adicionado à classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Então, vamos ver como inserir um gráfico de colunas simples no documento usando o método **insertChart**.


## Como inserir um gráfico do zero usando Aspose.Words

Nesta seção, aprenderemos como inserir um gráfico em um documento.

###  Inserir Gráfico De Colunas

O exemplo de código a seguir mostra como inserir o gráfico de colunas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

O código produz o seguinte resultado:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Existem quatro sobrecargas diferentes para o método Add em série, que foram expostas para abranger todas as variantes possíveis de fontes de dados para todos os tipos de gráficos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

O código produz o seguinte resultado:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Inserir Gráfico De Dispersão

O exemplo de código a seguir mostra como inserir um gráfico de dispersão:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

O código produz o seguinte resultado:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Inserir Gráfico De Área

O exemplo de código a seguir mostra como inserir um gráfico de área:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

O código produz o seguinte resultado:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Inserir Gráfico De Bolhas

O exemplo de código a seguir mostra como inserir um gráfico de bolhas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

O código produz o seguinte resultado:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Trabalhando com gráficos através do objeto `Shape.Chart`

Uma vez que o gráfico foi inserido e preenchido com dados, você pode alterar sua aparência. A propriedade [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) contém todas as opções relacionadas ao gráfico disponíveis através do público API.

Por exemplo, vamos alterar o comportamento do título ou da legenda do Gráfico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

O código gera os seguintes resultados:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Como trabalhar com ChartSeriesCollection do Gráfico

Vamos dar uma olhada na coleção [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/). Todas as séries de gráficos estão disponíveis através da coleção [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), que é **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Você pode remover uma série por uma ou limpar todas elas, bem como adicionar uma nova, se necessário. O gráfico recém-inserido tem algumas séries padrão adicionadas a esta coleção. Para removê-los, você precisa chamar o método **chart.getSeries().clear()**.

## Trabalhando com uma única classe ChartSeries

Aqui está como trabalhar com uma série específica.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Veja o resultado abaixo:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Todos os únicos [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) têm opções padrão [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), tente usar o seguinte código para alterá - los:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Como trabalhar com um único ChartDataPoint de um `ChartSeries`

Usando [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) você pode personalizar a formatação de um único ponto de dados da série de gráficos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Veja o resultado abaixo:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Como trabalhar com ChartDataLabel de um único ChartSeries

Usando [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/), você pode especificar a formatação de um único rótulo de dados da série de gráficos, como mostrar / ocultar LegendKey, CategoryName, SeriesName, Valor etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Veja o resultado abaixo:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Como definir opções padrão para ChartDataLabels de ChartSeries

A classe [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) define propriedades que podem ser usadas para definir opções padrão para **ChartDataLabels** para o gráfico **Series**. Essas propriedades incluem setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Veja o resultado abaixo:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Como formatar o número do rótulo dos dados do Gráfico

Usando a propriedade [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), é possível especificar a formatação numérica de um único rótulo de dados do gráfico.

O exemplo de código a seguir mostra como formatar um número do rótulo de dados:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Como definir as propriedades do eixo do Gráfico

Se você quiser trabalhar com eixo de gráfico, dimensionamento e unidades de exibição para o eixo de valor, use as classes [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) e [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

O exemplo de código a seguir mostra como definir as propriedades dos eixos X e Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Como definir DateTime Valor Do Eixo

O exemplo de código a seguir mostra como definir valores de data / hora para propriedades do eixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Como formatar o valor numérico do eixo

O exemplo de código a seguir mostra como alterar o formato dos números no eixo do valor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Como definir limites de eixo

A classe `AxisBound` representa um limite mínimo ou máximo de valores de eixo. O limite pode ser especificado como um valor numérico, data-hora ou um valor especial "auto".

O exemplo de código a seguir mostra como definir os limites de um eixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Como definir a unidade de intervalo entre rótulos

O exemplo de código a seguir mostra como definir a unidade de intervalo entre rótulos em um eixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Como ocultar o eixo do Gráfico

Se você quiser mostrar ou ocultar o eixo do gráfico, você pode simplesmente conseguir isso definindo o valor da propriedade `ChartAxis.Hidden`.

O exemplo de código a seguir mostra como ocultar o eixo Y do gráfico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Como alinhar o rótulo do Gráfico

Se você quiser definir um alinhamento de texto para rótulos de várias linhas, você pode simplesmente conseguir isso definindo o valor da propriedade [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

O exemplo de código a seguir mostra como marcar o alinhamento do rótulo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word alinha o rótulo do Gráfico ao centro por padrão.

{{% /alert %}}

## Como definir a formatação de preenchimento e traçado

A formatação de preenchimento e traçado pode ser definida para séries de gráficos, pontos de dados e marcadores. Para fazer isso, você precisa usar as propriedades do tipo `ChartFormat` nas classes ChartSeries, ChartDataPoint e ChartMarker, bem como aliases para algumas propriedades, como ForeColor, BackColor, Visible e Transparency na classe `Stroke`.

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

doc.Save("ColumnColor.docx");
{{< /highlight >}}

O exemplo de código a seguir mostra como definir a cor e o peso da linha:

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
