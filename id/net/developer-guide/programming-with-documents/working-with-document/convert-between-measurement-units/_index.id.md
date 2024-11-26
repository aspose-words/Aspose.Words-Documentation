---
title: Konversi Antar Unit Pengukuran di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversi Antar Satuan Pengukuran
linktitle: Konversi Antar Satuan Pengukuran
description: "Aspose.Words untuk .NET dapat membantu Anda tentang cara mengkonversi antar satuan pengukuran, misalnya inci ke titik dan titik ke inci, piksel ke titik, titik ke piksel menggunakan C#."
type: docs
weight: 20
url: /id/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Sebagian besar properti objek yang disediakan di Aspose.Words API yang mewakili beberapa pengukuran, seperti lebar atau tinggi, margin, dan berbagai jarak, menerima nilai dalam poin, di mana 1 inci sama dengan 72 poin. Terkadang hal ini tidak nyaman dan poin perlu dikonversi ke unit lain.

Aspose.Words menyediakan kelas [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) yang menyediakan fungsi pembantu untuk mengkonversi berbagai unit pengukuran. Ini memungkinkan untuk mengkonversi:

- inci, piksel, dan milimeter ke titik
- menunjuk ke inci dan piksel
- piksel dari satu resolusi ke resolusi lainnya

Konversi piksel menjadi titik dan sebaliknya dapat dilakukan pada resolusi 96 dpi (dots per inch) atau resolusi dpi yang ditentukan.

Kelas **ConvertUtil** sangat berguna ketika mengatur berbagai properti halaman karena, misalnya, inci adalah satuan pengukuran yang lebih umum daripada titik.

Contoh kode berikut menunjukkan cara menentukan properti halaman dalam inci:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
