---
title: Batasi Pengeditan Dokumen di C++
second_title: Aspose.Words untuk C++
articleTitle: Batasi Pengeditan Dokumen
linktitle: Batasi Pengeditan Dokumen
description: "Batasi pengeditan dokumen dengan menetapkan jenis pembatasan menggunakan C++. Anda juga dapat menghapus perlindungan dan membuat wilayah yang dapat diedit tanpa batas."
type: docs
weight: 30
url: /id/cpp/restrict-document-editing/
---

Terkadang Anda mungkin perlu membatasi kemampuan untuk mengedit dokumen dan hanya mengizinkan tindakan tertentu dengannya. Ini dapat berguna untuk mencegah orang lain mengedit informasi sensitif dan rahasia dalam dokumen Anda.

Aspose.Words memungkinkan Anda membatasi pengeditan dokumen dengan menetapkan jenis pembatasan. Selain itu, Aspose.Words juga memungkinkan Anda menentukan pengaturan proteksi penulisan untuk dokumen.

Artikel ini menjelaskan cara menggunakan Aspose.Words untuk memilih jenis pembatasan, cara menambah atau menghapus perlindungan, dan cara membuat wilayah yang dapat diedit tanpa batas.

## Pilih Jenis Pembatasan Pengeditan

Aspose.Words memungkinkan Anda mengontrol cara Anda membatasi konten menggunakan parameter enumerasi [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Ini akan memungkinkan Anda untuk memilih jenis perlindungan yang tepat seperti berikut ini:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Semua jenis diamankan dengan kata sandi, dan jika kata sandi ini tidak dimasukkan dengan benar, pengguna tidak akan dapat mengubah konten dokumen Anda secara legal. Jadi, jika dokumen Anda dikembalikan kepada Anda tanpa persyaratan untuk memberikan kata sandi yang diperlukan, ini adalah tanda bahwa ada sesuatu yang salah.

Jika Anda tidak menetapkan kata sandi saat memilih jenis keamanan, pengguna lain dapat mengabaikan perlindungan dokumen Anda.

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi yang disetel hanyalah properti dalam dokumen yang dapat dihapus jika properti dokumen diakses. Dengan demikian, kata sandi seperti itu bukan jaminan keamanan dokumen. Metode [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) menunjukkan hal itu.

{{% /alert %}}

## Tambahkan Perlindungan Dokumen

Menambahkan perlindungan ke dokumen Anda adalah proses yang sederhana, karena yang perlu Anda lakukan hanyalah menerapkan salah satu metode perlindungan yang dirinci di bagian ini.

Aspose.Words memungkinkan Anda melindungi dokumen dari perubahan menggunakan metode [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Metode ini bukan fitur keamanan dan tidak mengenkripsi dokumen.

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat membatasi pengeditan dengan cara yang sama menggunakan keduanya:

* Batasi Pengeditan (File Info Info →
* Fitur alternatif – "Batasi Pengeditan" (Tinjau → Lindungi →

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan perlindungan kata sandi ke dokumen Anda:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Contoh kode berikut menunjukkan cara membatasi pengeditan dalam dokumen sehingga hanya pengeditan di bidang formulir yang dimungkinkan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Hapus Perlindungan Dokumen

Aspose.Words memungkinkan Anda menghapus perlindungan dari dokumen dengan modifikasi dokumen yang sederhana dan langsung. Anda dapat menghapus perlindungan dokumen tanpa mengetahui kata sandi yang sebenarnya atau memberikan kata sandi yang benar untuk membuka kunci dokumen dengan menggunakan metode [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Kedua cara menghilangkan tidak memiliki perbedaan.

Contoh kode berikut menunjukkan cara menghapus perlindungan dari dokumen Anda:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Tentukan Wilayah yang Tidak Dibatasi dan Dapat Diedit

Anda dapat membatasi pengeditan dokumen Anda dan pada saat yang sama mengizinkan perubahan pada bagian yang dipilih. Jadi, siapa pun yang membuka dokumen Anda akan dapat mengakses bagian yang tidak dibatasi ini dan membuat perubahan pada kontennya.

Aspose.Words memungkinkan Anda menandai bagian-bagian yang dapat diubah dalam dokumen Anda menggunakan metode [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) dan [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

Contoh kode berikut menunjukkan cara menandai seluruh dokumen sebagai hanya-baca dan menentukan wilayah yang dapat diedit di dalamnya:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Anda juga dapat memilih batasan pengeditan dokumen yang berbeda untuk bagian yang berbeda.

Contoh kode berikut menunjukkan cara menambahkan batasan untuk seluruh dokumen, lalu menghapus batasan untuk salah satu bagian:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
