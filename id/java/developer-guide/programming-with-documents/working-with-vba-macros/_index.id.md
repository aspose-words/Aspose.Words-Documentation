---
title: Bekerja dengan Makro VBA dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Makro VBA
linktitle: Bekerja dengan Makro VBA
description: "Bekerja dengan proyek document VBA menggunakan Java."
type: docs
weight: 410
url: /id/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic untuk Aplikasi (VBA) untuk Microsoft Word adalah bahasa pemrograman yang sederhana namun kuat yang dapat digunakan untuk memperluas fungsionalitas. Aspose.Words API menyediakan tiga kelas untuk mendapatkan akses ke kode sumber proyek VBA:

- Kelas [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) menyediakan akses ke informasi proyek VBA
- Kelas [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) mengembalikan kumpulan modul proyek VBA
- Kelas [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) menyediakan akses ke modul proyek VBA

## Buat Proyek VBA

Aspose.Words API menyediakan properti [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) untuk mendapatkan atau menyetel VbaProject dalam dokumen.

Contoh kode berikut mendemonstrasikan cara membuat proyek VBA dan Modul VBA bersama dengan properti dasar, mis. Nama dan Tipe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Baca Makro

Aspose.Words juga memberi pengguna kemampuan untuk membaca makro VBA.

Contoh kode berikut menunjukkan cara membaca Makro VBA dari dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Memodifikasi Makro

Dengan menggunakan Aspose.Words, pengguna dapat memodifikasi makro VBA.

Contoh kode berikut menunjukkan cara memodifikasi Makro VBA menggunakan properti [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Klon VBA Proyek

Dengan Aspose.Words juga dimungkinkan untuk mengkloning proyek VBA.

Contoh kode berikut mendemonstrasikan cara mengkloning Proyek VBA menggunakan properti [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) yang membuat salinan proyek yang ada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Klon VBA Modul

Anda juga dapat mengkloning modul VBA jika diperlukan.

Contoh kode berikut mendemonstrasikan cara mengkloning Modul VBA menggunakan properti [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) yang membuat salinan proyek yang ada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
