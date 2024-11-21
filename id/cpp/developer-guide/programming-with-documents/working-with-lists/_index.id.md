---
title: Bekerja Dengan Daftar di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan daftar
linktitle: Bekerja dengan daftar
description: "Pengantar fitur pemformatan penomoran di Aspose.Words untuk C++."
type: docs
weight: 200
url: /id/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Daftar dalam dokumen Microsoft Word adalah sekumpulan properti pemformatan daftar. Daftar dapat digunakan dalam dokumen Anda untuk memformat, mengatur, dan menekankan teks. Daftar adalah cara yang bagus untuk mengatur data dalam dokumen, dan memudahkan pembaca untuk memahami poin-poin penting.

Setiap daftar dapat memiliki hingga level 9 dan properti pemformatan, seperti gaya angka, nilai awal, indentasi, posisi tab, dll. ditentukan secara terpisah untuk setiap level.

Dalam Aspose.Words, bekerja dengan daftar diwakili oleh namespace [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Namun, objek [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) selalu menjadi bagian dari koleksi [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Topik ini menjelaskan cara bekerja secara terprogram dengan daftar menggunakan Aspose.Words.

## Tentukan Pemformatan untuk Tingkat Daftar

Objek tingkat daftar dibuat secara otomatis saat daftar dibuat. Gunakan properti dan metode kelas [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) untuk mengontrol pemformatan setiap level daftar.

## Mulai ulang Daftar untuk setiap Bagian

Anda dapat memulai ulang daftar untuk setiap bagian menggunakan properti [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Perhatikan bahwa opsi ini hanya didukung dalam format dokumen RTF, DOC, dan DOCX. Opsi ini akan ditulis ke DOCX hanya jika OoxmlCompliance lebih tinggi dari Ecma376.

Contoh kode berikut menunjukkan cara membuat daftar dan memulai ulang untuk setiap bagian:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
