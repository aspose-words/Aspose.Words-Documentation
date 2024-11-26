---
title: Konversi Antar Unit Pengukuran dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Konversi Antar Unit Pengukuran
linktitle: Konversi Antar Unit Pengukuran
description: "Aspose.Words untuk C++ dapat membantu Anda dengan cara mengonversi antara satuan pengukuran, misalnya, inci ke titik dan titik ke inci, piksel ke titik, titik ke piksel."
type: docs
weight: 20
url: /id/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Sebagian besar properti objek yang disediakan dalam Aspose.Words API yang mewakili beberapa pengukuran, seperti lebar atau tinggi, margin, dan berbagai jarak, menerima nilai dalam poin, di mana 1 inci sama dengan 72 poin. Terkadang ini tidak nyaman dan poin perlu dikonversi ke unit lain.

Aspose.Words menyediakan kelas [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) yang menyediakan fungsi pembantu untuk mengonversi antara berbagai unit pengukuran. Ini memungkinkan konversi inci, piksel, dan milimeter ke titik, poin ke inci dan piksel, dan mengonversi piksel dari satu resolusi ke resolusi lainnya.Mengonversi piksel menjadi titik dan sebaliknya dapat dilakukan pada resolusi 96 dpi (titik per inci) atau resolusi dpi tertentu.

Kelas **ConvertUtil** sangat berguna saat mengatur berbagai properti halaman karena, misalnya, inci adalah satuan pengukuran yang lebih umum daripada titik.

Contoh kode berikut menunjukkan cara menentukan properti halaman dalam inci:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

