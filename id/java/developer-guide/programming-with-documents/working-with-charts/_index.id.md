---
title: Bekerja dengan Bagan dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Bagan
linktitle: Bekerja dengan Bagan
description: "Pengantar fitur Bagan, cara membuat dan memanipulasi bagan menggunakan Java."
type: docs
weight: 310
url: /id/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Metode [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) baru telah ditambahkan ke dalam kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Jadi, mari kita lihat cara menyisipkan bagan kolom sederhana ke dalam dokumen menggunakan metode **insertChart**.


## Cara Menyisipkan Bagan dari Awal menggunakan Aspose.Words

Di bagian ini kita akan mempelajari cara menyisipkan bagan ke dalam dokumen.

###  Sisipkan Bagan Kolom

Contoh kode berikut menunjukkan cara menyisipkan bagan kolom:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Kode menghasilkan hasil sebagai berikut:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

Ada empat kelebihan yang berbeda untuk metode Penambahan seri, yang diekspos untuk mencakup semua kemungkinan varian sumber data untuk semua jenis bagan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Kode menghasilkan hasil sebagai berikut:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### Sisipkan Bagan Sebar

Contoh kode berikut menunjukkan cara menyisipkan bagan sebar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Kode menghasilkan hasil sebagai berikut:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### Sisipkan Bagan Area

Contoh kode berikut menunjukkan cara menyisipkan bagan area:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Kode menghasilkan hasil sebagai berikut:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### Sisipkan Bagan Gelembung

Contoh kode berikut menunjukkan cara menyisipkan bagan gelembung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Kode menghasilkan hasil sebagai berikut:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## Bekerja dengan Bagan melalui Objek `Shape.Chart`

Setelah bagan disisipkan dan diisi dengan data, Anda dapat mengubah tampilannya. properti [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) berisi semua opsi terkait bagan yang tersedia melalui publik API.

Misalnya, mari kita ubah judul Bagan atau perilaku legenda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Kode tersebut menghasilkan hasil sebagai berikut:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## Cara Bekerja dengan ChartSeriesCollection Bagan

Mari kita lihat koleksi [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/). Semua rangkaian bagan tersedia melalui koleksi [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), yaitu **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Anda dapat menghapus seri satu per satu atau menghapus semuanya serta menambahkan yang baru jika diperlukan. Bagan yang baru disisipkan memiliki beberapa rangkaian default yang ditambahkan ke koleksi ini. Untuk menghapusnya, Anda perlu memanggil metode **chart.getSeries().clear()**.

## Bekerja dengan Kelas ChartSeries Tunggal

Berikut adalah cara bekerja dengan seri tertentu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

Semua [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) tunggal memiliki opsi [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) default, coba gunakan kode berikut untuk mengubahnya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Cara Bekerja dengan ChartDataPoint Tunggal dari `ChartSeries`

Menggunakan [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) Anda dapat menyesuaikan pemformatan satu titik data dari rangkaian bagan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## Cara Bekerja dengan ChartDataLabel dari Satu ChartSeries

Menggunakan [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) Anda dapat menentukan pemformatan label data tunggal dari rangkaian bagan, seperti tampilkan / sembunyikan LegendKey, CategoryName, SeriesName, Nilai dll:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Silakan lihat hasilnya di bawah ini:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## Cara Menentukan Opsi Default untuk ChartDataLabelsdari ChartSeries

Kelas [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) mendefinisikan properti yang dapat digunakan untuk menyetel opsi default untuk **ChartDataLabels** untuk Bagan **Series**. Properti ini meliputi setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue dll:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Silakan lihat hasilnya di bawah ini:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## Cara Memformat Jumlah Label Data Bagan

Dengan menggunakan properti [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), Anda dapat menentukan pemformatan angka dari satu label data bagan.

Contoh kode berikut menunjukkan cara memformat sejumlah label data:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Cara Mengatur Properti Sumbu Bagan

Jika Anda ingin bekerja dengan sumbu bagan, penskalaan, dan unit tampilan untuk sumbu nilai, gunakan kelas [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), dan [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

Contoh kode berikut menunjukkan cara menentukan properti sumbu X dan Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Cara Mengatur Nilai DateTime dari Sumbu

Contoh kode berikut menunjukkan cara mengatur nilai tanggal / waktu ke properti sumbu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Cara Memformat Nilai Bilangan Sumbu

Contoh kode berikut menunjukkan cara mengubah format angka pada sumbu nilai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Cara Mengatur Batas Sumbu

Kelas `AxisBound` mewakili batas minimum atau maksimum dari nilai sumbu. Terikat dapat ditentukan sebagai nilai numerik, tanggal-waktu, atau "otomatis" khusus.

Contoh kode berikut menunjukkan cara mengatur batas sumbu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Cara Mengatur Satuan Interval Antar Label

Contoh kode berikut menunjukkan cara mengatur satuan interval antar label pada sumbu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Cara Menyembunyikan Sumbu Bagan

Jika Anda ingin menampilkan atau menyembunyikan sumbu bagan, Anda cukup mencapainya dengan menyetel properti value of `ChartAxis.Hidden`.

Contoh kode berikut menunjukkan cara menyembunyikan sumbu Y bagan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Cara Menyelaraskan Label Bagan

Jika Anda ingin menyetel perataan teks untuk label multi-baris, Anda cukup melakukannya dengan menyetel properti value of [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

Contoh kode berikut menunjukkan cara mencentang perataan label:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word menyelaraskan Label Bagan ke tengah secara default.

{{% /alert %}}

## Cara Mengatur Pemformatan Isian dan Guratan

Pemformatan isian dan guratan dapat diatur untuk deret bagan, titik data, dan penanda. Untuk melakukannya, Anda perlu menggunakan properti dari tipe `ChartFormat` di kelas ChartSeries, ChartDataPoint, dan ChartMarker, serta alias untuk beberapa properti, seperti ForeColor, BackColor, Visible, dan Transparency di kelas `Stroke`.

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

Contoh kode berikut menunjukkan cara mengatur warna dan berat garis:

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
