---
title: Bekerja dengan Makro VBA di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Makro VBA
linktitle: Bekerja dengan Makro VBA
description: "Bekerja dengan dokumen proyek VBA menggunakan C#."
type: docs
weight: 410
url: /id/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) untuk Microsoft Word adalah bahasa pemrograman sederhana namun kuat yang dapat digunakan untuk memperluas fungsionalitas. Aspose.Words API menyediakan tiga kelas untuk mendapatkan akses ke kode sumber proyek VBA:

- Kelas [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) menyediakan akses ke informasi proyek VBA
- Kelas [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) mengembalikan koleksi modul proyek VBA
- Kelas [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) menyediakan akses ke modul proyek VBA
- Pencacahan [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) mendefinisikan tipe model dalam proyek VBA. Modul tersebut dapat berupa modul prosedural, modul dokumen, modul kelas, atau modul desainer

## Buat Proyek VBA

Aspose.Words API menyediakan properti [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) untuk mendapatkan atau mengatur VbaProject dalam dokumen.

Contoh kode berikut menunjukkan cara membuat proyek VBA dan Modul VBA beserta properti dasar misalnya Nama dan Tipe:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Baca Makro

Aspose.Words juga memberi pengguna kemampuan untuk membaca makro VBA.

Contoh kode berikut menunjukkan cara membaca Makro VBA dari dokumen:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Tulis atau Ubah Makro

Dengan menggunakan Aspose.Words, pengguna dapat memodifikasi makro VBA.

Contoh kode berikut menunjukkan cara memodifikasi Makro VBA menggunakan properti [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Proyek Klon VBA

Dengan Aspose.Words juga dimungkinkan untuk mengkloning proyek VBA.

Contoh kode berikut menunjukkan cara mengkloning Proyek VBA menggunakan properti [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) yang membuat salinan proyek yang sudah ada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Modul Klon VBA

Anda juga dapat mengkloning modul VBA jika diperlukan.

Contoh kode berikut menunjukkan cara mengkloning Modul VBA menggunakan properti [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) yang membuat salinan proyek yang sudah ada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Bekerja dengan Referensi Proyek VBA

Aspose.Words API menyediakan kelas [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) untuk bekerja dengan Referensi Proyek VBA yang mewakili kumpulan referensi proyek VBA.

Contoh kode berikut menunjukkan cara menghapus beberapa referensi dari kumpulan referensi dari proyek VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
