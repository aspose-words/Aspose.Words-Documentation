---
title: Praca z wykresami w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca z wykresami
linktitle: Praca z wykresami
description: "Wprowadzenie do funkcji wykresów, jak tworzyć i manipulować wykresami za pomocą C#."
type: docs
weight: 310
url: /pl/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Do klasy [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) dodano nową metodę [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/). Zobaczmy więc, jak wstawić prosty wykres kolumnowy do dokumentu za pomocą metody [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/).

## Jak wstawić wykres

W tej sekcji dowiemy się, jak wstawić wykres do dokumentu.

### Wstaw wykres kolumnowy

Poniższy przykład kodu pokazuje, jak wstawić wykres kolumnowy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Kod generuje następujący wynik:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Istnieją cztery różne przeciążenia metody Add serii, która została udostępniona w celu uwzględnienia wszystkich możliwych wariantów źródeł danych dla wszystkich typów wykresów:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Kod generuje następujący wynik:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Wstaw wykres punktowy

Poniższy przykład kodu pokazuje, jak wstawić wykres punktowy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Kod generuje następujący wynik:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Wstaw wykres warstwowy

Poniższy przykład kodu pokazuje, jak wstawić wykres warstwowy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Kod generuje następujący wynik:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Wstaw wykres bąbelkowy

Poniższy przykład kodu pokazuje, jak wstawić wykres bąbelkowy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Kod generuje następujący wynik:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Praca z wykresami poprzez obiekt `Shape.Chart`

Po wstawieniu i wypełnieniu wykresu danymi istnieje możliwość zmiany jego wyglądu. Właściwość `Shape.Chart` zawiera wszystkie opcje związane z wykresami dostępne w publicznym API.

Zmieńmy na przykład tytuł wykresu lub zachowanie legendy:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Kod generuje następujące wyniki:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Jak pracować z ChartSeriesCollection of Chart

Przyjrzyjmy się kolekcji [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/). Wszystkie serie wykresów są dostępne poprzez kolekcję [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/), czyli **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Możesz usuwać serie pojedynczo lub wyczyścić wszystkie, a jeśli zajdzie taka potrzeba, dodać nową. Nowo wstawiony wykres zawiera kilka domyślnych serii dodanych do tej kolekcji. Aby je usunąć należy wywołać metodę **wykres.Seria.Clear()**.

## Praca z klasą Single ChartSeries

Oto jak pracować z konkretną serią:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Proszę zobaczyć wynik poniżej:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Wszystkie pojedyncze [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) mają domyślne opcje [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/). Spróbuj użyć poniższego kodu, aby je zmienić:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Proszę zobaczyć wynik poniżej:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Jak pracować z pojedynczym ChartDataPoint w `ChartSeries`

Korzystając z [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/), możesz dostosować formatowanie pojedynczego punktu danych w serii wykresów:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Proszę zobaczyć wynik poniżej:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Jak pracować z ChartDataLabel pojedynczej serii wykresów

Używając [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/), możesz określić formatowanie pojedynczej etykiety danych serii wykresów, np. pokaż/ukryj LegendKey, CategoryName, SeriesName, Value itp.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Proszę zobaczyć wynik poniżej:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Jak zdefiniować domyślne opcje dla ChartDataLabels w ChartSeries

Klasa [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) definiuje właściwości, których można użyć do ustawienia domyślnych opcji dla **ChartDataLabels** dla Chart **Series**. Te właściwości obejmują ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue itp.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Proszę zobaczyć wynik poniżej:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Jak sformatować numer etykiety danych wykresu

Za pomocą [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) możesz określić formatowanie liczbowe pojedynczej etykiety danych wykresu.

Poniższy przykład kodu pokazuje, jak sformatować numer etykiety danych:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Jak ustawić właściwości osi wykresu

Jeśli chcesz pracować z osią wykresu, skalowaniem i jednostkami wyświetlania dla osi wartości, użyj klas [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/) i [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/).

Poniższy przykład kodu pokazuje, jak zdefiniować właściwości osi X i Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Jak ustawić wartość czasu Date osi

Poniższy przykład kodu pokazuje, jak ustawić wartości daty/godziny dla właściwości osi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Jak sformatować wartość liczbową osi

Poniższy przykład kodu pokazuje, jak zmienić format liczb na osi wartości:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Jak ustawić granice osi

Klasa `AxisBound` reprezentuje minimalną lub maksymalną granicę wartości osi. Powiązanie można określić jako wartość liczbową, datę i godzinę lub specjalną wartość "automatyczną".

Poniższy przykład kodu pokazuje, jak ustawić granice osi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Jak ustawić jednostkę odstępu między etykietami

Poniższy przykład kodu pokazuje, jak ustawić jednostkę odstępu między etykietami na osi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Jak ukryć oś wykresu

Jeśli chcesz pokazać lub ukryć oś wykresu, możesz to po prostu osiągnąć, ustawiając wartość właściwości `ChartAxis.Hidden`.

Poniższy przykład kodu pokazuje, jak ukryć oś Y wykresu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Jak wyrównać etykietę wykresu

Jeśli chcesz ustawić wyrównanie tekstu dla etykiet wielowierszowych, możesz to po prostu osiągnąć, ustawiając wartość właściwości [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)X**.Wyrównanie**.

Poniższy przykład kodu pokazuje, jak zaznaczyć wyrównanie etykiet:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word domyślnie wyrównuje etykietę wykresu do środka.

{{% /alert %}}

## Jak ustawić formatowanie wypełnienia i obrysu

Formatowanie wypełnienia i obrysu można ustawić dla serii wykresów, punktów danych i znaczników. Aby to zrobić, należy użyć właściwości typu **ChartFormat** w klasach **ChartSeries**, **ChartDataPoint** i **ChartMarker**, a także aliasów dla niektórych właściwości, takich jak ForeColor, BackColor, Visible i Transparency w klasie `Stroke`.

Poniższy przykład kodu pokazuje, jak ustawić kolor serii:

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

Poniższy przykład kodu pokazuje, jak ustawić kolor i wagę linii:

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
