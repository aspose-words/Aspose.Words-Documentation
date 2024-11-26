---
title: Aktifkan Fitur OpenType di Java
second_title: Aspose.Words untuk Java
articleTitle: Aktifkan Fitur OpenType
linktitle: Aktifkan Fitur OpenType
description: "Fitur tipografi tingkat lanjut dalam Aspose.Words untuk Java."
type: docs
weight: 25
url: /id/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType adalah format font, diperkenalkan untuk memberikan dukungan yang lebih baik untuk bahasa internasional dan sistem penulisan dibandingkan dengan PostScript dan TrueType. Fitur tata letak OpenType umumnya dikenal sebagai fitur OpenType. Aspose.Words.Membentuk.paket HarfBuzz menyediakan dukungan untuk fitur OpenType di Aspose.Words menggunakan mesin pembentuk teks `HarfBuzz`.

Aspose.Words mampu menggunakan objek pembentuk teks yang disediakan secara eksternal. Pembentuk teks mewakili font dan menghitung informasi pembentukan untuk sebuah teks. Sebuah dokumen biasanya mengacu pada banyak font sehingga diperlukan pabrik pembentuk teks. Paket ini berisi implementasi pabrik pembentuk teks yang digunakan oleh Aspose.Words.Tata letak.LayoutOptions.TextShaperFactory properti.

{{% alert color="primary" %}}

Pembentukan teks hanya dilakukan saat mengekspor ke format PDF atau XPS.

{{% /alert %}}

Dalam aplikasi tipikal, satu instance dari pabrik pembentuk teks dibagikan di antara semua instance dokumen. Setiap kali pembentuk teks dibuat, file font diakses. Mengurai file font adalah operasi yang mahal sehingga disarankan untuk melakukan caching. Aspose.Words mengimplementasikan kelas BasicTextShaperCache yang membungkus implementasi pabrik pembentuk teks dan menyimpan instance pembentuk teks yang dikembalikan oleh pabrik yang dibungkus.

Contoh kode berikut menunjukkan cara mengaktifkan dukungan fitur OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
