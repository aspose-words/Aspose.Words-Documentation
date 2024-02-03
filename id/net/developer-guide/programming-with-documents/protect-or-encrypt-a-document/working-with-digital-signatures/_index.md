---
title: Bekerja dengan Tanda Tangan Digital di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Tanda Tangan Digital
linktitle: Bekerja dengan Tanda Tangan Digital
description: "Tanda tangani dokumen secara digital dan deteksi, hitung, verifikasi, dan hapus tanda tangan digital yang ada menggunakan C#."
type: docs
weight: 40
url: /id/net/working-with-digital-signatures/
---

Tanda tangan digital merupakan penerapan teknologi tanda tangan elektronik untuk menandatangani dokumen dan mengotentikasi penandatangannya untuk menjamin bahwa suatu dokumen tidak mengalami perubahan sejak ditandatangani. Setiap tanda tangan digital bersifat unik bagi setiap penandatangan karena mengikuti protokol PKI untuk menghasilkan kunci publik dan privat. Menandatangani dokumen secara digital berarti membuat tanda tangan menggunakan kunci pribadi penanda tangan dimana algoritma matematika digunakan untuk mengenkripsi hash yang dihasilkan.

Aspose.Words memungkinkan Anda mendeteksi, menghitung, atau memverifikasi tanda tangan digital yang ada, dan juga menambahkan tanda tangan baru ke dokumen Anda untuk mengetahui adanya gangguan di dalamnya. Anda juga dapat menghapus semua tanda tangan digital dari suatu dokumen. Gunakan kelas [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) untuk bekerja dengan tanda tangan digital.

Artikel ini menjelaskan cara melakukan semua hal di atas untuk memvalidasi keaslian dan integritas dokumen digital.

{{% alert color="primary" %}}

Perhatikan bahwa Anda dapat mengakses tanda tangan digital dokumen Anda hanya ketika menjalankan .NET Framework versi 2.0 dan yang lebih baru.

{{% /alert %}}

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi ini dengan [Tanda tangan online gratis](https://products.aspose.app/words/signature) kami.

{{% /alert %}}

## Format yang Didukung

Aspose.Words memungkinkan Anda bekerja dengan tanda tangan digital pada dokumen DOC, OOXML, dan ODT dan menandatangani dokumen yang dihasilkan dalam format PDF atau XPS.

## Keterbatasan Tanda Tangan Digital

Tabel di bawah menjelaskan beberapa keterbatasan yang mungkin Anda hadapi saat bekerja dengan tanda tangan digital melalui Aspose.Words, serta beberapa opsi alternatif.

|  Keterbatasan |  Opsi Alternatif |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Hilangnya tanda tangan digital pada suatu dokumen setelah memuat dan menyimpannya. Oleh karena itu, pemrosesan dokumen ke server dapat menyebabkan hilangnya seluruh tanda tangan digital tanpa pemberitahuan |  Periksa apakah suatu dokumen memiliki tanda tangan digital dan ambil tindakan yang sesuai jika ditemukan. Misalnya, mengirimkan peringatan kepada klien untuk memberitahukan bahwa dokumen yang mereka unggah berisi tanda tangan digital yang akan hilang jika diproses |
|  Aspose.Words mendukung bekerja dengan makro dalam dokumen. Namun Aspose.Words belum mendukung tanda tangan digital pada makro |  Ekspor dokumen kembali ke format Word apa pun, dan gunakan Microsoft Word untuk menambahkan tanda tangan digital ke makro |

## Deteksi, Hitung, dan Verifikasi Tanda Tangan Digital

Aspose.Words memungkinkan Anda mendeteksi tanda tangan digital dalam dokumen menggunakan metode [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) dan properti [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/). Perlu dicatat bahwa pemeriksaan semacam itu hanya akan mendeteksi fakta tanda tangan, namun tidak validitasnya.

Sebuah dokumen dapat ditandatangani lebih dari satu kali, dan ini dapat dilakukan oleh pengguna yang berbeda. Untuk memeriksa validitas tanda tangan digital, Anda perlu memuatnya dari dokumen menggunakan metode [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) dan menggunakan properti [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Aspose.Words juga memungkinkan Anda menghitung kumpulan semua tanda tangan digital dalam dokumen menggunakan properti [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Semua ini memberikan cara yang efisien dan aman untuk memeriksa tanda tangan dokumen sebelum memprosesnya.

Contoh kode berikut menunjukkan cara mendeteksi keberadaan tanda tangan digital dan memverifikasinya:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Buat {#create-a-digital-signature} Tanda Tangan Digital

Untuk membuat tanda tangan digital, Anda perlu memuat sertifikat penandatanganan yang mengonfirmasi identitas. Saat Anda mengirim dokumen yang ditandatangani secara digital, Anda juga mengirimkan sertifikat dan kunci publik Anda.

Aspose.Words memungkinkan Anda membuat sertifikat X.509, sertifikat digital yang menggunakan standar PKI X.509 yang diterima secara internasional untuk memverifikasi bahwa kunci publik adalah milik penanda tangan yang termasuk dalam sertifikat. Untuk melakukannya, gunakan metode [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) dalam kelas [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/).

Bagian selanjutnya menjelaskan cara menambahkan tanda tangan digital, baris tanda tangan, dan cara menandatangani dokumen PDF yang dihasilkan.

### Menandatangani Dokumen

Aspose.Words memungkinkan Anda menandatangani dokumen DOC, DOCX, XPS, atau ODT secara digital menggunakan metode [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) dan properti [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/).

Contoh kode berikut menunjukkan cara menandatangani dokumen menggunakan pemegang sertifikat dan opsi tanda tangan:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Tambahkan Baris Tanda Tangan

Garis tanda tangan adalah representasi visual dari tanda tangan digital dalam sebuah dokumen. Aspose.Words memungkinkan Anda menyisipkan baris tanda tangan menggunakan metode [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/). Anda juga dapat mengatur parameter untuk representasi ini menggunakan kelas [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/).

Misalnya gambar di bawah ini menunjukkan bagaimana tanda tangan sah dan tidak sah dapat ditampilkan.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="menggambar" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="menggambar" style="width:300px"/>

Selain itu, jika dokumen berisi baris tanda tangan dan tidak ada tanda tangan digital, terdapat fitur untuk meminta pengguna menambahkan tanda tangan.

Contoh kode berikut menunjukkan cara menandatangani dokumen dengan sertifikat pribadi dan baris tanda tangan tertentu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Tanda tangani Dokumen PDF yang Dihasilkan {#sign-a-generated-pdf-document}

Aspose.Words memungkinkan Anda menandatangani dan mendapatkan semua detail dokumen PDF menggunakan properti [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/).

Contoh kode berikut menunjukkan cara menandatangani PDF yang dihasilkan:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Ambil Nilai Tanda Tangan Digital

Aspose.Words juga menyediakan kemampuan untuk mengambil nilai tanda tangan digital dari dokumen yang ditandatangani secara digital sebagai array byte menggunakan properti [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

Contoh kode berikut menunjukkan cara mendapatkan nilai tanda tangan digital sebagai array byte dari dokumen:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Hapus Tanda Tangan Digital

Aspose.Words memungkinkan Anda menghapus semua tanda tangan digital dari dokumen yang ditandatangani menggunakan metode [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

Contoh kode berikut menunjukkan cara memuat dan menghapus tanda tangan digital dari dokumen:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Perhatikan bahwa Anda tidak dapat menghapus hanya satu tanda tangan digital dalam dokumen Anda.

{{% /alert %}}
