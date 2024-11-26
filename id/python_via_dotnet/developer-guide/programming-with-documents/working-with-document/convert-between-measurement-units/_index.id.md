---
title: Konversi Antar Satuan Pengukuran
second_title: Aspose.Words untuk Python via .NET
articleTitle: Konversi Antar Satuan Pengukuran
linktitle: Konversi Antar Satuan Pengukuran
description: "Aspose.Words untuk Python via .NET dapat membantu Anda tentang cara mengkonversi antar satuan pengukuran, misalnya inci ke titik dan titik ke inci, piksel ke titik, titik ke piksel."
type: docs
weight: 20
url: /id/python-net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Sebagian besar properti objek yang disediakan di Aspose.Words API yang mewakili beberapa pengukuran, seperti lebar atau tinggi, margin, dan berbagai jarak, menerima nilai dalam poin, di mana 1 inci sama dengan 72 poin. Terkadang hal ini tidak nyaman dan poin perlu dikonversi ke unit lain.

Aspose.Words menyediakan kelas [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) yang menyediakan fungsi pembantu untuk mengkonversi berbagai unit pengukuran. Ini memungkinkan konversi inci, piksel, dan milimeter menjadi titik, titik menjadi inci dan piksel, dan mengonversi piksel dari satu resolusi ke resolusi lainnya. Konversi piksel menjadi titik dan sebaliknya dapat dilakukan pada resolusi 96 dpi (dots per inch) atau resolusi dpi yang ditentukan.

Kelas [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) sangat berguna ketika mengatur berbagai properti halaman karena, misalnya, inci adalah satuan pengukuran yang lebih umum daripada titik.

Contoh kode berikut menunjukkan cara menentukan properti halaman dalam inci:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
