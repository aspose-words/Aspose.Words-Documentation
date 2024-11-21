---
title: Bekerja dengan Hyperlinks di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Menambahkan atau Memodifikasi Hyperlinks
linktitle: Menambahkan atau Memodifikasi Hyperlinks
description: "Cara menambahkan hyperlink ke dokumen Anda menggunakan JavaSitemap"
type: docs
weight: 50
url: /id/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

A hyperlink di Microsoft Word dokumen adalah `HYPERLINK` Login Sitemap Aspose.Words, hyperlink diimplementasikan melalui [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Sitemap

## Masukkan Hyperlink

Gunakan [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) metode untuk memasukkan hyperlink ke dalam dokumen. Metode ini menerima tiga parameter:

Sitemap Teks tautan ditampilkan dalam dokumen
2. di Link tujuan (URL atau nama bookmark di dalam dokumen)
3. Juni Parameter boolean yang harus true Sitemap `URL` adalah nama bookmark di dalam dokumen

Login **InsertHyperlink** metode selalu menambahkan apostrophes pada awal dan akhir URL

{{% alert color="primary" %}}

Perhatikan bahwa Anda perlu menentukan format font untuk teks tampilan hyperlink secara eksplisit menggunakan `Font` Login

{{% /alert %}}

Contoh kode berikut menunjukkan cara memasukkan hyperlink ke dokumen menggunakan [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Mengganti atau Memodifikasi Hyperlinks

Hyperlink Microsoft Word dokumen adalah bidang. Bidang dalam dokumen Word, seperti yang kita katakan sebelumnya, adalah struktur yang kompleks yang terdiri dari beberapa node yang mencakup awal lapangan, kode lapangan, pemisah lapangan, hasil lapangan dan ujung lapangan. Bidang dapat bersarang, mengandung konten yang kaya dan rentang beberapa ayat atau bagian dalam dokumen.

Untuk mengganti atau memodifikasi hyperlink, perlu menemukan hyperlink dalam dokumen dan mengganti teks, URL, atau keduanya.

Contoh kode berikut menunjukkan bagaimana menemukan semua hyperlink dalam dokumen Word dan mengubahnya `URL` dan nama tampilan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
