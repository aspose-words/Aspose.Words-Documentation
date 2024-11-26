---
title: Utilisation de graphiques dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des graphiques
linktitle: Travailler avec des graphiques
description: "Introduction à la fonction Graphique, comment créer et manipuler des graphiques à l'aide de Java."
type: docs
weight: 310
url: /fr/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

La nouvelle méthode [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) a été ajoutée à la classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Voyons donc comment insérer un simple histogramme dans le document en utilisant la méthode **insertChart**.


## Comment insérer un graphique à partir de zéro en utilisant Aspose.Words

Dans cette section, nous allons apprendre à insérer un graphique dans un document.

###  Insérer Un Graphique à Colonnes

L'exemple de code suivant montre comment insérer un histogramme:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Le code produit le résultat suivant:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Il existe quatre surcharges différentes pour la méthode d'ajout de séries, qui ont été exposées pour couvrir toutes les variantes possibles de sources de données pour tous les types de graphiques:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Le code produit le résultat suivant:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Insérer un Graphique en Nuage de Points

L'exemple de code suivant montre comment insérer un nuage de points:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Le code produit le résultat suivant:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Insérer un Graphique en Aires

L'exemple de code suivant montre comment insérer un graphique en aires:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Le code produit le résultat suivant:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Insérer un Graphique à Bulles

L'exemple de code suivant montre comment insérer un graphique à bulles:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Le code produit le résultat suivant:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Utilisation de graphiques via `Shape.Chart` Objet

Une fois le graphique inséré et rempli de données, vous pouvez modifier son apparence. la propriété [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) contient toutes les options liées au graphique disponibles via le public API.

Par exemple, modifions le comportement du titre ou de la légende du graphique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Le code génère les résultats suivants:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Comment travailler avec ChartSeriesCollection du graphique

Examinons la collection [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/). Toutes les séries de graphiques sont disponibles via la collection [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), qui est **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Vous pouvez supprimer les séries une par une ou les effacer toutes ainsi qu'en ajouter une nouvelle si nécessaire. Le graphique nouvellement inséré a des séries par défaut ajoutées à cette collection. Pour les supprimer, vous devez appeler la méthode **chart.getSeries().clear()**.

## Travailler avec une seule classe ChartSeries

Voici comment travailler avec une série particulière.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Tous les [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) simples ont des options [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) par défaut, veuillez essayer d'utiliser le code suivant pour les modifier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Comment travailler avec un seul ChartDataPoint d'un `ChartSeries`

En utilisant [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), vous pouvez personnaliser la mise en forme d'un seul point de données de la série de graphiques:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Veuillez voir le résultat ci-dessous:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Comment travailler avec ChartDataLabel d'un seul ChartSeries

En utilisant [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/), vous pouvez spécifier le formatage d'une seule étiquette de données de la série de graphiques, comme afficher / masquer LegendKey, CategoryName, SeriesName, Valeur etc.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Veuillez voir le résultat ci-dessous:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Comment définir les Options par défaut pour ChartDataLabels de ChartSeries

La classe [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) définit des propriétés qui peuvent être utilisées pour définir les options par défaut pour **ChartDataLabels** pour le graphique **Series**. Ces propriétés comprennent setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue etc:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Veuillez voir le résultat ci-dessous:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Comment Formater le Nombre d'étiquettes de données de graphique

À l'aide de la propriété [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), vous pouvez spécifier la mise en forme numérique d'une seule étiquette de données du graphique.

L'exemple de code suivant montre comment formater un certain nombre d'étiquettes de données:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Comment définir les Propriétés de l'Axe du Graphique

Si vous souhaitez utiliser l'axe du graphique, la mise à l'échelle et les unités d'affichage pour l'axe des valeurs, veuillez utiliser les classes [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) et [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

L'exemple de code suivant montre comment définir les propriétés des axes X et Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Comment définir la valeur DateTime de l'axe

L'exemple de code suivant montre comment définir des valeurs de date/heure sur les propriétés de l'axe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Comment formater la Valeur Numérique de l'Axe

L'exemple de code suivant montre comment modifier le format des nombres sur l'axe des valeurs:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Comment définir les limites de l'Axe

La classe `AxisBound` représente une limite minimale ou maximale de valeurs d'axe. Bound peut être spécifié sous forme numérique, date-heure ou une valeur spéciale "auto".

L'exemple de code suivant montre comment définir les limites d'un axe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Comment Définir l'Unité d'Intervalle Entre les Étiquettes

L'exemple de code suivant montre comment définir l'unité d'intervalle entre les étiquettes sur un axe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Comment masquer l'Axe du graphique

Si vous souhaitez afficher ou masquer l'axe du graphique, vous pouvez simplement y parvenir en définissant la valeur de la propriété `ChartAxis.Hidden`.

L'exemple de code suivant montre comment masquer l'axe des ordonnées du graphique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Comment Aligner l'Étiquette du Graphique

Si vous souhaitez définir un alignement de texte pour les étiquettes multilignes,vous pouvez simplement y parvenir en définissant la valeur de la propriété [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

L'exemple de code suivant montre comment cocher l'alignement des étiquettes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word aligne l'étiquette du graphique au centre par défaut.

{{% /alert %}}

## Comment définir le Remplissage et le formatage des traits

La mise en forme de remplissage et de trait peut être définie pour les séries de graphiques, les points de données et les marqueurs. Pour ce faire, vous devez utiliser les propriétés du type `ChartFormat` dans les classes ChartSeries, ChartDataPoint et ChartMarker, ainsi que des alias pour certaines propriétés, telles que ForeColor, BackColor, Visible et Transparence dans la classe `Stroke`.

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

doc.Save("ColumnColor.docx");
{{< /highlight >}}

L'exemple de code suivant montre comment définir la couleur et le poids de la ligne:

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
