---
title: Praca z wykresami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z wykresami
linktitle: Praca z wykresami
description: "Twórz i modyfikuj wykresy różnych typów w dokumencie za pomocą Python."
type: docs
weight: 310
url: /pl/python-net/working-with-charts/
---

Do klasy [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) dodano nową metodę [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/). Zobaczmy więc, jak wstawić prosty wykres kolumnowy do dokumentu za pomocą metody [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Jak wstawić wykres

W tej sekcji dowiemy się, jak wstawić wykres do dokumentu.

### Wstaw wykres kolumnowy

Poniższy przykład kodu pokazuje, jak wstawić wykres kolumnowy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Kod generuje następujący wynik:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Istnieją metody [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) i [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), które zostały wyeksponowane w celu uwzględnienia wszystkich możliwych wariantów źródeł danych dla wszystkich typów wykresów:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Kod generuje następujący wynik:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Wstaw wykres punktowy

Poniższy przykład pokazuje, jak wstawić wykres punktowy.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Kod generuje następujący wynik:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Wstaw wykres warstwowy

Poniższy przykład kodu pokazuje, jak wstawić wykres warstwowy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Kod generuje następujący wynik:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Wstaw wykres bąbelkowy

Poniższy przykład kodu pokazuje, jak wstawić wykres bąbelkowy:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Kod generuje następujący wynik:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Praca z wykresami za pomocą obiektu Shape.chart

Po wstawieniu i wypełnieniu wykresu danymi istnieje możliwość zmiany jego wyglądu. Właściwość [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) zawiera wszystkie opcje związane z wykresami dostępne w publicznym API.

Na przykład zmieńmy tytuł lub legendę [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Kod generuje następujące wyniki:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Jak pracować z ChartSeriesCollection of Chart

Przyjrzyjmy się kolekcji [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Wszystkie serie wykresów są dostępne w kolekcji [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Możesz usuwać serie pojedynczo lub wyczyścić wszystkie, a jeśli zajdzie taka potrzeba, dodać nową. Nowo wstawiony wykres zawiera kilka domyślnych serii dodanych do tej kolekcji. Aby je usunąć należy wywołać metodę [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Praca z klasą Single ChartSeries

Oto jak pracować z konkretną serią.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Proszę zobaczyć wynik poniżej:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Wszystkie pojedyncze [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) mają domyślne opcje [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/). Spróbuj użyć poniższego kodu, aby je zmienić:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Proszę zobaczyć wynik poniżej:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Jak pracować z pojedynczym ChartDataPoint w `ChartSeries`

Korzystając z [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), możesz dostosować formatowanie pojedynczego punktu danych w serii wykresów:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Proszę zobaczyć wynik poniżej:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Jak pracować z ChartDataLabel pojedynczej serii wykresów

Używając [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/), możesz określić formatowanie pojedynczej etykiety danych serii wykresów, np. pokaż/ukryj klucz legendy, nazwę kategorii, nazwę serii, wartość itp.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Proszę zobaczyć wynik poniżej:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Jak zdefiniować domyślne opcje dla ChartDataLabels w ChartSeries

Klasa [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) definiuje właściwości, których można użyć do ustawienia domyślnych opcji dla [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) dla serii wykresów. Właściwości te obejmują [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) itp.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Proszę zobaczyć wynik poniżej:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Jak sformatować numer etykiety danych wykresu

Za pomocą [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) możesz określić formatowanie liczbowe pojedynczej etykiety danych wykresu.

Poniższy przykład kodu pokazuje, jak sformatować numer etykiety danych:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Jak ustawić właściwości osi wykresu

Jeśli chcesz pracować z osią wykresu, skalowaniem i jednostkami wyświetlania dla osi wartości, użyj klas [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) i [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

Poniższy przykład kodu pokazuje, jak zdefiniować właściwości osi X i Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Jak ustawić wartość czasu Date osi

Poniższy przykład kodu pokazuje, jak ustawić wartości daty/godziny dla właściwości osi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Jak sformatować wartość liczbową osi

Poniższy przykład kodu pokazuje, jak zmienić format liczb na osi wartości:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Jak ustawić granice osi

Klasa [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) reprezentuje minimalną lub maksymalną granicę wartości osi. Powiązanie można określić jako wartość liczbową, datę i godzinę lub specjalną wartość "automatyczną".

Poniższy przykład kodu pokazuje, jak ustawić granice osi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Jak ustawić jednostkę odstępu między etykietami

Poniższy przykład kodu pokazuje, jak ustawić jednostkę odstępu między etykietami na osi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Jak ukryć oś wykresu

Jeśli chcesz pokazać lub ukryć oś wykresu, możesz to po prostu osiągnąć, ustawiając wartość właściwości [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

Poniższy przykład kodu pokazuje, jak ukryć oś Y wykresu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Jak wyrównać etykietę wykresu

Jeśli chcesz ustawić wyrównanie tekstu dla etykiet wielowierszowych, możesz to po prostu osiągnąć, ustawiając wartość właściwości [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

Poniższy przykład kodu pokazuje, jak zaznaczyć wyrównanie etykiet:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word domyślnie wyrównuje etykietę wykresu do środka.

{{% /alert %}}

## Jak ustawić formatowanie wypełnienia i obrysu

Formatowanie wypełnienia i obrysu można ustawić dla serii wykresów, punktów danych i znaczników. Aby to zrobić, należy użyć właściwości typu [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) w klasach [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) i [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), a także aliasów dla niektórych właściwości, takich jak [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) i [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) w klasie [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

Poniższy przykład kodu pokazuje, jak ustawić kolor serii:

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

Poniższy przykład kodu pokazuje, jak ustawić kolor i wagę linii:

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
