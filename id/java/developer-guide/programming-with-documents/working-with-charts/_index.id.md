---
title: Bekerja dengan Charts di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Charts
linktitle: Bekerja dengan Charts
description: "Pengantar fitur Chart, cara membuat dan memanipulasi grafik menggunakan JavaSitemap"
type: docs
weight: 310
url: /id/java/working-with-charts/
---

Login [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) metode ditambahkan ke dalam [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Sitemap Jadi, mari kita lihat cara memasukkan grafik kolom sederhana ke dalam dokumen menggunakan **Login Login** Login


## Cara Masukkan Chart dari Scratch menggunakan Aspose.Words

Di bagian ini kita akan belajar cara memasukkan grafik ke dalam dokumen.

###  Masukkan Chart Kolom

Contoh kode berikut menunjukkan cara memasukkan grafik kolom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Kode menghasilkan hasil berikut:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Ada empat kelebihan beban yang berbeda untuk seri Tambahkan metode, yang terpapar untuk menutupi semua kemungkinan varian sumber data untuk semua jenis grafik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Kode menghasilkan hasil berikut:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Masukkan Scatter Login

Contoh kode berikut menunjukkan cara memasukkan grafik scatter:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Kode menghasilkan hasil berikut:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Masukkan Area Login

Contoh kode berikut menunjukkan cara memasukkan grafik area:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Kode menghasilkan hasil berikut:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Masukkan Grafik Bubble

Contoh kode berikut menunjukkan cara memasukkan grafik gelembung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Kode menghasilkan hasil berikut:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Bekerja dengan Charts melalui `Shape.Chart` Sitemap

Setelah grafik dimasukkan dan diisi dengan data, Anda dapat mengubah penampilannya. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) properti mengandung semua pilihan terkait grafik yang tersedia melalui publik APISitemap

Misalnya, mari kita ubah Judul grafik atau perilaku legenda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Kode menghasilkan hasil berikut:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Cara Kerja dengan ChartSeriesCollection of Chart

Mari kita lihat [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) Sitemap Semua seri grafik tersedia melalui [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) koleksi, yang **Iterable**Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Anda dapat menghapus seri satu atau menghapus semua dari mereka serta menambahkan yang baru jika diperlukan. Grafik yang baru dimasukkan memiliki beberapa seri default ditambahkan ke koleksi ini. Untuk menghapusnya Anda perlu memanggil Meme it **grafik.getSeries().clear()** Login

## Bekerja dengan Kelas ChartSeries Tunggal

Berikut ini cara bekerja dengan seri tertentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Sitemap [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) Sitemap [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) opsi, coba gunakan kode berikut untuk mengubahnya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Cara Bekerja dengan Single ChartDataPoint of a `ChartSeries`

Sitemap [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Anda dapat menyesuaikan format satu titik data dari seri grafik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Cara Kerja dengan ChartDataLabel dari Single ChartSeries

Sitemap [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) Anda dapat menentukan format satu label data dari seri grafik, seperti show/hide LegendKey, CategoryName, SeriesName, Nilai dll:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Silakan lihat hasilnya di bawah ini:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Cara Define Opsi Default untuk ChartDataLabels of ChartSeries

Login [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) mendefinisikan properti kelas yang dapat digunakan untuk mengatur opsi default untuk **ChartDataLabels** Grafik **Series**Sitemap Properti ini termasuk setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShow Nilai dll:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Silakan lihat hasilnya di bawah ini:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Cara Format Jumlah Label Data Chart

Menggunakan [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) properti, Anda dapat menentukan format jumlah label data tunggal dari grafik.

Contoh kode berikut menunjukkan cara memformat sejumlah label data:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Cara Mengatur Properti Axis Chart

Jika Anda ingin bekerja dengan sumbu grafik, scaling, dan unit display untuk sumbu nilai, silakan gunakan [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), Login [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) kelas.

Contoh kode berikut menunjukkan bagaimana mendefinisikan sifat sumbu X dan Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Cara Mengatur DateNilai Waktu Axis

Contoh kode berikut menunjukkan cara mengatur nilai tanggal / waktu ke properti sumbu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Bagaimana untuk Format Nilai Jumlah Axis

Contoh kode berikut menunjukkan cara mengubah format angka pada sumbu nilai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Cara Mengatur Luka Axis

Login `AxisBound` kelas mewakili batas minimum atau maksimum nilai sumbu. Bound dapat ditentukan sebagai nilai numerik, tanggal atau "auto" khusus.

Contoh kode berikut menunjukkan cara mengatur batas sumbu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Cara Mengatur Unit Interval Antara Label

Contoh kode berikut menunjukkan cara mengatur unit interval antara label pada sumbu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Bagaimana untuk menyembunyikan Axis Bagan

Jika Anda ingin menunjukkan atau menyembunyikan sumbu grafik, Anda hanya dapat mencapai ini dengan menetapkan nilai `ChartAxis.Hidden` Login

Contoh kode berikut menunjukkan cara menyembunyikan sumbu Y dari grafik:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Cara Align Chart Label

Jika Anda ingin mengatur penyelarasan teks untuk label multi-line, Anda hanya dapat mencapai ini dengan menetapkan nilai [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) Login

Contoh kode berikut menunjukkan cara mencentang penyelarasan label:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word Login Label Grafik ke pusat secara default.

{{% /alert %}}

## Cara Mengatur Format Isi dan Stroke

Isi dan format stroke dapat diatur untuk seri grafik, poin data, dan penanda. Untuk melakukan ini, Anda perlu menggunakan sifat `ChartFormat` jenis di ChartSeries, ChartDataPoint, dan ChartMarker kelas, serta alias untuk beberapa properti, seperti ForeColor, BackColor, Visible, dan Transparansi dalam `Stroke` Sitemap

Contoh kode berikut menunjukkan cara mengatur warna seri:

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

Contoh kode berikut menunjukkan cara mengatur warna garis dan berat:

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
