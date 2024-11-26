---
title: Bekerja dengan Hyperlink dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Menambahkan atau Memodifikasi Hyperlink
linktitle: Menambahkan atau Memodifikasi Hyperlink
description: "Cara menambahkan hyperlink ke dalam dokumen Anda menggunakan Java."
type: docs
weight: 50
url: /id/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hyperlink dalam dokumen Microsoft Word adalah bidang `HYPERLINK`. Dalam Aspose.Words, hyperlink diimplementasikan melalui kelas [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Sisipkan Hyperlink

Gunakan metode [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) untuk menyisipkan hyperlink ke dalam dokumen. Metode ini menerima tiga parameter:

1. Teks tautan yang akan ditampilkan dalam dokumen
2. Tujuan tautan (URL atau nama penanda di dalam dokumen)
3. Parameter boolean yang seharusnya true jika `URL` adalah nama penanda di dalam dokumen

Metode **InsertHyperlink** selalu menambahkan apostrof di awal dan akhir URL.

{{% alert color="primary" %}}

Perhatikan bahwa Anda perlu menentukan pemformatan font untuk teks tampilan hyperlink secara eksplisit menggunakan properti `Font`.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan hyperlink ke dalam dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Mengganti atau Memodifikasi Hyperlink

Hyperlink dalam dokumen Microsoft Word adalah bidang. Bidang dalam dokumen Word, seperti yang kami katakan sebelumnya, adalah struktur kompleks yang terdiri dari beberapa simpul yang mencakup awal bidang, kode bidang, pemisah bidang, hasil bidang, dan akhir bidang. Bidang dapat disarangkan, berisi konten yang kaya, dan menjangkau beberapa paragraf atau bagian dalam dokumen.

Untuk mengganti atau memodifikasi hyperlink, Anda perlu menemukan hyperlink dalam dokumen dan mengganti teksnya, URLs, atau keduanya.

Contoh kode berikut menunjukkan cara menemukan semua hyperlink dalam dokumen Word dan mengubah `URL` dan nama tampilannya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
