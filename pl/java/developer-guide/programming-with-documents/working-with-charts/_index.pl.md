---
title: Praca z Charts w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z wykresami
linktitle: Praca z wykresami
description: "Wprowadzenie do funkcji wykresu, jak tworzyć i manipulować wykresami za pomocą Java."
type: docs
weight: 310
url: /pl/java/working-with-charts/
---

Nowy [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) metoda została dodana do [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasa. Zobaczmy jak umieścić prosty wykres kolumn w dokumencie używając **wstawić Wykres** Metoda.


## Jak wstawić wykres z Scratch za pomocą Aspose.Words

W tej sekcji nauczymy się jak umieścić wykres w dokumencie.

###  Wstaw wykres kolumny

Poniższy przykład kodu pokazuje jak wstawić wykres kolumny:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Kod daje następujący wynik:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Istnieją cztery różne przeciążenia dla serii Dodać metodę, która była narażona na pokrycie wszystkich możliwych wariantów źródeł danych dla wszystkich typów map:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Kod daje następujący wynik:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Wstaw scatter Wykres

Poniższy przykład kodu pokazuje jak wstawić wykres rozproszenia:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Kod daje następujący wynik:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Wstaw obszar Wykres

Poniższy przykład kodu pokazuje, jak wstawić wykres obszaru:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Kod daje następujący wynik:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Wstaw wykres bąbelkowy

Poniższy przykład kodu pokazuje jak wstawić wykres bańki:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Kod daje następujący wynik:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Praca z wykresami poprzez `Shape.Chart` Obiekt

Po umieszczeniu mapy i wypełnieniu jej danymi, możesz zmienić jej wygląd. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) właściwość zawiera wszystkie opcje związane z wykresem dostępne za pośrednictwem społeczeństwa API.

Na przykład, zmieńmy się Tytuł wykresu lub zachowanie legendy:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Kod generuje wyniki następstw:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Jak pracować z ChartSeriesCollection z wykresu

Przyjrzyjmy się temu. [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) Kolekcja. Wszystkie wykresy są dostępne przez [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) kolekcja, która jest **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Można usunąć serię jeden po drugim lub wyczyścić wszystkie z nich, a także dodać nowy w razie potrzeby. Nowo wstawiony wykres ma kilka domyślnych serii dodanych do tej kolekcji. Aby je usunąć należy zadzwonić do **chart.getSeries () .clear ()** Metoda.

## Praca z pojedynczą klasą ChartSeries

Oto jak pracować z konkretną serią.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Poniżej przedstawiono wyniki:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Wszystkie pojedyncze [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) mieć domyślne [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opcje, spróbuj użyć następującego kodu, aby je zmienić:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Jak pracować z jednym ChartDataPoint `ChartSeries`

Stosowanie [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) jesteś w stanie dostosować formatowanie pojedynczego punktu danych serii map:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Poniżej przedstawiono wyniki:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Jak pracować z ChartDataLabel Single ChartSeries

Stosowanie [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) są w stanie określić formatowanie pojedynczej etykiety danych serii map, takich jak show / hide LegendKey, CategoryName, SeriesName, Wartość itp.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Poniżej przedstawiono wyniki:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Jak zdefiniować domyślne opcje dla ChartDataLabels ChartSeries

W [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) klasa określa właściwości, które mogą być wykorzystane do ustawienia opcji domyślnych dla **ChartDataLabels** dla wykresu **Series**. Właściwości te obejmują setShowCategoryName, setShowBubbleSize, setShowProcent, setShowSeriesName, setShow Wartość itp.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Poniżej przedstawiono wyniki:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Jak Format Numer wykresu Znacznik danych

Korzystanie z [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) właściwość, można określić numer formatowania pojedynczej etykiety danych na wykresie.

Poniższy przykład kodu pokazuje, jak sformatować liczbę etykiet danych:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Jak ustawić właściwości osi wykresu

Jeśli chcesz pracować z osią wykresu, skalowaniem i wyświetlaniem jednostek dla osi wartości, użyj [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), oraz [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) zajęcia.

Poniższy przykład kodu pokazuje jak zdefiniować właściwości osi X i Y-:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Jak ustawić DateWartość czasu osi

Poniższy przykład kodu pokazuje jak ustawić wartości daty / czasu na właściwości osi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Jak formatować wartość liczbową osi

Poniższy przykład kodu pokazuje jak zmienić format liczb na osi wartości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Jak ustawić granice osi

W `AxisBound` klasa reprezentuje minimalną lub maksymalną granicę wartości osi. Fund może być określony jako wartość liczbowa, date- time lub specjalna wartość "auto".

Poniższy przykład kodu pokazuje jak ustawić granice osi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Jak ustawić jednostkę interwalną pomiędzy etykietami

Poniższy przykład kodu pokazuje, jak ustawić przedział między etykietami na osi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Jak ukryć oś wykresu

Jeśli chcesz pokazać lub ukryć oś mapy, możesz to po prostu osiągnąć ustalając wartość `ChartAxis.Hidden` nieruchomości.

Poniższy przykład kodu pokazuje jak ukryć oś Y- na wykresie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Jak dopasować etykietę wykresu

Jeśli chcesz ustawić wyrównanie tekstu dla etykiet wieloliniowych, możesz to po prostu osiągnąć ustalając wartość [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) nieruchomości.

Poniższy przykład kodu pokazuje, jak zaznaczyć ustawienie etykiety:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word wyrównania Wykres Etykieta do centrum domyślnie.

{{% /alert %}}

## Jak ustawić wypełnienie i formatowanie stroke

Formatowanie napełnienia i udaru można ustawić dla serii map, punktów danych i markerów. Aby to zrobić, należy użyć właściwości `ChartFormat` Wpisz w klasie ChartSeries, ChartDataPoint i ChartMarker, a także aliasy dla niektórych właściwości, takich jak ForeColor, BackColor, Widoczne i Przejrzystość w `Stroke` Klasa.

Poniższy przykład kodu pokazuje jak ustawić kolor serii:

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

Poniższy przykład kodu pokazuje jak ustawić kolor i wagę linii:

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
