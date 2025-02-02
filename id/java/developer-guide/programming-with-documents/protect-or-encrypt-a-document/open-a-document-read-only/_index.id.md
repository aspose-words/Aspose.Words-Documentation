﻿---
title: Buka Dokumen Hanya-Baca dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Buka Dokumen Hanya-Baca
linktitle: Buka Dokumen Hanya-Baca
description: "Jadikan dokumen Anda hanya-baca sehingga konten dapat disalin atau dibaca, tetapi tidak dimodifikasi menggunakan Java."
type: docs
weight: 10
url: /id/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Terkadang, Anda mungkin memiliki dokumen yang perlu ditinjau, tetapi Anda tidak ingin pengulas mengubah konten Anda secara acak. Aspose.Words memungkinkan Anda membuat izin dokumen Anda hanya-baca sehingga konten dapat disalin atau dibaca, tetapi tidak dimodifikasi. Ini akan mencegah konten dihapus atau ditambahkan ke dokumen Anda.

{{% alert color="primary" %}}

Menerapkan opsi hanya-baca ke dokumen Anda tidak mencegah seseorang membuat salinannya yang baru dan menyimpannya dengan nama lain.

{{% /alert %}}

Artikel ini menjelaskan cara membuat dokumen hanya-baca.

## Membuat Dokumen Hanya Dapat Dibaca

Aspose.Words memiliki kelas publik [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) yang menentukan pengaturan proteksi penulisan untuk sebuah dokumen. Anda tidak membuat instance kelas ini secara langsung.

Proteksi penulisan menunjukkan apakah penulis telah merekomendasikan untuk membuka dokumen sebagai hanya-baca dan / atau memerlukan kata sandi untuk mengubah dokumen.

Aspose.Words memungkinkan Anda membuat dokumen hanya-baca untuk membatasi pengeditan dengan menggunakan properti [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) dan metode [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String).

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat membuat dokumen Hanya-Baca dengan cara yang sama menggunakan keduanya:

* "Selalu Buka Hanya-Baca" (File → Info →
* "Kata sandi untuk diubah" (Simpan Sebagai →

{{% /alert %}}

{{% alert color="primary" %}}

Pengguna juga dapat membatasi pengeditan dokumen dengan memilih [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) sebagai **ReadOnly**, tetapi ini adalah fitur lain yang memberikan kemampuan perlindungan yang lebih canggih. Ada fungsi seperti itu di Microsoft Word, masing-masing, diimplementasikan dalam Aspose.Words.

**ProtectionType**

{{% /alert %}}

Properti **ReadOnlyRecommended** diamankan dengan kata sandi, jadi jika Anda tidak menetapkan kata sandi sebelum menerapkan properti **ReadOnlyRecommended**, pengguna lain dapat dengan mudah membuka dokumen seolah-olah tidak dilindungi. Anda mengakses pengaturan perlindungan dokumen dan menetapkan kata sandi perlindungan penulisan melalui metode **SetPassword**.

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi yang disetel hanyalah properti dalam dokumen yang dapat dihapus jika properti dokumen diakses. Dengan demikian, kata sandi seperti itu bukan jaminan keamanan dokumen.

{{% /alert %}}

Jika Anda perlu memeriksa apakah dokumen memiliki kata sandi proteksi penulisan yang membatasinya dari pengeditan, Anda dapat menggunakan properti [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected).

Contoh kode berikut menunjukkan cara membuat dokumen hanya-baca:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Hapus Batasan Hanya-Baca

Jika Anda tidak ingin pengguna membuka dokumen Anda sebagai hanya-baca, Anda cukup menyetel properti **ReadOnlyRecommened** ke *false* atau memilih **ProtectionType** sebagai **NoProtection**.

Contoh kode berikut menunjukkan cara menghapus akses hanya-baca untuk dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
