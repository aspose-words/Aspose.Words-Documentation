---
title: Bersihkan Dokumen di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bersihkan Dokumen
linktitle: Bersihkan Dokumen
description: "Hapus informasi yang tidak digunakan atau duplikat untuk mengurangi ukuran output dan waktu pemrosesan. Hapus gaya yang tidak digunakan, gaya built-in yang tidak digunakan, gaya duplikat, atau daftar yang tidak digunakan menggunakan JavaSitemap"
type: docs
weight: 30
url: /id/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Kadang-kadang Anda mungkin perlu menghapus informasi yang tidak digunakan atau digandakan untuk mengurangi ukuran dokumen output dan waktu pemrosesan.

Meskipun Anda dapat menemukan dan menghapus data yang tidak digunakan, seperti gaya atau daftar, atau informasi duplikat secara manual, itu akan jauh lebih nyaman untuk melakukan fitur dan kemampuan ini yang disediakan oleh Aspose.WordsSitemap

Login [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) kelas memungkinkan Anda untuk menentukan opsi untuk pembersihan dokumen. Untuk menghapus gaya duplikat atau hanya gaya atau daftar yang tidak digunakan dari dokumen, Anda dapat menggunakan [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) Login

## Hapus informasi yang tidak digunakan dari dokumen

Anda dapat menggunakan [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) Login [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) properti untuk mendeteksi dan menghapus gaya yang ditandai sebagai "tidak digunakan".

Anda dapat menggunakan [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) properti untuk mendeteksi dan menghapus definisi daftar yang ditandai sebagai "tidak digunakan".

Contoh kode berikut menunjukkan cara menghapus hanya gaya yang tidak digunakan dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Hapus Informasi Duplikat dari Dokumen

Anda juga dapat menggunakan [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) properti untuk menggantikan semua gaya duplikat dengan yang asli dan menghapus duplikat dari dokumen.

Contoh kode berikut menunjukkan cara menghapus gaya duplikat dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
