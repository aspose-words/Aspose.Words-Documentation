---
title: Konversi Antara Satuan Pengukuran dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Konversi Antar Unit Pengukuran
linktitle: Konversi Antar Unit Pengukuran
description: "Aspose.Words untuk Java dapat membantu Anda dengan cara mengonversi antara satuan pengukuran, misalnya, inci ke titik dan titik ke inci, piksel ke titik, titik ke piksel."
type: docs
weight: 20
url: /id/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Sebagian besar properti objek yang disediakan dalam Aspose.Words API yang mewakili beberapa pengukuran, seperti lebar atau tinggi, margin, dan berbagai jarak, menerima nilai dalam poin, di mana 1 inci sama dengan 72 poin. Terkadang ini tidak nyaman dan poin perlu dikonversi ke unit lain.

Aspose.Words menyediakan kelas [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) yang menyediakan fungsi pembantu untuk mengonversi antara berbagai unit pengukuran. Ini memungkinkan konversi inci, piksel, dan milimeter ke titik, poin ke inci dan piksel, dan mengonversi piksel dari satu resolusi ke resolusi lainnya.Mengonversi piksel menjadi titik dan sebaliknya dapat dilakukan pada resolusi 96 dpi (titik per inci) atau resolusi dpi tertentu.

Kelas **ConvertUtil** sangat berguna saat mengatur berbagai properti halaman karena, misalnya, inci adalah satuan pengukuran yang lebih umum daripada titik.

Contoh kode berikut menunjukkan cara menentukan properti halaman dalam inci:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
