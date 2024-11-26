---
title: Terapkan Format Khusus ke Bidang
second_title: Aspose.Words Sitemap Java
articleTitle: Terapkan Format Khusus ke Bidang
linktitle: Terapkan Format Khusus ke Bidang
description: "Format dan mengevaluasi hasil bidang menggunakan JavaSitemap"
type: docs
weight: 40
url: /id/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Terkadang pengguna perlu menerapkan format kustom ke bidang. Dalam artikel ini, kita akan melihat beberapa contoh bagaimana ini dapat dilakukan.

Untuk mempelajari lebih banyak pilihan, lihat daftar lengkap properti untuk setiap jenis lapangan dalam kelas yang sesuai.

## Cara Menerapkan Format Kustom ke Hasil Lapangan

Aspose.Words Sitemap API untuk format kustom dari hasil lapangan. Anda dapat menerapkan [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) antarmuka untuk mengontrol bagaimana hasil lapangan diformat. Anda dapat menerapkan saklar format numerik, yaitu \ # "#.#", sakelar format tanggal / waktu, yaitu \ @ "dd.MM.yy", dan sakelar format nomor, yaitu \ * Ordinal.

Contoh kode berikut menunjukkan cara menerapkan format kustom untuk hasil lapangan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Cara mengevaluasi `IF` Sitemap

Jika Anda ingin mengevaluasi `IF` kondisi setelah mail merge, Anda dapat menggunakan [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) metode yang segera mengembalikan hasil evaluasi ekspresi.

Contoh kode berikut menunjukkan cara menggunakan metode ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Cara Menerapkan Format Kustom ke Bidang Waktu

Sitemap Aspose.Words Sitemap `TIME` bidang dengan format waktu singkat budaya saat ini. Jika Anda ingin memformat `TIME` sesuai dengan kebutuhan Anda, Anda dapat mencapai ini dengan menerapkan [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) Login

Contoh kode berikut menunjukkan cara menerapkan format kustom ke `TIME` Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
