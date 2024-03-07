---
title: Enkripsi Dokumen di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Enkripsi Dokumen
linktitle: Enkripsi Dokumen
description: "Enkripsi dokumen Anda menggunakan algoritma enkripsi yang sesuai untuk format dokumen tertentu di Python."
type: docs
weight: 20
url: /id/python-net/encrypt-a-document/
---

Enkripsi adalah proses menerjemahkan teks yang dapat dibaca menjadi rangkaian byte yang tidak berarti sehingga hanya dapat dibaca oleh orang yang memiliki kunci dekripsi atau kode rahasia. Proses ini memainkan peran penting dalam mengamankan konten Anda. Ini membantu untuk menyandikan konten, memverifikasi asal dokumen, membuktikan bahwa konten belum diubah setelah dikirim, dan memastikan bahwa data dari dokumen tersebut aman.

Artikel ini menjelaskan bagaimana Aspose.Words memungkinkan Anda mengenkripsi dokumen dan cara memeriksa apakah dokumen memiliki enkripsi atau tidak.

## Enkripsi dengan Kata Sandi

Untuk mengenkripsi dokumen, gunakan properti **kata sandi** untuk memberikan kata sandi yang berfungsi sebagai kunci enkripsi. Ini akan mengubah konten dokumen Anda dan membuatnya tidak dapat dibaca. Dokumen terenkripsi memerlukan kata sandi ini untuk dimasukkan sebelum dapat dibuka.

{{% alert color="primary" %}}

Anda dapat menemukan properti **kata sandi** yang sesuai untuk format yang diperlukan. Setiap format penyimpanan dokumen dalam modul [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) memiliki kelas terkait yang berisi opsi penyimpanan untuk format ini. Misalnya properti [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) di kelas [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) untuk DOC, atau properti [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) di kelas [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) untuk DOCX, DOCM, DOTX, DOTM, dan FlatOpc.

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
|  PDF |                                                          |  Enkripsi RC4 (40/128bit) |

Contoh kode berikut menunjukkan cara mengenkripsi dokumen dengan kata sandi:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## Periksa Apakah Dokumen Dienkripsi

Dalam beberapa kasus, Anda mungkin memiliki dokumen yang tidak dapat dibaca dan ingin memastikan bahwa dokumen tersebut dienkripsi dan tidak rusak atau terkompresi.

Untuk mendeteksi apakah suatu dokumen dienkripsi dan apakah kata sandi diperlukan, Anda dapat menggunakan properti [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) dari kelas [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Properti ini juga memungkinkan Anda melakukan beberapa tindakan sebelum memuat dokumen, misalnya, memberi tahu pengguna untuk memberikan kata sandi.

Contoh kode berikut menunjukkan cara mendeteksi enkripsi dokumen:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## Buka Dokumen Dengan atau Tanpa Kata Sandi

Ketika kami telah memastikan bahwa suatu dokumen dienkripsi, kami dapat mencoba membuka dokumen itu tanpa kata sandi, yang akan menghasilkan pengecualian.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi tanpa kata sandi:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

Setelah kita melihat bahwa dokumen terenkripsi tidak dapat dibuka tanpa password, kita bisa mencoba membukanya dengan memasukkan password.

Contoh kode berikut menunjukkan cara mencoba membuka dokumen terenkripsi dengan kata sandi:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
