---
title: Buka Dokumen Hanya-Baca di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Buka Dokumen Hanya-Baca
linktitle: Buka Dokumen Hanya-Baca
description: "Jadikan dokumen Anda hanya-baca sehingga isinya dapat disalin atau dibaca, namun tidak dimodifikasi menggunakan Python."
type: docs
weight: 10
url: /id/python-net/open-a-document-read-only/
---

Terkadang, Anda mungkin memiliki dokumen yang memerlukan peninjauan, namun Anda tidak ingin peninjau mengubah konten Anda secara acak. Aspose.Words memungkinkan Anda menjadikan izin dokumen Anda hanya-baca sehingga konten dapat disalin atau dibaca, namun tidak diubah. Ini akan mencegah konten dihapus atau ditambahkan ke dokumen Anda.

{{% alert color="primary" %}}

Menerapkan opsi baca-saja ke dokumen Anda tidak mencegah seseorang membuat salinan baru dan menyimpannya dengan nama lain.

{{% /alert %}}

Artikel ini menjelaskan cara membuat dokumen hanya-baca.

## Jadikan Dokumen Hanya-Baca

Aspose.Words memiliki [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) kelas publik yang menentukan pengaturan perlindungan penulisan untuk suatu dokumen. Anda tidak membuat instance kelas ini secara langsung.

Perlindungan penulisan menunjukkan apakah penulis merekomendasikan pembukaan dokumen sebagai hanya-baca dan/atau memerlukan kata sandi untuk mengubah dokumen.

Aspose.Words memungkinkan Anda membuat dokumen hanya-baca untuk membatasi pengeditan dengan menggunakan properti [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) dan metode [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Di Microsoft Word, Anda dapat membuat dokumen Read-Only dengan cara yang sama menggunakan keduanya:

* "Selalu Buka Read-Only" (File → Info → Lindungi Dokumen)
* "Kata sandi untuk diubah" (Simpan Sebagai → Alat → Opsi Umum → Kata Sandi)

{{% /alert %}}

{{% alert color="primary" %}}

Pengguna juga dapat membatasi pengeditan dokumen dengan memilih [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) sebagai [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), tetapi ini adalah fitur lain yang memberikan kemampuan perlindungan lebih lanjut. Ada fungsi seperti itu di Microsoft Word, masing-masing diimplementasikan di Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) akan dijelaskan secara rinci di salah satu artikel berikut – "Batasi Pengeditan Dokumen".

{{% /alert %}}

Properti [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) diamankan dengan kata sandi, jadi jika Anda tidak menetapkan kata sandi sebelum menerapkan properti [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), maka pengguna lain dapat dengan mudah membuka dokumen seolah-olah dokumen tersebut tidak terlindungi. Anda mengakses pengaturan perlindungan dokumen dan mengatur kata sandi perlindungan penulisan melalui metode [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Perhatikan bahwa kata sandi yang disetel hanyalah properti dalam dokumen yang dapat dihapus jika properti dokumen diakses. Oleh karena itu, kata sandi tersebut bukan jaminan keamanan dokumen.

{{% /alert %}}

Jika Anda perlu memeriksa apakah suatu dokumen memiliki kata sandi perlindungan penulisan yang membatasi pengeditannya, Anda dapat menggunakan properti [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

Contoh kode berikut menunjukkan cara membuat dokumen hanya-baca:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Hapus Pembatasan Hanya-Baca

Jika Anda tidak ingin pengguna membuka dokumen Anda sebagai hanya-baca, Anda cukup mengatur properti [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) ke `False` atau memilih [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) sebagai [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Contoh kode berikut menunjukkan cara menghapus akses hanya baca untuk dokumen:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
