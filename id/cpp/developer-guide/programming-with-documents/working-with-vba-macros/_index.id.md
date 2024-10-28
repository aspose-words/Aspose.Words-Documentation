---
title: Bekerja dengan Makro VBA di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Makro VBA
linktitle: Bekerja dengan Makro VBA
description: "Bekerja dengan proyek document VBA menggunakan C++."
type: docs
weight: 410
url: /id/cpp/working-with-vba-macros/
---

Visual Basic untuk Aplikasi (VBA) untuk Microsoft Word adalah bahasa pemrograman yang sederhana namun kuat yang dapat digunakan untuk memperluas fungsionalitas. Aspose.Words API menyediakan tiga kelas untuk mendapatkan akses ke kode sumber proyek VBA:

- Kelas [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) menyediakan akses ke informasi proyek VBA
- Kelas [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) mengembalikan kumpulan modul proyek VBA
- Kelas [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) menyediakan akses ke modul proyek VBA

## Buat Proyek VBA

Aspose.Words API menyediakan properti `Document.VbaProject` untuk mendapatkan atau menyetel VbaProject dalam dokumen.

Contoh kode berikut mendemonstrasikan cara membuat proyek VBA dan Modul VBA bersama dengan properti dasar, mis. Nama dan Tipe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Baca Makro

Aspose.Words juga memberi pengguna kemampuan untuk membaca makro VBA.

Contoh kode berikut menunjukkan cara membaca Makro VBA dari dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Menulis atau Memodifikasi Makro

Dengan menggunakan Aspose.Words, pengguna dapat memodifikasi makro VBA.

Contoh kode berikut menunjukkan cara memodifikasi Makro VBA menggunakan properti [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Klon VBA Proyek

Dengan Aspose.Words juga dimungkinkan untuk mengkloning proyek VBA.

Contoh kode berikut menunjukkan cara mengkloning Proyek VBA menggunakan properti [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) yang membuat salinan proyek yang ada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Klon VBA Modul

Anda juga dapat mengkloning modul VBA jika diperlukan.

Contoh kode berikut menunjukkan cara mengkloning Modul VBA menggunakan properti [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) yang membuat salinan proyek yang ada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
