---
title: Bekerja dengan Grafik di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Grafik
linktitle: Bekerja dengan Grafik
description: "Pengenalan fitur Chart, cara membuat dan memanipulasi chart menggunakan C#."
type: docs
weight: 310
url: /id/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Metode [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) baru telah ditambahkan ke kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Jadi, mari kita lihat cara menyisipkan bagan kolom sederhana ke dalam dokumen menggunakan metode [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/).

## Cara Menyisipkan Bagan

Di bagian ini kita akan mempelajari cara menyisipkan bagan ke dalam dokumen.

### Sisipkan Bagan Kolom

Contoh kode berikut menunjukkan cara menyisipkan bagan kolom:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Kode menghasilkan hasil sebagai berikut:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Ada empat kelebihan berbeda untuk metode Seri Tambahkan, yang diekspos untuk mencakup semua kemungkinan varian sumber data untuk semua jenis bagan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Kode menghasilkan hasil sebagai berikut:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Sisipkan Bagan Sebar

Contoh kode berikut menunjukkan cara menyisipkan diagram sebar:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Kode menghasilkan hasil sebagai berikut:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Sisipkan Bagan Area

Contoh kode berikut menunjukkan cara menyisipkan diagram area:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Kode menghasilkan hasil sebagai berikut:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Sisipkan Bagan Gelembung

Contoh kode berikut menunjukkan cara menyisipkan diagram gelembung:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Kode menghasilkan hasil sebagai berikut:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Bekerja dengan Grafik melalui Objek `Shape.Chart`

Setelah bagan disisipkan dan diisi dengan data, Anda dapat mengubah tampilannya. Properti `Shape.Chart` berisi semua opsi terkait bagan yang tersedia melalui API publik.

Misalnya, mari kita ubah perilaku judul atau legenda Bagan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Kode menghasilkan hasil berikut:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Cara Bekerja dengan ChartSeriesCollection of Chart

Mari kita lihat koleksi [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/). Semua seri grafik tersedia melalui koleksi [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/), yaitu **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Anda dapat menghapus rangkaian satu per satu atau menghapus semuanya serta menambahkan yang baru jika diperlukan. Bagan yang baru disisipkan memiliki beberapa rangkaian default yang ditambahkan ke koleksi ini. Untuk menghapusnya, Anda perlu memanggil metode **bagan.Seri.Hapus()**.

## Bekerja dengan Kelas Single ChartSeries

Berikut cara bekerja dengan seri tertentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Semua [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) tunggal memiliki opsi [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) default, coba gunakan kode berikut untuk mengubahnya:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Cara Bekerja dengan ChartDataPoint Tunggal dari `ChartSeries`

Dengan menggunakan [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) Anda dapat menyesuaikan format satu titik data dari rangkaian bagan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Cara Bekerja dengan ChartDataLabel dari Single ChartSeries

Dengan menggunakan [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) Anda dapat menentukan format label data tunggal dari rangkaian bagan, seperti tampilkan/sembunyikan LegendKey, Nama Kategori, Nama Seri, Nilai, dll:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Silakan lihat hasilnya di bawah ini:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Cara Menentukan Opsi Default untuk ChartDataLabels dari ChartSeries

Kelas [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) mendefinisikan properti yang dapat digunakan untuk mengatur opsi default untuk **ChartDataLabels** untuk Chart **Series**. Properti ini mencakup ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue, dll:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Silakan lihat hasilnya di bawah ini:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Cara Memformat Jumlah Label Data Bagan

Dengan menggunakan [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) Anda dapat menentukan format nomor dari satu label data pada bagan.

Contoh kode berikut menunjukkan cara memformat sejumlah label data:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Cara Mengatur Properti Sumbu Bagan

Jika Anda ingin bekerja dengan sumbu bagan, penskalaan, dan unit tampilan untuk sumbu nilai, silakan gunakan kelas [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), dan [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/).

Contoh kode berikut menunjukkan cara mendefinisikan properti sumbu X dan Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Cara Menetapkan Nilai Waktu Date dari Sumbu

Contoh kode berikut menunjukkan cara mengatur nilai tanggal/waktu ke properti sumbu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Cara Memformat Nilai Angka Sumbu

Contoh kode berikut menunjukkan cara mengubah format angka pada sumbu nilai:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Cara Menetapkan Batas Sumbu

Kelas `AxisBound` mewakili batas nilai sumbu minimum atau maksimum. Terikat dapat ditentukan sebagai nilai numerik, tanggal-waktu, atau nilai "otomatis" khusus.

Contoh kode berikut menunjukkan cara menetapkan batas sumbu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Cara Mengatur Satuan Interval Antar Label

Contoh kode berikut menunjukkan cara mengatur satuan interval antar label pada sumbu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Cara Menyembunyikan Sumbu Grafik

Jika Anda ingin menampilkan atau menyembunyikan sumbu grafik, Anda dapat melakukannya dengan mengatur nilai properti `ChartAxis.Hidden`.

Contoh kode berikut menunjukkan cara menyembunyikan sumbu Y pada bagan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Cara Menyelaraskan Label Bagan

Jika Anda ingin menyetel perataan teks untuk label multi-baris, Anda dapat melakukannya dengan menyetel nilai properti [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Alignment**.

Contoh kode berikut menunjukkan cara mencentang perataan label:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word menyelaraskan Label Bagan ke tengah secara default.

{{% /alert %}}

## Cara Mengatur Format Isian dan Goresan

Format isian dan guratan dapat diatur untuk rangkaian bagan, titik data, dan penanda. Untuk melakukannya, Anda perlu menggunakan properti tipe **ChartFormat** di kelas **ChartSeries**, **ChartDataPoint**, dan **ChartMarker**, serta alias untuk beberapa properti, seperti ForeColor, BackColor, Visible, dan Transparency di kelas `Stroke`.

Contoh kode berikut menunjukkan cara mengatur warna rangkaian:

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

Contoh kode berikut menunjukkan cara mengatur warna dan ketebalan garis:

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
