---
title: Bekerja dengan Pengenal Digital di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Tanda Tangan Digital
linktitle: Bekerja dengan Tanda Tangan Digital
description: "Dokumen tanda digital dan mendeteksi, menghitung, memverifikasi, dan menghapus tanda tangan digital yang ada menggunakan JavaSitemap"
type: docs
weight: 30
url: /id/java/working-with-digital-signatures/
---

Tanda tangan digital adalah implementasi teknologi tanda tangan elektronik untuk menandatangani dokumen dan mengotentikkan penandatangan untuk menjamin bahwa dokumen belum dimodifikasi sejak ditandatangani. Setiap tanda tangan digital unik untuk setiap penandatangan karena mengikuti protokol PKI untuk menghasilkan kunci publik dan swasta. Mendaftar dokumen secara digital berarti membuat tanda tangan menggunakan kunci pribadi penanda mana algoritma matematika digunakan untuk mengenkripsi hash yang dihasilkan.

Aspose.Words memungkinkan Anda untuk mendeteksi, menghitung, atau memverifikasi tanda tangan digital yang ada, dan juga menambahkan tanda tangan baru ke dokumen Anda untuk mengetahui setiap tampering di dalamnya. Anda juga dapat menghapus semua tanda tangan digital dari dokumen. Gunakan [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) kelas untuk bekerja dengan tanda tangan digital.

Artikel ini menjelaskan cara melakukan semua di atas untuk memvalidasi keaslian dan integritas dokumen digital.

{{% alert color="primary" %}}

Perhatikan bahwa Anda dapat mengakses tanda tangan digital dokumen Anda hanya ketika menjalankan dokumen Java 6 versi dan di atas.

{{% /alert %}}

{{% alert color="primary" %}}

**Coba online**

Anda dapat mencoba fungsi ini dengan kami [Gratis](https://products.aspose.app/words/signature)Sitemap

{{% /alert %}}

## Sitemap

Aspose.Words memungkinkan Anda untuk bekerja dengan tanda tangan digital pada dokumen DOC, OOXML, dan ODT dan menandatangani dokumen yang dihasilkan di PDF atau XPS Login

## Batasan Tanda Tangan Digital

Tabel di bawah ini menjelaskan beberapa keterbatasan yang dapat Anda hadapi saat bekerja dengan tanda tangan digital melalui Aspose.Words, serta beberapa pilihan alternatif.

|  Login |  Pilihan alternatif |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Rugi tanda tangan digital pada dokumen setelah memuat dan menyimpannya. Oleh karena itu, memproses dokumen ke server dapat menyebabkan hilangnya semua tanda tangan digital tanpa pemberitahuan |  Periksa apakah dokumen memiliki tanda tangan digital dan mengambil tindakan yang tepat jika ada yang ditemukan. Sebagai contoh, kirim peringatan kepada klien memberitahu mereka bahwa dokumen yang mereka unggah berisi tanda tangan digital yang akan hilang jika diproses |
|  Aspose.Words mendukung bekerja dengan makro dalam dokumen. Login Aspose.Words belum mendukung tanda tangan digital pada makro |  Ekspor dokumen kembali ke format Word, dan gunakan Microsoft Word untuk menambahkan tanda tangan digital ke makro |

## Mendeteksi, Menghitung, dan Verifikasi Tanda Tangan Digital

Aspose.Words memungkinkan Anda untuk mendeteksi tanda tangan digital dalam dokumen menggunakan [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) metode dan [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) Login Perlu dicatat bahwa cek tersebut hanya akan mendeteksi fakta tanda tangan, tetapi tidak validitasnya.

Dokumen dapat ditandatangani lebih dari satu kali, dan ini dapat dilakukan oleh pengguna yang berbeda. Untuk memeriksa validitas tanda tangan digital, Anda perlu memuatnya dari dokumen menggunakan [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) metode dan menggunakan [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) Login Sitemap Aspose.Words memungkinkan Anda untuk menghitung satu set semua tanda tangan digital dalam dokumen menggunakan [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) Login

Semua ini memberikan cara yang efisien dan aman untuk memeriksa dokumen tanda tangan sebelum memprosesnya.

Contoh kode berikut menunjukkan cara mendeteksi kehadiran tanda tangan digital dan memverifikasinya:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Buat Tanda Tangan Digital {#create-a-digital-signature}

Untuk membuat tanda tangan digital, Anda harus memuat sertifikat penandatangan yang mengkonfirmasi identitas. Ketika Anda mengirim dokumen yang ditandatangani secara digital, Anda juga mengirim sertifikat dan kunci publik Anda.

Aspose.Words memungkinkan Anda untuk membuat sertifikat X.509, sertifikat digital yang menggunakan standar X.509 PKI yang diterima secara internasional untuk memverifikasi bahwa kunci publik termasuk dalam sertifikat. Untuk melakukan ini, gunakan [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) metode dalam [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) Sitemap

Bagian berikutnya menjelaskan cara menambahkan tanda tangan digital, garis tanda tangan, dan cara menandatangani dokumen PDF yang dihasilkan.

### Daftar Dokumen

Aspose.Words memungkinkan Anda untuk menandatangani dokumen DOC, DOCX, atau ODT secara digital menggunakan [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) metode dan [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) Sitemap

Contoh kode berikut menunjukkan bagaimana menandatangani dokumen menggunakan pemegang sertifikat dan opsi tanda:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Tambahkan Garis Pengenal

Garis tanda tangan adalah representasi visual tanda tangan digital dalam dokumen. Aspose.Words memungkinkan Anda untuk memasukkan garis tanda tangan menggunakan [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) Login Anda juga dapat mengatur parameter untuk representasi ini menggunakan [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) Sitemap

Misalnya, gambar di bawah ini menunjukkan bagaimana tanda tangan yang valid dan tidak valid dapat ditampilkan.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Juga, jika dokumen berisi garis tanda tangan dan tidak ada tanda tangan digital, ada fitur untuk meminta pengguna untuk menambahkan tanda tangan.

Contoh kode berikut menunjukkan bagaimana menandatangani dokumen dengan sertifikat pribadi dan garis tanda tangan tertentu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Daftar Dokumen PDF Hasil {#sign-a-generated-pdf-document}

Aspose.Words memungkinkan Anda untuk menandatangani dan mendapatkan semua rincian dokumen PDF menggunakan [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) Sitemap

Contoh kode berikut menunjukkan cara menandatangani PDF yang dihasilkan:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Gambar di bawah ini menunjukkan bahwa dokumen PDF yang dihasilkan dibuka Adobe Acrobat dan tanda tangan digital diverifikasi sebagai hadiah dan valid.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Dapatkan Nilai Tanda Tangan Digital

Aspose.Words juga menyediakan kemampuan untuk mengambil nilai tanda tangan digital dari dokumen yang ditandatangani secara digital sebagai array byte menggunakan [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) Login

Contoh kode berikut menunjukkan bagaimana memperoleh nilai tanda tangan digital sebagai array byte dari dokumen:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Hapus Tanda Tangan Digital

Aspose.Words memungkinkan Anda untuk menghapus semua tanda tangan digital dari dokumen yang ditandatangani menggunakan [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) Login

Contoh kode berikut menunjukkan cara memuat dan menghapus tanda tangan digital dari dokumen:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Perhatikan bahwa Anda tidak dapat menghapus satu tanda tangan digital dalam dokumen Anda.

{{% /alert %}}
