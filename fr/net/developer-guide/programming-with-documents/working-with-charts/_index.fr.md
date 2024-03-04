---
title: Travailler avec des graphiques dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des graphiques
linktitle: Travailler avec des graphiques
description: "Introduction à la fonctionnalité Graphique, comment créer et manipuler des graphiques à l'aide de C#."
type: docs
weight: 310
url: /fr/net/working-with-charts/
---

Une nouvelle méthode [InsertChart](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertchart/) a été ajoutée à la classe [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/). Voyons donc comment insérer un simple histogramme dans le document à l'aide de la méthode [InsertChart](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertchart/).

## Comment insérer un graphique

Dans cette section, nous apprendrons comment insérer un graphique dans un document.

### Insérer un histogramme

L'exemple de code suivant montre comment insérer un histogramme:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Le code produit le résultat suivant:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Il existe quatre surcharges différentes pour la méthode Series Add, qui a été exposée pour couvrir toutes les variantes possibles de sources de données pour tous les types de graphiques:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Le code produit le résultat suivant:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Insérer un graphique à nuages de points

L'exemple de code suivant montre comment insérer un nuage de points:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Le code produit le résultat suivant:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Insérer un graphique en aires

L'exemple de code suivant montre comment insérer un graphique en aires:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Le code produit le résultat suivant:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Insérer un graphique à bulles

L'exemple de code suivant montre comment insérer un graphique à bulles:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Le code produit le résultat suivant:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Travailler avec des graphiques via un objet `Shape.Chart`

Une fois le graphique inséré et rempli de données, vous pouvez modifier son apparence. La propriété `Shape.Chart` contient toutes les options liées aux graphiques disponibles via le API public.

Par exemple, modifions le comportement du titre ou de la légende du graphique:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Le code génère les résultats suivants:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Comment travailler avec ChartSeriesCollection de graphiques

Examinons la collection [ChartSeries](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartseries/). Toutes les séries de graphiques sont disponibles via la collection [chart.Series](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chart/series/), qui est **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Vous pouvez supprimer les séries une par une ou toutes les effacer ainsi qu'en ajouter une nouvelle si nécessaire. Le graphique nouvellement inséré comporte des séries par défaut ajoutées à cette collection. Pour les supprimer, vous devez appeler la méthode **graphique.Series.Clear()**.

## Travailler avec une seule classe ChartSeries

Voici comment travailler avec une série particulière:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Tous les [ChartSeries](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartseries/) uniques ont des options [ChartDataPoint](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartdatapoint/) par défaut, veuillez essayer d'utiliser le code suivant pour les modifier:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Comment travailler avec un seul ChartDataPoint d'un `ChartSeries`

À l'aide de [ChartDataPoint](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartdatapoint/), vous pouvez personnaliser le formatage d'un seul point de données de la série de graphiques:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Comment travailler avec ChartDataLabel d'une seule ChartSeries

En utilisant [ChartDataLabel](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartdatalabel/), vous pouvez spécifier le formatage d'une seule étiquette de données de la série de graphiques, comme afficher/masquer LegendKey, CategoryName, SeriesName, Value, etc:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Veuillez voir le résultat ci-dessous:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Comment définir les options par défaut pour ChartDataLabels de ChartSeries

La classe [ChartDataLabelCollection](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartdatalabelcollection/) définit des propriétés qui peuvent être utilisées pour définir les options par défaut de **ChartDataLabels** pour Chart **Series**. Ces propriétés incluent ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue, etc.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Veuillez voir le résultat ci-dessous:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Comment formater l'étiquette du numéro de données du graphique

En utilisant [NumberFormat](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartdatalabel/numberformat/), vous pouvez spécifier le formatage numérique d'une seule étiquette de données du graphique.

L'exemple de code suivant montre comment formater un numéro de l'étiquette de données:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Comment définir les propriétés de l'axe du graphique

Si vous souhaitez travailler avec l'axe du graphique, la mise à l'échelle et les unités d'affichage pour l'axe des valeurs, veuillez utiliser les classes [ChartAxis](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/axisdisplayunit/) et [AxisScaling](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/axisscaling/).

L'exemple de code suivant montre comment définir les propriétés des axes X et Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Comment définir la valeur temporelle Date de l'axe

L'exemple de code suivant montre comment définir les valeurs de date/heure sur les propriétés de l'axe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Comment formater la valeur numérique de l'axe

L'exemple de code suivant montre comment modifier le format des nombres sur l'axe des valeurs:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Comment définir les limites de l'axe

La classe `AxisBound` représente une limite minimale ou maximale des valeurs d'axe. La limite peut être spécifiée sous la forme d'une valeur numérique, date-heure ou d'une valeur "auto" spéciale.

L'exemple de code suivant montre comment définir les limites d'un axe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Comment définir l'unité d'intervalle entre les étiquettes

L'exemple de code suivant montre comment définir l'unité d'intervalle entre les étiquettes sur un axe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Comment masquer l'axe du graphique

Si vous souhaitez afficher ou masquer l'axe du graphique, vous pouvez simplement y parvenir en définissant la valeur de la propriété `ChartAxis.Hidden`.

L'exemple de code suivant montre comment masquer l'axe Y du graphique:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Comment aligner l'étiquette du graphique

Si vous souhaitez définir un alignement de texte pour les étiquettes multilignes, vous pouvez simplement y parvenir en définissant la valeur de la propriété [TickLabels](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Alignement**.

L'exemple de code suivant montre comment cocher l'alignement des étiquettes:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word aligne l'étiquette du graphique au centre par défaut.

{{% /alert %}}

## Comment définir le formatage du remplissage et du contour

Le formatage du remplissage et du contour peut être défini pour les séries de graphiques, les points de données et les marqueurs. Pour ce faire, vous devez utiliser les propriétés de type **ChartFormat** dans les classes **ChartSeries**, **ChartDataPoint** et **ChartMarker**, ainsi que des alias pour certaines propriétés, telles que ForeColor, BackColor, Visible et Transparency dans la classe `Stroke`.

L'exemple de code suivant montre comment définir la couleur de la série:

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

L'exemple de code suivant montre comment définir la couleur et l'épaisseur des lignes:

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
