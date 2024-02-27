---
title: Bersihkan Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bersihkan Dokumen
linktitle: Bersihkan Dokumen
description: "Hapus informasi yang tidak terpakai atau duplikat untuk mengurangi ukuran keluaran dan waktu pemrosesan menggunakan Python. Hapus gaya yang tidak digunakan, gaya bawaan yang tidak digunakan, gaya duplikat, atau daftar yang tidak digunakan."
type: docs
weight: 30
url: /id/python-net/clean-up-a-document/
---

Terkadang Anda mungkin perlu menghapus informasi yang tidak terpakai atau duplikat untuk mengurangi ukuran dokumen keluaran dan waktu pemrosesan.

Meskipun Anda dapat menemukan dan menghapus data yang tidak terpakai, seperti gaya atau daftar, atau menggandakan informasi secara manual, akan jauh lebih mudah untuk melakukan hal ini menggunakan fitur dan kemampuan yang disediakan oleh Aspose.Words.

Kelas [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) memungkinkan Anda menentukan opsi untuk pembersihan dokumen. Untuk menghapus gaya duplikat atau hanya gaya atau daftar yang tidak digunakan dari dokumen, Anda dapat menggunakan metode [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Hapus Informasi yang Tidak Digunakan dari Dokumen

Anda dapat menggunakan properti [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) dan [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) untuk mendeteksi dan menghapus gaya yang ditandai sebagai "tidak digunakan".

Anda dapat menggunakan properti [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) untuk mendeteksi dan menghapus daftar dan definisi daftar yang ditandai sebagai "tidak digunakan".

Contoh kode berikut menunjukkan cara menghapus hanya gaya yang tidak digunakan dari dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Hapus Informasi Duplikat dari Dokumen

Anda juga dapat menggunakan properti [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) untuk mengganti semua gaya duplikat dengan yang asli dan menghapus duplikat dari dokumen.

Contoh kode berikut menunjukkan cara menghapus gaya duplikat dari dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}