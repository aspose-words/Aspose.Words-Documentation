---
title: Membersihkan Dokumen dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bersihkan Dokumen
linktitle: Bersihkan Dokumen
description: "Hapus informasi yang tidak digunakan atau duplikat untuk mengurangi ukuran output dan waktu pemrosesan menggunakan C++. Hapus gaya yang tidak digunakan, gaya bawaan yang tidak digunakan, gaya duplikat, atau daftar yang tidak digunakan."
type: docs
weight: 30
url: /id/cpp/clean-up-a-document/
---

Terkadang Anda mungkin perlu menghapus informasi yang tidak digunakan atau duplikat untuk mengurangi ukuran dokumen keluaran dan waktu pemrosesan.

Meskipun Anda dapat menemukan dan menghapus data yang tidak digunakan, seperti gaya atau daftar, atau menggandakan informasi secara manual, akan jauh lebih mudah untuk melakukannya menggunakan fitur dan kemampuan yang disediakan oleh Aspose.Words.

Kelas [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) memungkinkan Anda menentukan opsi untuk pembersihan dokumen. Untuk menghapus gaya duplikat atau hanya gaya atau daftar yang tidak digunakan dari dokumen, Anda dapat menggunakan metode [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Menghapus Informasi yang Tidak Digunakan dari Dokumen

Anda dapat menggunakan properti [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) dan [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) untuk mendeteksi dan menghapus gaya yang ditandai sebagai "tidak digunakan".

Anda dapat menggunakan properti [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) untuk mendeteksi dan menghapus daftar dan definisi daftar yang ditandai sebagai "tidak digunakan".

Contoh kode berikut menunjukkan cara menghapus hanya gaya yang tidak digunakan dari dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Menghapus Informasi Duplikat dari Dokumen

Anda juga dapat menggunakan properti [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) untuk mengganti semua gaya duplikat dengan yang asli dan menghapus duplikat dari dokumen.

Contoh kode berikut menunjukkan cara menghapus gaya duplikat dari dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
