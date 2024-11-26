---
title: Sesuaikan Properti Bidang
second_title: Aspose.Words untuk Java
articleTitle: Sesuaikan Properti Bidang
linktitle: Sesuaikan Properti Bidang
description: "Pelajari cara menyesuaikan properti bidang di Java. Ganti nama bidang gabungan atau dapatkan hasil untuk bidang tanpa simpul pemisah di Java."
type: docs
weight: 27
url: /id/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words menyediakan kemampuan untuk berinteraksi secara terprogram dengan berbagai properti bidang. Pada artikel ini, kita akan melihat beberapa contoh sehingga Anda memahami prinsip dasar bekerja dengan properti bidang. Anda dapat melihat daftar lengkap properti untuk setiap jenis bidang di kelas yang sesuai.

## Pembaruan Properti Bidang

Terkadang pengguna perlu mengubah nilai properti bidang. Misalnya, perbarui properti [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) dari bidang `AUTHOR` atau ubah properti [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) dari bidang `MERGEFIELD`.

Contoh kode berikut menunjukkan cara mengganti nama bidang gabungan dalam dokumen Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## Hasil Tampilan Bidang

Aspose.Words menyediakan properti untuk mendapatkan hasil bidang untuk bidang yang tidak memiliki simpul pemisah bidang. Kami menyebutnya "hasil palsu" atau hasil tampilan; MS Word menampilkannya dalam dokumen dengan menghitung nilai bidang dengan cepat, tetapi tidak ada nilai seperti itu dalam model dokumen.

Contoh kode berikut menunjukkan penggunaan properti [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
