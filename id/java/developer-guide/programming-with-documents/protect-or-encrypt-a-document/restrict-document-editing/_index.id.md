---
title: Dokumen Terbatas Login Java
second_title: Aspose.Words Sitemap Java
articleTitle: Editing Dokumen Terbatas
linktitle: Editing Dokumen Terbatas
description: "Mengedit dokumen dengan mengatur jenis pembatasan. Anda juga dapat menghapus perlindungan dan membuat daerah yang tidak terbatas yang dapat diedit menggunakan JavaSitemap"
type: docs
weight: 30
url: /id/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Kadang-kadang Anda mungkin perlu membatasi kemampuan untuk mengedit dokumen dan hanya memungkinkan tindakan tertentu dengan itu. Hal ini dapat berguna untuk mencegah orang lain dari mengedit informasi sensitif dan rahasia dalam dokumen Anda.

Aspose.Words memungkinkan Anda untuk membatasi mengedit dokumen dengan mengatur jenis pembatasan. Selain itu, Aspose.Words juga memungkinkan Anda untuk menentukan pengaturan perlindungan menulis untuk dokumen.

Artikel ini menjelaskan cara menggunakan Aspose.Words untuk memilih jenis pembatasan, cara menambahkan atau menghapus perlindungan, dan bagaimana membuat daerah yang tidak terbatas diedit.

## Pilih Editing Jenis Pembatasan

Aspose.Words memungkinkan Anda untuk mengontrol cara Anda membatasi konten menggunakan Meme it [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) parameter numerasi. Ini akan memungkinkan Anda untuk memilih jenis perlindungan yang tepat seperti berikut:

* Sitemap
* Sitemap
* Sitemap
* Sitemap
* Sitemap

Semua jenis adalah kata sandi, dan jika kata sandi ini tidak masuk dengan benar, pengguna tidak akan dapat mengubah konten dokumen Anda secara legal. Jadi, jika dokumen Anda dikembalikan kepada Anda tanpa persyaratan untuk memberikan kata sandi yang diperlukan, ini adalah tanda bahwa sesuatu yang salah.

Jika Anda tidak mengatur kata sandi ketika memilih jenis keamanan, pengguna lain hanya dapat mengabaikan perlindungan dokumen Anda.

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi ditetapkan hanya properti dalam dokumen yang dapat dihapus jika sifat dokumen diakses. Dengan demikian, kata sandi tersebut bukan jaminan keamanan dokumen. Login [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) metode menunjukkan hanya itu.

{{% /alert %}}

## Tambahkan Perlindungan Dokumen

Menambahkan perlindungan pada dokumen Anda adalah proses sederhana, karena semua yang perlu Anda lakukan adalah menerapkan salah satu metode perlindungan yang rinci di bagian ini.

Aspose.Words memungkinkan Anda untuk melindungi dokumen Anda dari perubahan menggunakan [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) Login Metode ini bukan fitur keamanan dan tidak mengenkripsi dokumen.

{{% alert color="primary" %}}

Sitemap Microsoft Word, Anda dapat membatasi pengeditan dengan cara yang sama menggunakan keduanya:

* Editing Terbatas (File → Info → Lindungi Dokumen)
* Fitur alternatif - "Restrict Editing" (Review → Lindungi → Editing Terbatas)

{{% /alert %}}

Contoh kode berikut menunjukkan cara menambahkan perlindungan kata sandi ke dokumen Anda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Contoh kode berikut menunjukkan bagaimana membatasi pengeditan dalam dokumen sehingga hanya pengeditan dalam bidang bentuk dimungkinkan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Hapus Perlindungan Dokumen

Aspose.Words memungkinkan Anda untuk menghapus perlindungan dari dokumen dengan modifikasi dokumen sederhana dan langsung. Anda dapat menghapus perlindungan dokumen tanpa mengetahui kata sandi yang sebenarnya atau memberikan kata sandi yang benar untuk membuka dokumen dengan menggunakan [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) Login Kedua cara menghapus tidak ada perbedaan.

Contoh kode berikut menunjukkan bagaimana menghapus perlindungan dari dokumen Anda:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Tentukan Wilayah Editable yang Tidak Terbatas

Anda dapat membatasi pengeditan dokumen Anda dan pada saat yang sama memungkinkan perubahan pada bagian yang dipilih. Jadi, siapa pun yang membuka dokumen Anda akan dapat mengakses bagian-bagian yang tidak terbatas ini dan membuat perubahan pada konten.

Aspose.Words memungkinkan Anda untuk menandai bagian yang dapat diubah dalam dokumen Anda menggunakan [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) Login [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) Login

Contoh kode berikut menunjukkan bagaimana menandai seluruh dokumen secara membaca dan menentukan daerah yang dapat diedit di dalamnya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Anda juga dapat memilih pembatasan pengeditan dokumen yang berbeda untuk bagian yang berbeda.

Contoh kode berikut menunjukkan cara menambahkan pembatasan untuk seluruh dokumen, dan kemudian menghapus pembatasan untuk salah satu bagian:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
