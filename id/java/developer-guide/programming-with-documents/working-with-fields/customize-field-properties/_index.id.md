---
title: Sesuaikan Properti Lapangan
second_title: Aspose.Words Sitemap Java
articleTitle: Sesuaikan Properti Lapangan
linktitle: Sesuaikan Properti Lapangan
description: "Pelajari cara menyesuaikan sifat lapangan dalam JavaSitemap Rename menggabungkan bidang atau mendapatkan hasil untuk bidang tanpa pemisah node di JavaSitemap"
type: docs
weight: 27
url: /id/java/customize-field-properties/
---

Aspose.Words memberikan kemampuan untuk berinteraksi secara programmatik dengan berbagai properti lapangan. Dalam artikel ini, kita akan melihat beberapa contoh sehingga Anda memahami prinsip dasar bekerja dengan sifat lapangan. Anda dapat melihat daftar lengkap properti untuk setiap jenis lapangan dalam kelas yang sesuai.

## Perbarui Properti Lapangan

Terkadang pengguna perlu mengubah nilai properti lapangan. Sebagai contoh, memperbarui [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) properti `AUTHOR` bidang atau mengubah [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) properti `MERGEFIELD` Login

Contoh kode berikut menunjukkan bagaimana mengubah nama menggabungkan bidang dalam dokumen Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Hasil Tampilan Lapangan

Aspose.Words menyediakan properti untuk memperoleh hasil lapangan untuk bidang yang tidak memiliki kelenjar pemisah lapangan. Kami menyebut ini "hasil fake" atau hasil tampilan; MS Word menampilkannya dalam dokumen dengan menghitung nilai lapangan di terbang, tetapi tidak ada nilai tersebut dalam model dokumen.

Contoh kode berikut menunjukkan penggunaan [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) properti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
