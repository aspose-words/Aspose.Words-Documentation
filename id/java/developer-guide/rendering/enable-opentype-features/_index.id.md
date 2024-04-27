---
title: Fitur OpenType yang Dapat Diaktifkan dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Fitur OpenType yang Dapat Diaktifkan
linktitle: Fitur OpenType yang Dapat Diaktifkan
description: "Fitur tipografi lanjutan dalam Aspose.Words Sitemap JavaSitemap"
type: docs
weight: 25
url: /id/java/enable-opentype-features/
---



OpenType adalah format font, diperkenalkan untuk memberikan dukungan yang lebih baik untuk bahasa internasional dan sistem penulisan dibandingkan dengan PostScript dan TrueType. Fitur tata letak OpenType umumnya dikenal sebagai fitur OpenType. Aspose.WordsLoginHarfBuzz paket menyediakan dukungan untuk fitur OpenType di Aspose.Words menggunakan `HarfBuzz` mesin pembentuk teks.

Aspose.Words mampu menggunakan objek bentuk teks yang disediakan secara eksternal. Formr teks mewakili font dan menghitung informasi untuk teks. Sebuah dokumen biasanya mengacu pada beberapa font sehingga sebuah pabrik pembentuk teks diperlukan. Paket ini mengandung implementasi pabrik pembentuk teks yang digunakan oleh Aspose.Words.Layout.LayoutOptions.TextShaper Factory properti.

{{% alert color="primary" %}}

Teks membentuk hanya dilakukan ketika mengekspor ke PDF atau XPS Login

{{% /alert %}}

Dalam aplikasi yang khas satu kasus dari pabrik pembentuk teks dibagikan di antara semua kasus dokumen. Kapan pun pembentuk teks dibuat file font diakses. Membuat file font adalah operasi mahal sehingga caching dianjurkan. Aspose.Words Sitemap Catalog Kelas Cache yang membungkus implementasi pabrik pembentuk teks dan cache instance pembentuk teks dikembalikan oleh pabrik yang dibungkus.

Contoh kode berikut menunjukkan cara mengubah dukungan fitur OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
