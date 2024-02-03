---
title: Batasi Pengeditan Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Batasi Pengeditan Dokumen
linktitle: Batasi Pengeditan Dokumen
description: "Batasi pengeditan dokumen dengan mengatur jenis pembatasan menggunakan C#. Anda juga dapat menghapus perlindungan dan membuat wilayah yang dapat diedit tidak dibatasi."
type: docs
weight: 30
url: /id/net/restrict-document-editing/
---

Terkadang Anda mungkin perlu membatasi kemampuan untuk mengedit dokumen dan hanya mengizinkan tindakan tertentu dengannya. Hal ini berguna untuk mencegah orang lain mengedit informasi sensitif dan rahasia di dokumen Anda.

Aspose.Words memungkinkan Anda membatasi pengeditan dokumen dengan mengatur jenis pembatasan. Selain itu, Aspose.Words juga memungkinkan Anda menentukan pengaturan perlindungan penulisan untuk suatu dokumen.

Artikel ini menjelaskan cara menggunakan Aspose.Words untuk memilih jenis pembatasan, cara menambah atau menghapus perlindungan, dan cara membuat wilayah yang dapat diedit tidak dibatasi.

## Pilih Jenis Pembatasan Pengeditan

Aspose.Words memungkinkan Anda mengontrol cara Anda membatasi konten menggunakan parameter enumerasi [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/). Ini akan memungkinkan Anda memilih jenis perlindungan yang tepat seperti berikut:

* Izinkan Hanya Komentar
* IzinkanHanyaFormFields
* Izinkan Hanya Revisi
* Hanya Baca
* Tidak Ada Perlindungan

Semua jenis diamankan dengan kata sandi, dan jika kata sandi ini tidak dimasukkan dengan benar, pengguna tidak akan dapat mengubah konten dokumen Anda secara legal. Jadi, jika dokumen Anda dikembalikan kepada Anda tanpa persyaratan untuk memberikan kata sandi yang diperlukan, ini pertanda ada yang tidak beres.

Jika Anda tidak menetapkan kata sandi saat memilih jenis keamanan, pengguna lain mungkin mengabaikan perlindungan dokumen Anda.

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi yang disetel hanyalah properti dalam dokumen yang dapat dihapus jika properti dokumen diakses. Oleh karena itu, kata sandi tersebut bukan jaminan keamanan dokumen. Metode [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) menunjukkan hal itu.

{{% /alert %}}

## Tambahkan Perlindungan Dokumen

Menambahkan perlindungan ke dokumen Anda adalah proses yang sederhana, karena yang perlu Anda lakukan hanyalah menerapkan salah satu metode perlindungan yang dijelaskan secara rinci di bagian ini.

Aspose.Words memungkinkan Anda melindungi dokumen Anda dari perubahan menggunakan metode [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/). Metode ini bukan merupakan fitur keamanan dan tidak mengenkripsi dokumen.

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat membatasi pengeditan dengan cara yang sama menggunakan keduanya:

* Batasi Pengeditan (File → Info → Lindungi Dokumen)
* Fitur alternatif – "Batasi Pengeditan" (Tinjau → Lindungi → Batasi Pengeditan)

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan perlindungan kata sandi ke dokumen Anda:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Contoh kode berikut memperlihatkan cara membatasi pengeditan dalam dokumen sehingga hanya pengeditan di bidang formulir yang dimungkinkan:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Hapus Perlindungan Dokumen

Aspose.Words memungkinkan Anda menghapus perlindungan dari dokumen dengan modifikasi dokumen yang sederhana dan langsung. Anda dapat menghapus perlindungan dokumen tanpa mengetahui kata sandi sebenarnya atau memberikan kata sandi yang benar untuk membuka kunci dokumen dengan menggunakan metode [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/). Kedua cara menghilangkan tersebut tidak ada perbedaannya.

Contoh kode berikut menunjukkan cara menghapus proteksi dari dokumen Anda:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Tentukan Wilayah yang Dapat Diedit Tidak Dibatasi

Anda dapat membatasi pengeditan dokumen Anda dan pada saat yang sama mengizinkan perubahan pada bagian tertentu dari dokumen tersebut. Jadi, siapa pun yang membuka dokumen Anda akan dapat mengakses bagian tidak terbatas ini dan membuat perubahan pada konten.

Aspose.Words memungkinkan Anda menandai bagian yang dapat diubah dalam dokumen Anda menggunakan metode [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) dan [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

Contoh kode berikut menunjukkan cara menandai seluruh dokumen sebagai hanya-baca dan menentukan wilayah yang dapat diedit di dalamnya:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Anda juga dapat memilih batasan pengeditan dokumen yang berbeda untuk bagian yang berbeda.

Contoh kode berikut menunjukkan cara menambahkan batasan untuk keseluruhan dokumen, lalu menghapus batasan untuk salah satu bagian:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
