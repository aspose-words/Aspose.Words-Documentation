---
title: Bekerja dengan Grafik di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Grafik
linktitle: Bekerja dengan Grafik
description: "Membuat dan memodifikasi berbagai jenis bagan dalam dokumen menggunakan Python."
type: docs
weight: 310
url: /id/python-net/working-with-charts/
---

Metode [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) baru telah ditambahkan ke kelas [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Jadi, mari kita lihat cara menyisipkan bagan kolom sederhana ke dalam dokumen menggunakan metode [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Cara Menyisipkan Bagan

Di bagian ini kita akan mempelajari cara menyisipkan bagan ke dalam dokumen.

### Sisipkan Bagan Kolom

Contoh kode berikut menunjukkan cara menyisipkan bagan kolom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Kode menghasilkan hasil sebagai berikut:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Ada metode [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) dan [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/), yang dipaparkan untuk mencakup semua kemungkinan varian sumber data untuk semua jenis bagan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Kode menghasilkan hasil sebagai berikut:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Sisipkan Bagan Sebar

Contoh di bawah ini menunjukkan cara menyisipkan diagram sebar.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Kode menghasilkan hasil sebagai berikut:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Sisipkan Bagan Area

Contoh kode berikut menunjukkan cara menyisipkan diagram area:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Kode menghasilkan hasil sebagai berikut:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Sisipkan Bagan Gelembung

Contoh kode berikut menunjukkan cara menyisipkan diagram gelembung:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Kode menghasilkan hasil sebagai berikut:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Bekerja dengan Bagan melalui Objek Shape.chart

Setelah bagan disisipkan dan diisi dengan data, Anda dapat mengubah tampilannya. Properti [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) berisi semua opsi terkait bagan yang tersedia melalui API publik.

Misalnya, mari kita ubah perilaku judul atau legenda [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Kode menghasilkan hasil berikut:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Cara Bekerja dengan ChartSeriesCollection of Chart

Mari kita lihat koleksi [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Semua seri grafik tersedia melalui koleksi [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Anda dapat menghapus rangkaian satu per satu atau menghapus semuanya serta menambahkan yang baru jika diperlukan. Bagan yang baru disisipkan memiliki beberapa rangkaian default yang ditambahkan ke koleksi ini. Untuk menghapusnya, Anda perlu memanggil metode [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Bekerja dengan Kelas Single ChartSeries

Inilah cara bekerja dengan seri tertentu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Semua [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) tunggal memiliki opsi [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) default, coba gunakan kode berikut untuk mengubahnya:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Cara Bekerja dengan ChartDataPoint Tunggal dari `ChartSeries`

Dengan menggunakan [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) Anda dapat menyesuaikan format satu titik data dari rangkaian bagan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Silakan lihat hasilnya di bawah ini:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Cara Bekerja dengan ChartDataLabel dari Single ChartSeries

Dengan menggunakan [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) Anda dapat menentukan format label data tunggal dari rangkaian bagan, seperti tampilkan/sembunyikan LegendKey, Nama Kategori, Nama Seri, Nilai, dll.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Silakan lihat hasilnya di bawah ini:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Cara Menentukan Opsi Default untuk ChartDataLabels dari ChartSeries

Kelas [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) mendefinisikan properti yang dapat digunakan untuk mengatur opsi default untuk [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) untuk Seri Bagan. Properti ini termasuk [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) dll.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Silakan lihat hasilnya di bawah ini:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Cara Memformat Jumlah Label Data Bagan

Dengan menggunakan [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) Anda dapat menentukan format angka dari satu label data pada bagan.

Contoh kode berikut menunjukkan cara memformat sejumlah label data:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Cara Mengatur Properti Sumbu Bagan

Jika Anda ingin bekerja dengan sumbu bagan, penskalaan, dan unit tampilan untuk sumbu nilai, silakan gunakan kelas [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), dan [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

Contoh kode berikut menunjukkan cara mendefinisikan properti sumbu X dan Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Cara Menetapkan Nilai Waktu Date dari Sumbu

Contoh kode berikut menunjukkan cara mengatur nilai tanggal/waktu ke properti sumbu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Cara Memformat Nilai Angka Sumbu

Contoh kode berikut menunjukkan cara mengubah format angka pada sumbu nilai:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Cara Menetapkan Batas Sumbu

Kelas [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) mewakili batas nilai sumbu minimum atau maksimum. Terikat dapat ditentukan sebagai nilai numerik, tanggal-waktu, atau nilai "otomatis" khusus.

Contoh kode berikut menunjukkan cara menetapkan batas sumbu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Cara Mengatur Satuan Interval Antar Label

Contoh kode berikut menunjukkan cara mengatur satuan interval antar label pada sumbu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Cara Menyembunyikan Sumbu Grafik

Jika Anda ingin menampilkan atau menyembunyikan sumbu grafik, Anda dapat melakukannya dengan mengatur nilai properti [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

Contoh kode berikut menunjukkan cara menyembunyikan sumbu Y pada bagan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Cara Menyelaraskan Label Bagan

Jika Anda ingin menyetel perataan teks untuk label multi-baris, Anda cukup melakukannya dengan menyetel nilai properti [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

Contoh kode berikut menunjukkan cara mencentang perataan label:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word menyelaraskan Label Bagan ke tengah secara default.

{{% /alert %}}

## Cara Mengatur Format Isian dan Goresan

Format isian dan guratan dapat diatur untuk rangkaian bagan, titik data, dan penanda. Untuk melakukannya, Anda perlu menggunakan properti tipe [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) di kelas [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), dan [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), serta alias untuk beberapa properti, seperti [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/), dan [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) di kelas [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

Contoh kode berikut menunjukkan cara mengatur warna rangkaian:

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

Contoh kode berikut menunjukkan cara mengatur warna dan ketebalan garis:

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
