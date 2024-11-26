---
title: Bekerja dengan Tanda Tangan Digital dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Tanda Tangan Digital
linktitle: Bekerja dengan Tanda Tangan Digital
description: "Tanda tangani dokumen secara digital dan deteksi, hitung, verifikasi, dan hapus tanda tangan digital yang ada menggunakan Java."
type: docs
weight: 30
url: /id/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Tanda tangan digital adalah penerapan teknologi tanda tangan elektronik untuk menandatangani dokumen dan mengotentikasi penandatangan untuk menjamin bahwa suatu dokumen belum diubah sejak ditandatangani. Setiap tanda tangan digital unik untuk setiap penandatangan karena mengikuti protokol PKI untuk menghasilkan kunci publik dan pribadi. Menandatangani dokumen secara digital berarti membuat tanda tangan menggunakan kunci pribadi penandatangan di mana algoritma matematika digunakan untuk mengenkripsi hash yang dihasilkan.

Aspose.Words memungkinkan Anda mendeteksi, menghitung, atau memverifikasi tanda tangan digital yang ada, dan juga menambahkan tanda tangan baru ke dokumen Anda untuk mengetahui adanya gangguan di dalamnya. Anda juga dapat menghapus semua tanda tangan digital dari dokumen. Gunakan kelas [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) untuk bekerja dengan tanda tangan digital.

Artikel ini menjelaskan cara melakukan semua hal di atas untuk memvalidasi keaslian dan integritas dokumen digital.

{{% alert color="primary" %}}

Perhatikan bahwa Anda dapat mengakses tanda tangan digital dokumen Anda hanya saat menjalankan versi Java 6 ke atas.

{{% /alert %}}

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Tanda tangan online gratis](https://products.aspose.app/words/signature).

{{% /alert %}}

## Format yang Didukung

Aspose.Words memungkinkan Anda bekerja dengan tanda tangan digital pada dokumen DOC, OOXML, dan ODT dan menandatangani dokumen yang dihasilkan dalam format PDF atau XPS.

## Keterbatasan Tanda Tangan Digital

Tabel di bawah ini menjelaskan beberapa batasan yang mungkin Anda hadapi saat bekerja dengan tanda tangan digital melalui Aspose.Words, serta beberapa opsi alternatif.

| Batasan | Opsi alternatif |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Hilangnya tanda tangan digital pada dokumen setelah memuat dan menyimpannya. Oleh karena itu, memproses dokumen ke server dapat menyebabkan hilangnya semua tanda tangan digital tanpa pemberitahuan. | Periksa apakah dokumen memiliki tanda tangan digital dan lakukan tindakan yang sesuai jika ditemukan. Misalnya, kirim peringatan kepada klien yang memberi tahu mereka bahwa dokumen yang mereka unggah berisi tanda tangan digital yang akan hilang jika diproses. |
| Aspose.Words mendukung bekerja dengan makro dalam dokumen. Tetapi Aspose.Words belum mendukung tanda tangan digital pada makro. | Ekspor kembali dokumen ke format Word apa pun, dan gunakan Microsoft Word untuk menambahkan tanda tangan digital ke makro. |

## Mendeteksi, Menghitung, dan Memverifikasi Tanda Tangan Digital

Aspose.Words memungkinkan Anda mendeteksi tanda tangan digital dalam dokumen menggunakan metode [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) dan properti [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature). Perlu dicatat bahwa pemeriksaan semacam itu hanya akan mendeteksi fakta tanda tangan, tetapi bukan validitasnya.

Sebuah dokumen dapat ditandatangani lebih dari satu kali, dan ini dapat dilakukan oleh pengguna yang berbeda. Untuk memeriksa validitas tanda tangan digital, Anda perlu memuatnya dari dokumen menggunakan metode [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) dan menggunakan properti [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid). Juga Aspose.Words memungkinkan Anda menghitung satu set semua tanda tangan digital dalam dokumen menggunakan properti [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount).

Semua ini menyediakan cara yang efisien dan aman untuk memeriksa tanda tangan dokumen sebelum memprosesnya.

Contoh kode berikut menunjukkan cara mendeteksi keberadaan tanda tangan digital dan memverifikasinya:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Buat Tanda Tangan Digital {#create-a-digital-signature}

Untuk membuat tanda tangan digital, Anda perlu memuat sertifikat penandatanganan yang mengonfirmasi identitas. Saat Anda mengirim dokumen yang ditandatangani secara digital, Anda juga mengirimkan sertifikat dan kunci publik Anda.

Aspose.Words memungkinkan Anda membuat sertifikat X. 509, sertifikat digital yang menggunakan standar X. 509 PKI yang diterima secara internasional untuk memverifikasi bahwa kunci publik milik penandatangan yang disertakan di dalam sertifikat. Untuk melakukannya, gunakan metode [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) dalam kelas [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/).

Bagian selanjutnya menjelaskan cara menambahkan tanda tangan digital, baris tanda tangan, dan cara menandatangani dokumen PDF yang dihasilkan.

### Tanda Tangani Dokumen

Aspose.Words memungkinkan Anda menandatangani dokumen DOC, DOCX, atau ODT secara digital menggunakan metode [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) dan properti [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/).

Contoh kode berikut menunjukkan cara menandatangani dokumen menggunakan pemegang sertifikat dan opsi tanda tangan:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Tambahkan Baris Tanda Tangan

Garis tanda tangan adalah representasi visual dari tanda tangan digital dalam sebuah dokumen. Aspose.Words memungkinkan Anda menyisipkan baris tanda tangan menggunakan metode [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions). Anda juga dapat mengatur parameter untuk representasi ini menggunakan kelas [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/).

Misalnya, gambar di bawah ini menunjukkan bagaimana tanda tangan yang valid dan tidak valid dapat ditampilkan.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Selain itu, jika dokumen berisi baris tanda tangan dan tidak ada tanda tangan digital, ada fitur untuk meminta pengguna menambahkan tanda tangan.

Contoh kode berikut menunjukkan cara menandatangani dokumen dengan sertifikat pribadi dan baris tanda tangan tertentu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Tanda tangani Dokumen PDF yang Dihasilkan {#sign-a-generated-pdf-document}

Aspose.Words memungkinkan Anda menandatangani dan mendapatkan semua detail dokumen PDF menggunakan properti [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/).

Contoh kode berikut menunjukkan cara menandatangani PDFyang dihasilkan:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Gambar di bawah ini menunjukkan bahwa dokumen PDF yang dihasilkan dibuka dalam Adobe Acrobat dan tanda tangan digital diverifikasi sebagai ada dan valid.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Mengambil Nilai Tanda Tangan Digital

Aspose.Words juga menyediakan kemampuan untuk mengambil nilai tanda tangan digital dari dokumen yang ditandatangani secara digital sebagai larik byte menggunakan properti [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue).

Contoh kode berikut menunjukkan cara mendapatkan nilai tanda tangan digital sebagai larik byte dari dokumen:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Hapus Tanda Tangan Digital

Aspose.Words memungkinkan Anda menghapus semua tanda tangan digital dari dokumen yang ditandatangani menggunakan metode [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream).

Contoh kode berikut menunjukkan cara memuat dan menghapus tanda tangan digital dari dokumen:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Perhatikan bahwa Anda tidak dapat menghapus hanya satu tanda tangan digital dalam dokumen Anda.

{{% /alert %}}
