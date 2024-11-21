---
title: Travailler avec les graphiques en Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les graphiques
linktitle: Travailler avec les graphiques
description: "Introduction à la fonction graphique, comment créer et manipuler des graphiques en utilisant Java."
type: docs
weight: 310
url: /fr/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

La nouvelle [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) la méthode a été ajoutée à la [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) En cours. Donc, voyons comment insérer un simple diagramme de colonnes dans le document en utilisant **insérer Graphique** méthode.


## Comment insérer un graphique depuis Scratch en utilisant Aspose.Words

Dans cette section, nous apprendrons comment insérer un graphique dans un document.

###  Insérer le tableau des colonnes

L'exemple de code suivant montre comment insérer un tableau de colonnes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Le code produit le résultat suivant:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Il y a quatre surcharges différentes pour la série Ajouter une méthode qui a été exposée pour couvrir toutes les variantes possibles des sources de données pour tous les types de cartes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Le code produit le résultat suivant:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Insérer Scatter Graphique

L'exemple de code suivant montre comment insérer un graphique de dispersion:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Le code produit le résultat suivant:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Insérer une zone Graphique

L'exemple de code suivant montre comment insérer un graphique régional:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Le code produit le résultat suivant:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Insérer le graphique des bulles

L'exemple de code suivant montre comment insérer un graphique à bulles:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Le code produit le résultat suivant:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Travailler avec les graphiques à travers `Shape.Chart` Objet

Une fois le graphique inséré et rempli de données, vous pouvez changer son apparence. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) propriété contient toutes les options liées au graphique disponibles par l'intermédiaire du public API.

Par exemple, changeons Titre du graphique ou comportement de la légende:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Le code génère les résultats suivants:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Comment travailler avec ChartSeriesCollection de Chart

Laissez voir [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) recouvrement. Toutes les séries de graphiques sont disponibles dans le [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) la collecte, qui est **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Vous pouvez supprimer la série un par un ou effacer tous les ainsi que d'ajouter un nouveau si nécessaire. Le graphique nouvellement inséré a quelques séries par défaut ajoutées à cette collection. Pour les supprimer, vous devez appeler le **chart.getSeries().clear()** méthode.

## Travailler avec une seule classe de séries graphiques

Voici comment travailler avec une série particulière.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Veuillez consulter le résultat ci-dessous:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Tous simples [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) ont par défaut [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) options, veuillez essayer en utilisant le code suivant pour les modifier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Comment travailler avec un seul graphiqueDataPoint d'un `ChartSeries`

Utilisation [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) vous pouvez personnaliser le formatage d'un seul point de données de la série de cartes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Veuillez consulter le résultat ci-dessous:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Comment travailler avec ChartDataLabel d'une série de cartes uniques

Utilisation [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) vous êtes en mesure de spécifier le formatage d'une seule étiquette de données de la série de graphiques, comme show/hid LegendKey, CategoryName, SeriesName, Valeur, etc.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Veuillez consulter le résultat ci-dessous:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Comment définir les options par défaut pour ChartDataLabels de ChartSeries

Les [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) class définit les propriétés qui peuvent être utilisées pour définir les options par défaut pour **ChartDataLabels** pour le graphique **Series**. Ces propriétés incluent setShowCategoryName, setShowBubbleSize, setShowPourcentage, setSeriesName, setShow Valeur, etc.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Veuillez consulter le résultat ci-dessous:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Comment formater le nombre d'étiquettes de données graphiques

Utilisation [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) propriété, vous pouvez spécifier le formatage numéro d'une seule étiquette de données du graphique.

L'exemple de code suivant montre comment formater un certain nombre d'étiquettes de données:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Comment définir les propriétés du graphique Axis

Si vous voulez travailler avec l'axe des cartes, l'échelle et les unités d'affichage pour l'axe des valeurs, veuillez utiliser [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), et [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) les cours.

L'exemple de code suivant montre comment définir les propriétés des axes X et Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Comment définir DateValeur temporelle de l'axe

L'exemple de code suivant montre comment définir les valeurs date/heure pour les propriétés de l'axe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Comment formater la valeur numérique de l'axe

L'exemple de code suivant montre comment modifier le format des nombres sur l'axe des valeurs:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Comment définir les limites de l'axe

Les `AxisBound` classe représente une limite minimale ou maximale des valeurs de l'axe. Bound peut être spécifié comme une valeur numérique, date-heure ou spéciale "auto".

L'exemple de code suivant montre comment définir les limites d'un axe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Comment définir l'unité d'intervalle entre les étiquettes

L'exemple de code suivant montre comment régler l'unité d'intervalle entre les étiquettes sur un axe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Comment cacher l'axe des cartes

Si vous voulez afficher ou masquer l'axe du graphique, vous pouvez simplement atteindre ceci en définissant la valeur de `ChartAxis.Hidden` propriété.

L'exemple de code suivant montre comment masquer l'axe Y du graphique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Comment aligner l'étiquette des cartes

Si vous voulez définir un alignement de texte pour les étiquettes multilignes, vous pouvez simplement y arriver en définissant la valeur de [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) propriété.

L'exemple de code suivant montre comment cocher l'alignement de l'étiquette:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word alignement Étiquette graphique au centre par défaut.

{{% /alert %}}

## Comment définir le formatage de remplissage et d'attaque

Le formatage de remplissage et de course peut être défini pour les séries de cartes, les points de données et les marqueurs. Pour cela, vous devez utiliser les propriétés de la `ChartFormat` type dans les classes ChartSeries, ChartDataPoint et ChartMarker, ainsi que des alias pour certaines propriétés, comme ForeColor, BackColor, Visible, et Transparence dans le `Stroke` En cours.

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
