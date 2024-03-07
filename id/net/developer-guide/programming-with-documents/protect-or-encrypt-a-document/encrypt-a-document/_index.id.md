---
title: Enkripsi Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Enkripsi Dokumen
linktitle: Enkripsi Dokumen
description: "Enkripsi dokumen Anda menggunakan algoritma enkripsi yang sesuai untuk format dokumen tertentu di C#."
type: docs
weight: 20
url: /id/net/encrypt-a-document/
---

Enkripsi adalah proses menerjemahkan teks yang dapat dibaca menjadi rangkaian byte yang tidak berarti sehingga hanya dapat dibaca oleh orang yang memiliki kunci dekripsi atau kode rahasia. Proses ini memainkan peran penting dalam mengamankan konten Anda. Ini membantu untuk menyandikan konten, memverifikasi asal dokumen, membuktikan bahwa konten belum diubah setelah dikirim, dan memastikan bahwa data dari dokumen tersebut aman.

Artikel ini menjelaskan bagaimana Aspose.Words memungkinkan Anda mengenkripsi dokumen dan cara memeriksa apakah dokumen memiliki enkripsi atau tidak.

## Enkripsi dengan Kata Sandi

Untuk mengenkripsi dokumen, gunakan properti **Password** untuk memberikan kata sandi yang berfungsi sebagai kunci enkripsi. Ini akan mengubah konten dokumen Anda dan membuatnya tidak dapat dibaca. Dokumen terenkripsi memerlukan kata sandi ini untuk dimasukkan sebelum dapat dibuka.

{{% alert color="primary" %}}

Anda dapat menemukan properti **Password** yang sesuai untuk format yang diperlukan. Setiap format penyimpanan dokumen dalam [Menyimpan Ruang Nama](https://reference.aspose.com/words/net/aspose.words.saving/) memiliki kelas terkait yang berisi opsi penyimpanan untuk format ini. Misalnya properti [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) di kelas [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) untuk DOC, atau properti [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) di kelas [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) untuk DOCX, DOCM, DOTX, DOTM, dan FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Perhatikan bahwa hanya format dokumen tertentu yang mendukung enkripsi. Misalnya, RTF tidak mendukung enkripsi.

{{% /alert %}}

Tabel di bawah mencantumkan format dan algoritma enkripsi yang didukung oleh Aspose.Words:

| Format |  Enkripsi yang Didukung saat Memuat |  Enkripsi yang Didukung saat Menyimpan |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOK, DOT |  Enkripsi XOR Enkripsi RC4 40-bit Enkripsi CryptoAPI RC4 |  Enkripsi RC4 (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Enkripsi Standar ECMA-376Enkripsi Agile ECMA-376 |  Enkripsi Standar ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Enkripsi ODF (Blowfish/AES) |  Enkripsi ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  Enkripsi RC4 (40/128bit) |

Contoh kode berikut menunjukkan cara mengenkripsi dokumen dengan kata sandi:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Periksa Apakah Dokumen Dienkripsi

Dalam beberapa kasus, Anda mungkin memiliki dokumen yang tidak dapat dibaca dan ingin memastikan bahwa dokumen tersebut dienkripsi dan tidak rusak atau terkompresi.

Untuk mendeteksi apakah suatu dokumen dienkripsi dan apakah kata sandi diperlukan, Anda dapat menggunakan properti [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) dari kelas [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/). Properti ini juga memungkinkan Anda melakukan beberapa tindakan sebelum memuat dokumen, misalnya, memberi tahu pengguna untuk memberikan kata sandi.

Contoh kode berikut menunjukkan cara mendeteksi enkripsi dokumen:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Buka Dokumen Dengan atau Tanpa Kata Sandi

Ketika kami telah memastikan bahwa suatu dokumen dienkripsi, kami dapat mencoba membuka dokumen itu tanpa kata sandi, yang akan menghasilkan pengecualian.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi tanpa kata sandi:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Setelah kita melihat bahwa dokumen terenkripsi tidak dapat dibuka tanpa password, kita bisa mencoba membukanya dengan memasukkan password.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
