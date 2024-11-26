---
title: Bersihkan Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bersihkan Dokumen
linktitle: Bersihkan Dokumen
description: "Hapus informasi yang tidak terpakai atau duplikat untuk mengurangi ukuran keluaran dan waktu pemrosesan menggunakan C#. Hapus gaya yang tidak digunakan, gaya bawaan yang tidak digunakan, gaya duplikat, atau daftar yang tidak digunakan."
type: docs
weight: 30
url: /id/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda mungkin perlu menghapus informasi yang tidak terpakai atau duplikat untuk mengurangi ukuran dokumen keluaran dan waktu pemrosesan.

Meskipun Anda dapat menemukan dan menghapus data yang tidak terpakai, seperti gaya atau daftar, atau menggandakan informasi secara manual, akan jauh lebih mudah untuk melakukan hal ini menggunakan fitur dan kemampuan yang disediakan oleh Aspose.Words.

Kelas [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) memungkinkan Anda menentukan opsi untuk pembersihan dokumen. Untuk menghapus gaya duplikat atau hanya gaya atau daftar yang tidak digunakan dari dokumen, Anda dapat menggunakan metode [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/).

## Hapus Informasi yang Tidak Digunakan dari Dokumen

Anda dapat menggunakan properti [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) dan [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) untuk mendeteksi dan menghapus gaya yang ditandai sebagai "tidak digunakan".

Anda dapat menggunakan properti [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) untuk mendeteksi dan menghapus daftar dan definisi daftar yang ditandai sebagai "tidak digunakan".

Contoh kode berikut menunjukkan cara menghapus hanya gaya yang tidak digunakan dari dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Hapus Informasi Duplikat dari Dokumen

Anda juga dapat menggunakan properti [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) untuk mengganti semua gaya duplikat dengan yang asli dan menghapus duplikat dari dokumen.

Contoh kode berikut menunjukkan cara menghapus gaya duplikat dari dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
