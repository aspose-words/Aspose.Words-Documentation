---
title: Mengenkripsi Dokumen dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Mengenkripsi Dokumen
linktitle: Mengenkripsi Dokumen
description: "Enkripsi dokumen Anda menggunakan algoritma enkripsi yang sesuai untuk format dokumen tertentu dalam JavaSitemap"
type: docs
weight: 20
url: /id/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Enkripsi adalah proses yang menerjemahkan teks yang dapat dibaca untuk urutan tak bermakna dari byte sehingga hanya dapat dibaca oleh orang yang memiliki kunci dekripsi atau kode rahasia. Proses ini memainkan peran penting dalam mengamankan konten Anda. Ini membantu untuk mengkodekan konten, memverifikasi asal dokumen, membuktikan bahwa konten tidak dimodifikasi setelah dikirim, dan memastikan bahwa data dari dokumen aman.

Artikel ini menjelaskan bagaimana Aspose.Words memungkinkan Anda untuk mengenkripsi dokumen dan cara memeriksa apakah dokumen memiliki enkripsi atau tidak.

## Enkripsi dengan Password

Untuk mengenkripsi dokumen, gunakan **Password** properti untuk menyediakan kata sandi yang berfungsi sebagai kunci enkripsi. Ini akan memodifikasi konten dokumen Anda dan membuatnya tidak dibaca. Dokumen yang dienkripsi akan membutuhkan kata sandi ini yang dimasukkan sebelum dapat dibuka.

{{% alert color="primary" %}}

Anda dapat menemukan yang tepat **Password** properti untuk format yang diperlukan. Setiap dokumen menyimpan format memiliki kelas yang sesuai yang berisi menyimpan opsi untuk format ini. Sebagai contoh, [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) properti di [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) kelas untuk DOC, atau [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) properti di [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) kelas untuk DOCX, DOCM, DOTLogin DOTM, dan FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Perhatikan bahwa hanya enkripsi dukungan format dokumen tertentu. Sebagai contoh, RTF tidak mendukung enkripsi.

{{% /alert %}}

Tabel di bawah ini daftar format dan algoritma enkripsi yang didukung oleh Aspose.WordsSitemap

| Login |  Enkripsi Didukung sementara Pemuatan |  Enkripsi yang didukung saat Tabungan |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  Login DOT |  XOR enkripsi40-bit RC4 EnkripsiCryptoAPI RC4 Enkripsi |  RC4 Enkripsi (40-bit) |
|  Login DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Enkripsi Standar ECMA-376 Agile |  Enkripsi Standar ECMA-376 (AES128 + SHA1) |
|  Login |  ODF Enkripsi (Blowfish/AES) |  AES256 + SHA256 |
|  Login |  -                                                            |  RC4 Enkripsi (40/128 bit) |

Contoh kode berikut menunjukkan cara mengenkripsi dokumen dengan kata sandi:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Cek Jika Dokumen Dienkripsi

Dalam beberapa kasus, Anda mungkin memiliki dokumen yang belum dibaca dan ingin yakin bahwa dokumen dienkripsi dan tidak rusak atau dikompresi.

Untuk mendeteksi apakah dokumen dienkripsi dan jika kata sandi diperlukan, Anda dapat menggunakan [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) properti [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) Sitemap Properti ini juga akan memungkinkan Anda untuk melakukan beberapa tindakan sebelum memuat dokumen, misalnya, menginformasikan pengguna untuk memberikan kata sandi.

Contoh kode berikut menunjukkan bagaimana mendeteksi enkripsi dokumen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Buka Dokumen Dengan atau Tanpa Password

Ketika kita telah memastikan bahwa dokumen dienkripsi, kita dapat mencoba membuka dokumen ini tanpa kata sandi, yang harus menyebabkan pengecualian.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi tanpa kata sandi:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Setelah kita melihat bahwa dokumen terenkripsi tidak dapat dibuka tanpa kata sandi, kita dapat mencoba membukanya dengan memasukkan kata sandi.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi dengan kata sandi:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
