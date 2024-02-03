---
title: Bekerja dengan Makro VBA di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Makro VBA
linktitle: Bekerja dengan Makro VBA
description: "Membuat, membaca, menulis, mengkloning, dan mengelola makro VBA dalam dokumen menggunakan Python."
type: docs
weight: 410
url: /id/python-net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) untuk Microsoft Word adalah bahasa pemrograman sederhana namun kuat yang dapat digunakan untuk memperluas fungsionalitas. Aspose.Words API menyediakan tiga kelas untuk mendapatkan akses ke kode sumber proyek VBA:

- Kelas [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) menyediakan akses ke informasi proyek VBA
- Kelas [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) mengembalikan koleksi modul proyek VBA
- Kelas [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) menyediakan akses ke modul proyek VBA
- Pencacahan [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) mendefinisikan tipe model dalam proyek VBA. Modul tersebut dapat berupa modul prosedural, modul dokumen, modul kelas, atau modul desainer

## Buat Proyek VBA

Aspose.Words API menyediakan properti [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) untuk mendapatkan atau mengatur [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) dalam dokumen.

Contoh kode berikut menunjukkan cara membuat proyek VBA dan Modul VBA beserta properti dasar misalnya [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) dan [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Baca Makro

Aspose.Words juga memberi pengguna kemampuan untuk membaca makro VBA.

Contoh kode berikut menunjukkan cara membaca Makro VBA dari dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Tulis atau Ubah Makro

Dengan menggunakan Aspose.Words, pengguna dapat memodifikasi makro VBA.

Contoh kode berikut menunjukkan cara memodifikasi Makro VBA menggunakan properti [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Proyek Klon VBA

Dengan Aspose.Words juga dimungkinkan untuk mengkloning proyek VBA.

Contoh kode berikut menunjukkan cara mengkloning Proyek VBA menggunakan properti [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) yang membuat salinan proyek yang sudah ada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Modul Klon VBA

Anda juga dapat mengkloning modul VBA jika diperlukan.

Contoh kode berikut menunjukkan cara mengkloning Modul VBA menggunakan properti [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) yang membuat salinan proyek yang sudah ada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Bekerja dengan Referensi Proyek VBA

Aspose.Words API menyediakan kelas [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) untuk bekerja dengan Referensi Proyek VBA yang mewakili kumpulan referensi proyek VBA.

Contoh kode berikut menunjukkan cara menghapus beberapa referensi dari kumpulan referensi dari proyek VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}