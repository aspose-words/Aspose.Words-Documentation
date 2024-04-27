---
title: Trabalhando com gráficos em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com gráficos
linktitle: Trabalhando com gráficos
description: "Introdução ao recurso Gráfico, como criar e manipular gráficos usando Java."
type: docs
weight: 310
url: /pt/java/working-with-charts/
---

O novo [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) método foi adicionado ao [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe. Então, vamos ver como inserir um gráfico de colunas simples no documento usando **inserção Gráfico** método.


## Como Inserir um Gráfico a partir do Scratch usando Aspose.Words

Nesta seção aprenderemos como inserir um gráfico em um documento.

###  Inserir gráfico de coluna

O exemplo de código a seguir mostra como inserir o gráfico da coluna:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

O código produz o seguinte resultado:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Existem quatro sobrecargas diferentes para a série Adicionar método, que foram expostos para cobrir todas as variantes possíveis de fontes de dados para todos os tipos de gráficos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

O código produz o seguinte resultado:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Inserir scatter Gráfico

O exemplo a seguir mostra como inserir um gráfico de dispersão:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

O código produz o seguinte resultado:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Área de inserção Gráfico

O exemplo a seguir mostra como inserir um gráfico de área:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

O código produz o seguinte resultado:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Inserir gráfico de bolhas

O exemplo a seguir mostra como inserir um gráfico de bolhas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

O código produz o seguinte resultado:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Trabalhando com gráficos através `Shape.Chart` Objeto

Uma vez que o gráfico foi inserido e preenchido com dados, você é capaz de mudar sua aparência. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) propriedade contém todas as opções relacionadas ao gráfico disponíveis através do público API.

Por exemplo, vamos mudar Título do gráfico ou comportamento da lenda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

O código gera os seguintes resultados:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Como Trabalhar com ChartSeriesCollection of Chart

Vamos olhar para [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) coleção. Todas as séries de gráficos estão disponíveis através do [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) coleção, que é **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Você pode remover a série um por um ou limpar todos eles, bem como adicionar um novo se necessário. O gráfico recentemente inserido tem algumas séries padrão adicionadas a esta coleção. Para removê-los você precisa chamar o **chart.getSeries().clear()** método.

## Trabalhando com uma única classe ChartSeries

Aqui está como trabalhar com uma série particular.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Por favor, veja o resultado abaixo:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Todos [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) ter padrão [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opções, tente usar o seguinte código para alterá-los:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Como Trabalhar com ChartDataPoint Único de um `ChartSeries`

Usando [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) você é capaz de personalizar a formatação de um único ponto de dados da série gráfico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Por favor, veja o resultado abaixo:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Como Trabalhar com ChartDataLabel de uma única série de gráficos

Usando [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) você é capaz de especificar a formatação de um único rótulo de dados da série gráfico, como show/hide LegendKey, CategoriaName, SeriesName, Valor etc

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Por favor, veja o resultado abaixo:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Como definir opções padrão para ChartDataLabels de ChartSeries

O [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) classe define propriedades que podem ser usadas para definir opções padrão para **ChartDataLabels** para Gráfico **Series**. Estas propriedades incluem setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowShow Valor etc

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Por favor, veja o resultado abaixo:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Como Formatar o Número de Gráficos

Usando o [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) propriedade, você pode especificar a formatação de números de um único rótulo de dados do gráfico.

O exemplo de código a seguir mostra como formatar um número do rótulo de dados:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Como Definir Propriedades do Eixo de Gráfico

Se você quiser trabalhar com o eixo do gráfico, escalar e exibir unidades para o eixo do valor, use [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), e [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) aulas.

O exemplo a seguir mostra como definir propriedades X e Y-axis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Como Definir DateValor do tempo de Eixo

O exemplo de código a seguir mostra como definir valores de data/hora em propriedades de eixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Como formatar o valor do número de eixos

O exemplo de código a seguir mostra como alterar o formato de números no eixo de valor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Como Definir Conjuntos de Eixos

O `AxisBound` classe representa um limite mínimo ou máximo de valores de eixo. Bound pode ser especificado como um numérico, data-hora ou um valor especial "auto".

O exemplo de código a seguir mostra como definir os limites de um eixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Como Definir Unidade de Intervalo entre Etiquetas

O exemplo de código a seguir mostra como definir a unidade de intervalo entre etiquetas em um eixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Como Esconder Eixos Gráficos

Se você quiser mostrar ou ocultar o eixo do gráfico, você pode simplesmente alcançar isso definindo o valor de `ChartAxis.Hidden` propriedade.

O exemplo de código a seguir mostra como ocultar o eixo Y do gráfico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Como Alinhar etiqueta de gráfico

Se você quiser definir um alinhamento de texto para etiquetas multi-linha, você pode simplesmente alcançar isso definindo o valor de [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) propriedade.

O exemplo a seguir mostra como marcar o alinhamento da etiqueta:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word alinhamentos Gráfico Label para o centro por padrão.

{{% /alert %}}

## Como configurar a formatação de preenchimento e curso

A formatação de preenchimento e curso pode ser definida para séries de gráficos, pontos de dados e marcadores. Para fazer isso, você precisa usar as propriedades do `ChartFormat` tipo nas classes ChartSeries, ChartDataPoint e ChartMarker, bem como pseudônimos para algumas propriedades, como ForeColor, BackColor, Visible e Transparência no `Stroke` classe.

O seguinte exemplo de código mostra como definir a cor da série:

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

O exemplo a seguir mostra como definir a cor e o peso da linha:

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
