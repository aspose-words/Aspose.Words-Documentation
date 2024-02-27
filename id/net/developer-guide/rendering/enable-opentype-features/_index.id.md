---
title: Aktifkan Fitur OpenType di C#
second_title: Aspose.Words untuk .NET
articleTitle: Aktifkan Fitur OpenType
linktitle: Aktifkan Fitur OpenType
description: "Fitur tipografi tingkat lanjut menggunakan C#."
type: docs
weight: 25
url: /id/net/enable-opentype-features/
---

OpenType adalah format font, diperkenalkan untuk memberikan dukungan yang lebih baik untuk bahasa internasional dan sistem penulisan dibandingkan dengan PostScript dan TrueType. Fitur tata letak OpenType umumnya dikenal sebagai fitur OpenType. Paket Aspose.Words.Shaping.HarfBuzz menyediakan dukungan untuk fitur OpenType di Aspose.Words menggunakan mesin pembentuk teks HarfBuzz.

Aspose.Words mampu menggunakan objek pembentuk teks yang disediakan secara eksternal. Pembentuk teks mewakili font dan menghitung informasi pembentukan teks. Sebuah dokumen biasanya mengacu pada banyak font sehingga diperlukan pabrik pembentuk teks. Paket ini berisi implementasi pabrik pembentuk teks yang digunakan oleh properti Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

Pembentukan teks hanya dilakukan saat mengekspor ke format PDF atau XPS.

{{% /alert %}}

Dalam aplikasi tipikal, satu contoh pabrik pembentuk teks dibagikan di antara semua contoh dokumen. Setiap kali pembentuk teks dibuat, file font diakses. Mengurai file font adalah operasi yang mahal sehingga disarankan untuk melakukan caching. Aspose.Words mengimplementasikan kelas BasicTextShaperCache yang membungkus implementasi pabrik pembentuk teks dan menyimpan instance pembentuk teks yang dikembalikan oleh pabrik yang dibungkus.

Contoh kode berikut menunjukkan cara mengaktifkan dukungan fitur OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
