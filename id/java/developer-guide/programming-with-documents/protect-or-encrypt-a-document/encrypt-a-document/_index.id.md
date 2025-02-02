﻿---
title: Mengenkripsi Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Mengenkripsi Dokumen
linktitle: Mengenkripsi Dokumen
description: "Enkripsi dokumen Anda menggunakan algoritme enkripsi yang sesuai untuk format dokumen tertentu dalam Java."
type: docs
weight: 20
url: /id/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Enkripsi adalah proses yang menerjemahkan teks yang dapat dibaca menjadi urutan byte yang tidak berarti sehingga hanya dapat dibaca oleh orang yang memiliki kunci dekripsi atau kode rahasia. Proses ini memainkan peran penting dalam mengamankan konten Anda. Ini membantu untuk menyandikan konten, memverifikasi asal dokumen, membuktikan bahwa konten belum diubah setelah dikirim, dan memastikan bahwa data dari dokumen tersebut aman.

Artikel ini menjelaskan bagaimana Aspose.Words memungkinkan Anda mengenkripsi dokumen dan cara memeriksa apakah dokumen memiliki enkripsi atau tidak.

## Enkripsi dengan Kata Sandi

Untuk mengenkripsi dokumen, gunakan properti **Password** untuk memberikan kata sandi yang berfungsi sebagai kunci enkripsi. Ini akan mengubah konten dokumen Anda dan membuatnya tidak dapat dibaca. Dokumen terenkripsi harus memasukkan kata sandi ini sebelum dapat dibuka.

{{% alert color="primary" %}}

Anda dapat menemukan properti **Password** yang sesuai untuk format yang diperlukan. Setiap format penyimpanan dokumen memiliki kelas terkait yang berisi opsi penyimpanan untuk format ini. Misalnya, properti [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) di kelas [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) untuk DOC, atau properti [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) di kelas [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) untuk DOCX, DOCM, DOTX, DOTM, dan FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Perhatikan bahwa hanya format dokumen tertentu yang mendukung enkripsi. Misalnya, RTF tidak mendukung enkripsi.

{{% /alert %}}

Tabel di bawah ini mencantumkan format dan algoritme enkripsi yang didukung oleh Aspose.Words:

| Format | Enkripsi yang Didukung saat Memuat | Enkripsi yang Didukung saat Menyimpan |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR enkripsi 40-bit RC4 EncryptionCryptoAPI RC4 Enkripsi | RC4 Enkripsi (40-bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standar EncryptionECMA-376 Enkripsi Tangkas | ECMA-376 Enkripsi Standar (AES128 + SHA1) |
| ODT, OTT | ODF Enkripsi (Blowfish / AES) | ODF Enkripsi (AES256 + SHA256) |
| PDF |  | RC4 Enkripsi (40/128 bit) |

Contoh kode berikut menunjukkan cara mengenkripsi dokumen dengan kata sandi:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Periksa Apakah Dokumen Dienkripsi

Dalam beberapa kasus, Anda mungkin memiliki dokumen yang tidak dapat dibaca dan ingin memastikan bahwa dokumen tersebut dienkripsi dan tidak rusak atau terkompresi.

Untuk mendeteksi apakah dokumen dienkripsi dan jika diperlukan kata sandi, Anda dapat menggunakan properti [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) dari kelas [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/). Properti ini juga memungkinkan Anda melakukan beberapa tindakan sebelum memuat dokumen, misalnya, memberi tahu pengguna untuk memberikan kata sandi.

Contoh kode berikut menunjukkan cara mendeteksi enkripsi dokumen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Buka Dokumen Dengan atau Tanpa Kata Sandi

Ketika kami telah memastikan bahwa sebuah dokumen dienkripsi, kami dapat mencoba membuka dokumen ini tanpa kata sandi, yang akan menyebabkan pengecualian.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi tanpa kata sandi:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Setelah kita melihat bahwa dokumen terenkripsi tidak dapat dibuka tanpa kata sandi, kita dapat mencoba membukanya dengan memasukkan kata sandi.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
