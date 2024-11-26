---
title: Python'te Grafiklerle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Grafiklerle Çalışmak
linktitle: Grafiklerle Çalışmak
description: "Python'i kullanarak bir belgede çeşitli türlerde grafikler oluşturun ve değiştirin."
type: docs
weight: 310
url: /tr/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfına yeni [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) yöntemi eklendi. Şimdi [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) yöntemini kullanarak belgeye basit bir sütun grafiğinin nasıl ekleneceğini görelim:

### Grafik Nasıl Eklenir

Bu bölümde bir belgeye nasıl grafik ekleyeceğimizi öğreneceğiz.

### Sütun Grafiği Ekle

Aşağıdaki kod örneği, sütun grafiğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Kod aşağıdaki sonucu üretir:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Tüm grafik türleri için veri kaynaklarının olası tüm çeşitlerini kapsayacak şekilde sunulan [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) ve [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) yöntemleri vardır:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Kod aşağıdaki sonucu üretir:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Dağılım Grafiği Ekle

Aşağıdaki örnekte dağılım grafiğinin nasıl ekleneceği gösterilmektedir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Kod aşağıdaki sonucu üretir:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Alan Grafiği Ekle

Aşağıdaki kod örneği alan grafiğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Kod aşağıdaki sonucu üretir:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Kabarcık Grafiği Ekle

Aşağıdaki kod örneği, kabarcık grafiğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Kod aşağıdaki sonucu üretir:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Shape.chart Nesnesi Aracılığıyla Grafiklerle Çalışmak

Grafik eklenip verilerle doldurulduktan sonra görünümünü değiştirebilirsiniz. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) özelliği, genel API aracılığıyla kullanılabilen grafikle ilgili tüm seçenekleri içerir.

Örneğin, [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) başlığını veya açıklama davranışını değiştirelim:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Kod aşağıdaki sonuçları üretir:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## ChartSeriesCollection of Chart ile Nasıl Çalışılır

[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) koleksiyonuna bakalım. Tüm grafik serilerine [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) koleksiyonundan ulaşılabilir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Serileri tek tek kaldırabileceğiniz gibi hepsini temizleyebileceğiniz gibi, ihtiyaç halinde yeni bir seri de ekleyebilirsiniz. Yeni eklenen grafikte bu koleksiyona eklenen bazı varsayılan seriler var. Bunları kaldırmak için [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) yöntemini çağırmanız gerekir.

## Tek ChartSeries Sınıfıyla Çalışmak

Belirli bir seriyle nasıl çalışılacağı aşağıda açıklanmıştır.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Lütfen aşağıdaki sonuca bakın:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Tüm tek [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)'lerin varsayılan [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) seçenekleri vardır; bunları değiştirmek için lütfen aşağıdaki kodu kullanmayı deneyin:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Lütfen aşağıdaki sonuca bakın:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## `ChartSeries`'in Tek ChartDataPoint'iyle Nasıl Çalışılır?

[ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/)'i kullanarak grafik serisinin tek bir veri noktasının formatını özelleştirebilirsiniz:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Lütfen aşağıdaki sonuca bakın:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Tek bir ChartSeries'in ChartDataLabel'ı ile Nasıl Çalışılır?

[ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/)'i kullanarak, grafik serisinin tek bir veri etiketinin formatını, LegendKey'i göster/gizle, KategoriAdı, SeriAdı, Değer vb. gibi belirtebilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Lütfen aşağıdaki sonuca bakın:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## ChartSeries'in ChartDataLabels'ı için Varsayılan Seçenekler Nasıl Tanımlanır?

[ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) sınıfı, Grafik Serisi için [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/)'nin varsayılan seçeneklerini ayarlamak için kullanılabilecek özellikleri tanımlar. Bu özellikler [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) vb. içerir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Lütfen aşağıdaki sonuca bakın:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Grafik Veri Etiketi Sayısı Nasıl Biçimlendirilir

[ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/)'i kullanarak grafiğin tek bir veri etiketinin sayı formatını belirleyebilirsiniz.

Aşağıdaki kod örneği, bir dizi veri etiketinin nasıl biçimlendirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Grafik Ekseni Özellikleri Nasıl Ayarlanır

Değer ekseni için grafik ekseni, ölçeklendirme ve görüntüleme birimleriyle çalışmak istiyorsanız lütfen [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) ve [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) sınıflarını kullanın.

Aşağıdaki kod örneği, X ve Y ekseni özelliklerinin nasıl tanımlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Eksenin Date Zaman Değeri Nasıl Ayarlanır

Aşağıdaki kod örneği, tarih/saat değerlerinin eksen özelliklerine nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Eksenin Sayı Değeri Nasıl Formatlanır?

Aşağıdaki kod örneği, değer eksenindeki sayıların biçiminin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Eksen Sınırları Nasıl Ayarlanır

[AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) sınıfı, eksen değerlerinin minimum veya maksimum sınırını temsil eder. Sınır; sayısal, tarih-saat veya özel bir "otomatik" değer olarak belirtilebilir.

Aşağıdaki kod örneği, bir eksenin sınırlarının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Etiketler Arasındaki Aralık Birimi Nasıl Ayarlanır

Aşağıdaki kod örneği, bir eksendeki etiketler arasındaki aralık biriminin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Grafik Eksenini Gizleme

Grafik eksenini göstermek veya gizlemek istiyorsanız bunu [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) özelliğinin değerini ayarlayarak kolayca yapabilirsiniz.

Aşağıdaki kod örneği, grafiğin Y ekseninin nasıl gizleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Grafik Etiketi Nasıl Hizalanır?

Çok satırlı etiketler için metin hizalaması ayarlamak istiyorsanız bunu [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) özelliğinin değerini ayarlayarak kolayca yapabilirsiniz.

Aşağıdaki kod örneği, etiket hizalamasının nasıl işaretleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word, Grafik Etiketini varsayılan olarak merkeze hizalar.

{{% /alert %}}

## Dolgu ve Kontur Biçimlendirmesi Nasıl Ayarlanır

Grafik serileri, veri noktaları ve işaretçiler için dolgu ve kontur biçimlendirmesi ayarlanabilir. Bunu yapmak için [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) ve [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) sınıflarında [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) türünün özelliklerini, ayrıca [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) sınıfında [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) ve [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) gibi bazı özelliklerin takma adlarını kullanmanız gerekir.

Aşağıdaki kod örneği seri renginin nasıl ayarlanacağını gösterir:

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

Aşağıdaki kod örneği çizgi renginin ve kalınlığının nasıl ayarlanacağını gösterir:

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
