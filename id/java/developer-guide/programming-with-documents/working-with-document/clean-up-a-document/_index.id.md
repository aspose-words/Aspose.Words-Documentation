---
title: Bersihkan Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bersihkan Dokumen
linktitle: Bersihkan Dokumen
description: "Hapus informasi yang tidak digunakan atau duplikat untuk mengurangi ukuran keluaran dan waktu pemrosesan. Hapus gaya yang tidak digunakan, gaya bawaan yang tidak digunakan, gaya duplikat, atau daftar yang tidak digunakan menggunakan Java."
type: docs
weight: 30
url: /id/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda mungkin perlu menghapus informasi yang tidak digunakan atau duplikat untuk mengurangi ukuran dokumen keluaran dan waktu pemrosesan.

Meskipun Anda dapat menemukan dan menghapus data yang tidak digunakan, seperti gaya atau daftar, atau menggandakan informasi secara manual, akan jauh lebih mudah untuk melakukannya menggunakan fitur dan kemampuan yang disediakan oleh Aspose.Words.

Kelas [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) memungkinkan Anda menentukan opsi untuk pembersihan dokumen. Untuk menghapus gaya duplikat atau hanya gaya atau daftar yang tidak digunakan dari dokumen, Anda dapat menggunakan metode [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup).

## Menghapus Informasi yang Tidak Digunakan dari Dokumen

Anda dapat menggunakan properti [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) dan [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) untuk mendeteksi dan menghapus gaya yang ditandai sebagai "tidak digunakan".

Anda dapat menggunakan properti [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) untuk mendeteksi dan menghapus daftar dan definisi daftar yang ditandai sebagai "tidak digunakan".

Contoh kode berikut menunjukkan cara menghapus hanya gaya yang tidak digunakan dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Menghapus Informasi Duplikat dari Dokumen

Anda juga dapat menggunakan properti [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) untuk mengganti semua gaya duplikat dengan yang asli dan menghapus duplikat dari dokumen.

Contoh kode berikut menunjukkan cara menghapus gaya duplikat dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
