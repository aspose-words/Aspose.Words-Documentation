---
title: Cara Mengatur Properti Sumbu Bagan di C++
second_title: Aspose.Words untuk C++
articleTitle: Cara Mengatur Properti Sumbu Bagan
linktitle: Cara Mengatur Properti Sumbu Bagan
description: "Penyetelan sumbu bagan menggunakan C++."
type: docs
weight: 20
url: /id/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Jika Anda ingin bekerja dengan sumbu bagan, penskalaan, dan unit tampilan untuk sumbu nilai, gunakan kelas [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit), dan [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Contoh kode berikut menunjukkan cara menentukan properti sumbu X dan Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Cara Mengatur Nilai Tanggal-Waktu Sumbu

Contoh kode berikut menunjukkan cara mengatur nilai tanggal / waktu ke properti sumbu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Cara Memformat Nilai Bilangan Sumbu

Contoh kode berikut menunjukkan cara mengubah format angka pada sumbu nilai:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Cara Mengatur Batas Sumbu

Kelas `AxisBound` mewakili batas minimum atau maksimum dari nilai sumbu. Terikat dapat ditentukan sebagai nilai numerik, tanggal-waktu, atau "otomatis" khusus.

Contoh kode berikut menunjukkan cara mengatur batas sumbu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Cara Mengatur Satuan Interval Antar Label

Contoh kode berikut menunjukkan cara mengatur satuan interval antar label pada sumbu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Cara Menyembunyikan Sumbu Bagan

Jika Anda ingin menampilkan atau menyembunyikan sumbu bagan, Anda cukup mencapainya dengan menyetel nilai properti set_Hidden.

Contoh kode berikut menunjukkan cara menyembunyikan sumbu Y bagan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Cara Menyelaraskan Label Bagan

Jika Anda ingin menyetel perataan teks untuk label multi-baris, Anda cukup melakukannya dengan menyetel nilai properti [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). Contoh kode berikut menunjukkan cara mencentang perataan label.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
