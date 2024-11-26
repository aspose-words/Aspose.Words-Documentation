---
title: Java'da Grafiklerle Çalışmak
second_title: Aspose.Words için Java
articleTitle: Çizelgelerle Çalışmak
linktitle: Çizelgelerle Çalışmak
description: "Çizelgeler Özelliğine Giriş, Java'i kullanarak grafiklerin nasıl oluşturulacağını ve manipüle edileceğini öğrenin."
type: docs
weight: 310
url: /tr/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Yeni [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) yöntemi sınıfın [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) içine eklendi. Öyleyse, basit bir sütun grafiğini belgenin içine **insertChart** yöntemini kullanarak eklemeyi nasıl yaparız bakalım.


## Aspose.Words kullanarak sıfırdan bir grafik nasıl eklenir?

Bu bölümde bir grafik bir belgedeki nasıl ekleneceğini öğreneceğiz.

###  Sütun Grafik Ekle

Aşağıdaki kod örneği sütun grafiği nasıl ekleneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Kod aşağıdaki sonucu üretir:

![column-chart-aspose-words-java-1](working-with-charts-7.png)

Bu tüm grafik türleri için veri kaynaklarının her olası varyantını kapsayacak şekilde ortaya çıkarılan seri Add yönteminin dört farklı aşırı yüklemesi vardı:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Kodun aşağıdaki sonucu ürettiği:

![column-chart-aspose-words-java-2](working-with-charts-8.png)

### Yayılımli Grafik Ekle

Aşağıdaki kod örneği bir dağılıma nasıl eklemenin yolunu gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Koda aşağıdaki sonuç üretilir:

![scutter-chart-aspose-words-java](working-with-charts-9.png)

### Area Çizelgesi Ekle

Aşağıdaki kod örneği bir alan grafiğinin nasıl ekleneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Kodu aşağıdaki sonucu üretiyor:

![area-chart-aspose-words-java](working-with-charts-10.png)

### İçe Kayan Kabarcık Grafiği

Aşağıdaki kod örneği bir balon grafiği ekleme gösteriyor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Kod aşağıdaki sonucu üretir:

![bubble-chart-aspose-words-java](working-with-charts-11.png)

## Çizelgelerle Çalışmak `Shape.Chart` Nesnesi aracılığıyla

Çizim tablosu veri ile doldurulduktan sonra görünümünü değiştirebilirsiniz. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) özelliği, API aracılığıyla mevcut olan tüm grafikle ilgili seçenekleri içerir.

Örneğin, "Chart başlığını veya efsanesi davranışını değiştirin":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Kod aşağıdaki sonuçları üretir:

![line-chart-aspose-words-java-1](working-with-charts-1.png)

## Çizim Serileri Koleksiyonu ile Çalışmak Nasıl Yapılır?

Şimdi baktığımız [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) koleksiyonuna bakalım. Tüm grafik serileri [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) koleksiyonu aracılığıyla mevcuttur ve **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Bir bir serileri kaldırabilir veya onları hepsini de temizleyebilir ve gerekirse yeni bir tane ekleyebilirsin. Yeni girilen grafik bu koleksiyona bazı varsayılan serileri ekler. Bunları kaldırmak için **chart.getSeries().clear()** yöntemini çağırman gerekir.

## Tek Bir ChartSeries Sınıfıyla Çalışma

İşte bir seri ile nasıl çalışılacağı.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Lütfen aşağıdaki sonucu gör:

![line-chart-aspose-words-java-2](working-with-charts-2.png)

Tüm tek [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)'lerin varsayılan [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) seçenekleri var, onları değiştirmek için aşağıdaki kodu deneyin lütfen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](working-with-charts-3.png)

## `ChartSeries` 'da Tek Bir ChartDataPoint ile Nasıl Çalışılır?

[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) kullanarak, grafik serisindeki tek bir veri noktasının biçimlendirmesini özelleştirebilirsiniz:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Aşağıdaki sonucu lütfen inceleyin:

![line-chart-aspose-words-java-4](working-with-charts-4.png)

## Tek Bir Çizgi Grafik Serisindeki Veri Etiketleriyle Nasıl Çalışılır

[ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) kullanarak grafik serisinde tek bir veri etiketinin biçimlendirmesini belirtme yeteneğiniz var, örneğin show/hide LegendKey, CategoryName, SeriesName, Value vb.:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Lütfen aşağıdaki sonucu gör.:

![bar-chart-aspose-words-java](working-with-charts-5.png)

## ChartSeries için Varsayılan Seçenekleri Nasıl Tanımlayın?

[ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) sınıfı varsayılan seçenekleri belirlemek için **ChartDataLabels** için Chart **Series**'i ayarlamak için kullanılabilecek özellikleri tanımlar. Bu özellikler setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue vb

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Lütfen aşağıdaki sonucu görünüz:

![pie-chart-aspose-words-java](working-with-charts-6.png)

## Şema Veri Etiketi Sayı Biçimlendirme Nasıl Yapılır

Kullanarak [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) özelliğini, çizelgedeki tek bir veri etiketi için sayı biçimlendirmesini belirtebilirsiniz.

Aşağıdaki kod örneği, veri etiketi numarasının nasıl biçimlendirileceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Çizelge Eksen Özelliklerini Nasıl Ayarlarsınız?

Değer ekseni için ölçekleme ve görüntüleme birimleriyle çalışmak istiyorsanız lütfen [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/) ve [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) sınıflarını kullanın.

Aşağıdaki kod örneği X ve Y ekseni özelliklerinin nasıl tanımlanacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Nasıl Date eksen zaman değeri ayarlayın

Aşağıdaki kod örneğinde tarih/saat değerlerini eksen özelliklerine ayarlamaya nasıl gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Axis'in Sayı Değerini Biçimlendirme Nasıl Yapılır?

Aşağıdaki kod örneği değer ekseni üzerindeki sayıların biçimini nasıl değiştireceğinizi gösterir:''

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### eksen için sınır nasıl ayarlanır

Sınıfı temsil `AxisBound` bir eksen değerleri için bir en az veya maksimum sınırdır. Sınır sayısal olarak, tarih saat veya özel "otomatik" değeri olarak belirtilebilir.

Aşağıdaki kod örneği bir eksen için sınırların nasıl ayarlanacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Etiket Arası Aralık Birimini Nasıl Ayarlayın

Aşağıdaki kod örneği bir eksen üzerindeki etiketlerin arasındaki aralık birimini nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Grafik Eksenini Nasıl Gizleyeceğiniz

Eğer bir grafiğin eksenini göstermek veya gizlemek istiyorsanız, bunu basitçe `ChartAxis.Hidden` özelliğinin değerini ayarlayarak başarabilirsiniz.

Aşağıdaki kod örneğinde grafiğin y eksenini gizlemek nasıl yapılır gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Nasıl Çizgi Grafiği Etiketini Hizalar?

Eğer birden fazla satır etiketleri için bir metin hizalaması ayarlamak istiyorsanız, bunu [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) özelliğinin değerini ayarlayarak basitçe elde edebilirsiniz.

Aşağıdaki kod örneği etiket hizalaması nasıl yapılır gösterdiğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word varsayılan olarak Grafik Etiketini ortalayacak şekilde hizalar.

{{% /alert %}}

## Doldurma ve Çizgi Biçimlendirme Nasıl Ayarlanır

Eşya ve vuruş formatlaması bir grafik serisi, veri noktaları ve işaretçiler için ayarlanabilir. Bunu yapmak için ChartSeries, ChartDataPoint ve ChartMarker sınıflarında `ChartFormat` türünün özelliklerini ve bazı özellikler için takma adlar, örneğin ForeColor, BackColor, Visible ve Transparency `Stroke` sınıfında kullanılmalıdır.

Aşağıdaki kod örneği serilerin rengini nasıl ayarlayacağını gösterir:

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

Aşağıdaki kod örneğinde satır rengini ve ağırlığını nasıl ayarlayacağını gösteriyor:

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
