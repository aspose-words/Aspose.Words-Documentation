---
title: C#'te Grafiklerle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Grafiklerle Çalışmak
linktitle: Grafiklerle Çalışmak
description: "Grafik özelliğine giriş, C# kullanarak grafiklerin nasıl oluşturulacağı ve değiştirileceği."
type: docs
weight: 310
url: /tr/net/working-with-charts/
---

[DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) sınıfına yeni [InsertChart](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertchart/) yöntemi eklendi. Şimdi [InsertChart](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertchart/) yöntemini kullanarak belgeye basit bir sütun grafiğinin nasıl ekleneceğini görelim.

## Grafik Nasıl Eklenir

Bu bölümde bir belgeye nasıl grafik ekleyeceğimizi öğreneceğiz.

### Sütun Grafiği Ekle

Aşağıdaki kod örneği, sütun grafiğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Kod aşağıdaki sonucu üretir:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Tüm grafik türleri için veri kaynaklarının tüm olası varyantlarını kapsadığı açıklanan Seri Ekleme yöntemi için dört farklı aşırı yükleme vardır:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Kod aşağıdaki sonucu üretir:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Dağılım Grafiği Ekle

Aşağıdaki kod örneği dağılım grafiğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Kod aşağıdaki sonucu üretir:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Alan Grafiği Ekle

Aşağıdaki kod örneği alan grafiğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Kod aşağıdaki sonucu üretir:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Kabarcık Grafiği Ekle

Aşağıdaki kod örneği, kabarcık grafiğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Kod aşağıdaki sonucu üretir:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## `Shape.Chart` Nesnesi Aracılığıyla Grafiklerle Çalışmak

Grafik eklenip verilerle doldurulduktan sonra görünümünü değiştirebilirsiniz. `Shape.Chart` özelliği, genel API aracılığıyla kullanılabilen grafikle ilgili tüm seçenekleri içerir.

Örneğin, Grafik başlığını veya açıklama davranışını değiştirelim:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Kod aşağıdaki sonuçları üretir:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## ChartSeriesCollection of Chart ile Nasıl Çalışılır

[ChartSeries](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartseries/) koleksiyonuna bakalım. Tüm grafik serilerine **IEnumerable** olan [chart.Series](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chart/series/) koleksiyonu aracılığıyla ulaşılabilir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Serileri tek tek kaldırabileceğiniz gibi hepsini temizleyebileceğiniz gibi, ihtiyaç halinde yeni bir seri de ekleyebilirsiniz. Yeni eklenen grafikte bu koleksiyona eklenen bazı varsayılan seriler var. Bunları kaldırmak için **chart.Series.Clear()** yöntemini çağırmanız gerekir.

## Tek ChartSeries Sınıfıyla Çalışmak

Belirli bir seriyle nasıl çalışılacağı aşağıda açıklanmıştır:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Lütfen aşağıdaki sonuca bakın:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Tüm tek [ChartSeries](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartseries/)'lerin varsayılan [ChartDataPoint](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartdatapoint/) seçenekleri vardır; bunları değiştirmek için lütfen aşağıdaki kodu kullanmayı deneyin:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Lütfen aşağıdaki sonuca bakın:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## `ChartSeries`'in Tek ChartDataPoint'iyle Nasıl Çalışılır?

[ChartDataPoint](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartdatapoint/)'i kullanarak grafik serisinin tek bir veri noktasının formatını özelleştirebilirsiniz:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Lütfen aşağıdaki sonuca bakın:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Tek bir ChartSeries'in ChartDataLabel'ı ile Nasıl Çalışılır?

[ChartDataLabel](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartdatalabel/)'i kullanarak, grafik serisinin tek bir veri etiketinin formatını, LegendKey'i göster/gizle, KategoriAdı, SeriAdı, Değer vb. gibi belirtebilirsiniz:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Lütfen aşağıdaki sonuca bakın:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## ChartSeries'in ChartDataLabels'ı için Varsayılan Seçenekler Nasıl Tanımlanır?

[ChartDataLabelCollection](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartdatalabelcollection/) sınıfı, Grafik **Series** için **ChartDataLabels**'ye ilişkin varsayılan seçenekleri ayarlamak için kullanılabilecek özellikleri tanımlar. Bu özellikler arasında ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue vb. bulunur:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Lütfen aşağıdaki sonuca bakın:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Grafik Veri Etiketi Sayısı Nasıl Biçimlendirilir

[NumberFormat](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartdatalabel/numberformat/)'i kullanarak grafiğin tek bir veri etiketinin sayı formatını belirleyebilirsiniz.

Aşağıdaki kod örneği, bir dizi veri etiketinin nasıl biçimlendirileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Grafik Ekseni Özellikleri Nasıl Ayarlanır

Değer ekseni için grafik ekseni, ölçeklendirme ve görüntüleme birimleriyle çalışmak istiyorsanız lütfen [ChartAxis](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/axisdisplayunit/) ve [AxisScaling](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/axisscaling/) sınıflarını kullanın.

Aşağıdaki kod örneği, X ve Y ekseni özelliklerinin nasıl tanımlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Eksenin Date Zaman Değeri Nasıl Ayarlanır

Aşağıdaki kod örneği, tarih/saat değerlerinin eksen özelliklerine nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Eksenin Sayı Değeri Nasıl Formatlanır?

Aşağıdaki kod örneği, değer eksenindeki sayıların biçiminin nasıl değiştirileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Eksen Sınırları Nasıl Ayarlanır

`AxisBound` sınıfı, eksen değerlerinin minimum veya maksimum sınırını temsil eder. Sınır; sayısal, tarih-saat veya özel bir "otomatik" değer olarak belirtilebilir.

Aşağıdaki kod örneği, bir eksenin sınırlarının nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Etiketler Arasındaki Aralık Birimi Nasıl Ayarlanır

Aşağıdaki kod örneği, bir eksendeki etiketler arasındaki aralık biriminin nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Grafik Eksenini Gizleme

Grafik eksenini göstermek veya gizlemek istiyorsanız bunu `ChartAxis.Hidden` özelliğinin değerini ayarlayarak kolayca yapabilirsiniz.

Aşağıdaki kod örneği, grafiğin Y ekseninin nasıl gizleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Grafik Etiketi Nasıl Hizalanır?

Çok satırlı etiketler için metin hizalamasını ayarlamak istiyorsanız bunu [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Alignment** özelliğinin değerini ayarlayarak kolayca yapabilirsiniz.

Aşağıdaki kod örneği, etiket hizalamasının nasıl işaretleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word, Grafik Etiketini varsayılan olarak merkeze hizalar.

{{% /alert %}}

## Dolgu ve Kontur Biçimlendirmesi Nasıl Ayarlanır

Grafik serileri, veri noktaları ve işaretçiler için dolgu ve kontur biçimlendirmesi ayarlanabilir. Bunu yapmak için **ChartSeries**, **ChartDataPoint** ve **ChartMarker** sınıflarında **ChartFormat** türünün özelliklerini, ayrıca `Stroke` sınıfında ForeColor, BackColor, Visible ve Transparency gibi bazı özelliklerin takma adlarını kullanmanız gerekir.

Aşağıdaki kod örneği seri renginin nasıl ayarlanacağını gösterir:

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

Aşağıdaki kod örneği çizgi renginin ve kalınlığının nasıl ayarlanacağını gösterir:

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
