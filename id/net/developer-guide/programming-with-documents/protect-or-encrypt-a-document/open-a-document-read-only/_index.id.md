---
title: Buka Dokumen Hanya-Baca di C#
second_title: Aspose.Words untuk .NET
articleTitle: Buka Dokumen Hanya-Baca
linktitle: Buka Dokumen Hanya-Baca
description: "Jadikan dokumen Anda hanya-baca sehingga isinya dapat disalin atau dibaca, namun tidak dimodifikasi menggunakan C#."
type: docs
weight: 10
url: /id/net/open-a-document-read-only/
---

Terkadang, Anda mungkin memiliki dokumen yang memerlukan peninjauan, namun Anda tidak ingin peninjau mengubah konten Anda secara acak. Aspose.Words memungkinkan Anda menjadikan izin dokumen Anda hanya-baca sehingga konten dapat disalin atau dibaca, namun tidak diubah. Ini akan mencegah konten dihapus atau ditambahkan ke dokumen Anda.

{{% alert color="primary" %}}

Menerapkan opsi baca-saja ke dokumen Anda tidak mencegah seseorang membuat salinan baru dan menyimpannya dengan nama lain.

{{% /alert %}}

Artikel ini menjelaskan cara membuat dokumen hanya-baca.

## Jadikan Dokumen Hanya-Baca

Aspose.Words memiliki [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) kelas publik yang menentukan pengaturan perlindungan penulisan untuk suatu dokumen. Anda tidak membuat instance kelas ini secara langsung.

Perlindungan penulisan menunjukkan apakah penulis merekomendasikan pembukaan dokumen sebagai hanya-baca dan/atau memerlukan kata sandi untuk mengubah dokumen.

Aspose.Words memungkinkan Anda membuat dokumen hanya-baca untuk membatasi pengeditan dengan menggunakan properti [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) dan metode [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat membuat dokumen Read-Only dengan cara yang sama menggunakan keduanya:

* "Selalu Buka Read-Only" (File → Info → Lindungi Dokumen)
* "Kata sandi untuk diubah" (Simpan Sebagai → Alat → Opsi Umum → Kata Sandi)

{{% /alert %}}

{{% alert color="primary" %}}

Pengguna juga dapat membatasi pengeditan dokumen dengan memilih [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) sebagai **ReadOnly**, tetapi ini adalah fitur lain yang memberikan kemampuan perlindungan lebih lanjut. Ada fungsi seperti itu di Microsoft Word, masing-masing diimplementasikan di Aspose.Words.

**ProtectionType** akan dijelaskan secara rinci di salah satu artikel berikut – "Batasi Pengeditan Dokumen".

{{% /alert %}}

Properti **ReadOnlyRecommended** diamankan dengan kata sandi, jadi jika Anda tidak menetapkan kata sandi sebelum menerapkan properti **ReadOnlyRecommended**, maka pengguna lain dapat dengan mudah membuka dokumen seolah-olah dokumen tersebut tidak dilindungi. Anda mengakses pengaturan perlindungan dokumen dan mengatur kata sandi perlindungan penulisan melalui metode **SetPassword**.

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi yang disetel hanyalah properti dalam dokumen yang dapat dihapus jika properti dokumen diakses. Oleh karena itu, kata sandi tersebut bukan jaminan keamanan dokumen.

{{% /alert %}}

Jika Anda perlu memeriksa apakah suatu dokumen memiliki kata sandi perlindungan penulisan yang membatasi pengeditannya, Anda dapat menggunakan properti [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/).

Contoh kode berikut menunjukkan cara membuat dokumen hanya-baca:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Hapus Pembatasan Hanya-Baca

Jika Anda tidak ingin pengguna membuka dokumen Anda sebagai hanya-baca, Anda cukup mengatur properti **ReadOnlyRecommened** ke *false* atau memilih **ProtectionType** sebagai **NoProtection**.

Contoh kode berikut menunjukkan cara menghapus akses hanya baca untuk dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
