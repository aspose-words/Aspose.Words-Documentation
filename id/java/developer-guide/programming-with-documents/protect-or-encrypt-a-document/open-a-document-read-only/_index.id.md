---
title: Buka Dokumen Read-Hanya Java
second_title: Aspose.Words Sitemap Java
articleTitle: Buka Dokumen Read-Only
linktitle: Buka Dokumen Read-Only
description: "Membuat dokumen Anda read-only sehingga konten dapat disalin atau dibaca, tetapi tidak dimodifikasi menggunakan JavaSitemap"
type: docs
weight: 10
url: /id/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Kadang-kadang, Anda mungkin memiliki dokumen yang membutuhkan ulasan, tetapi Anda tidak ingin meninjau secara acak memodifikasi konten Anda. Aspose.Words memungkinkan Anda untuk membuat izin dokumen Anda read-only sehingga konten dapat disalin atau membaca, tetapi tidak dimodifikasi. Ini akan mencegah konten dihapus atau ditambahkan ke dokumen Anda.

{{% alert color="primary" %}}

Menerapkan opsi read-only ke dokumen Anda tidak mencegah seseorang membuat salinan baru dan menyimpannya dengan nama lain.

{{% /alert %}}

Artikel ini menjelaskan cara membuat dokumen membaca.

## Membuat Dokumen Read-Only

Aspose.Words memiliki kelas publik [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) yang menentukan pengaturan perlindungan menulis untuk dokumen. Anda tidak membuat instance dari kelas ini secara langsung.

Tulis perlindungan menunjukkan apakah penulis telah direkomendasikan membuka dokumen sebagai read-only dan/atau memerlukan kata sandi untuk memodifikasi dokumen.

Aspose.Words memungkinkan Anda untuk membuat dokumen read-only untuk membatasi pengeditan dengan menggunakan [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) properti dan [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) Login

{{% alert color="primary" %}}

Sitemap Microsoft Word, Anda dapat membuat dokumen Read-Only dengan cara yang sama menggunakan keduanya:

* "Always Open Read-Only" (File → Info → Lindungi Dokumen)
* "Password untuk memodifikasi" (Simpan Sebagai → Alat → Pilihan Umum → Password)

{{% /alert %}}

{{% alert color="primary" %}}

Pengguna juga dapat membatasi pengeditan dokumen dengan memilih [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) Sitemap **ReadOnly**, tetapi ini adalah fitur lain yang memberikan kemampuan perlindungan yang lebih canggih. Ada fungsi seperti itu Microsoft Word, masing-masing, diimplementasikan Aspose.WordsSitemap

**ProtectionType** akan dijelaskan secara rinci dalam salah satu artikel berikut - "Restrict Document Editing".

{{% /alert %}}

Login **ReadOnlyRecommended** properti adalah password-aman, jadi jika Anda tidak mengatur password sebelum menerapkan **ReadOnlyRecommended** properti, maka pengguna lain hanya dapat membuka dokumen seolah-olah tidak dilindungi. Anda mengakses pengaturan perlindungan dokumen dan mengatur kata sandi perlindungan menulis melalui **SetPassword** Login

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi ditetapkan hanya properti dalam dokumen yang dapat dihapus jika sifat dokumen diakses. Dengan demikian, kata sandi tersebut bukan jaminan keamanan dokumen.

{{% /alert %}}

Jika Anda perlu memeriksa apakah dokumen memiliki kata sandi perlindungan menulis yang membatasinya dari pengeditan, Anda dapat menggunakan [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) Login

Contoh kode berikut menunjukkan bagaimana membuat dokumen membaca-hanya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Hapus Pembatasan Baca-Hanya

Jika Anda tidak ingin pengguna untuk membuka dokumen Anda sebagai read-only, Anda hanya dapat mengatur **ReadOnlyRecommened** properti *false* atau pilih **ProtectionType** Sitemap **NoProtection**Sitemap

Contoh kode berikut menunjukkan cara menghapus akses yang mudah dibaca untuk dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
