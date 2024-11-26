---
title: Bekerja dengan Tanda Tangan Digital
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Tanda Tangan Digital
linktitle: Bekerja dengan Tanda Tangan Digital
description: "Tanda tangani dokumen secara digital dan deteksi, hitung, verifikasi, dan hapus tanda tangan digital yang ada menggunakan Python."
type: docs
weight: 40
url: /id/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Tanda tangan digital digunakan untuk mengautentikasi suatu dokumen untuk menetapkan bahwa pengirim dokumen tersebut adalah siapa mereka dan isi dokumen tersebut tidak diubah.

Aspose.Words mendukung dokumen dengan tanda tangan digital dan menyediakan akses ke dokumen tersebut sehingga memungkinkan Anda mendeteksi dan memvalidasi tanda tangan digital pada dokumen dan menandatangani dokumen PDF yang dihasilkan dengan sertifikat yang disediakan. Saat ini tanda tangan digital didukung pada dokumen DOC, OOXML dan ODT. Penandatanganan dokumen yang dihasilkan didukung dalam format PDF.

{{% alert color="primary" %}}

**Coba daring**

Anda dapat mencoba fungsi ini dengan [Tanda tangan online gratis](https://products.aspose.app/words/signature) kami.

{{% /alert %}}

## Tanda Tangan Digital tidak Diawetkan saat Dibuka dan Disimpan

Hal penting yang perlu diperhatikan adalah bahwa dokumen yang dimuat dan kemudian disimpan menggunakan Aspose.Words akan kehilangan tanda tangan digital apa pun yang ditandatangani pada dokumen tersebut. Ini dirancang sebagai tanda tangan digital untuk memastikan bahwa kontennya tidak diubah dan selanjutnya mengautentikasi identitas orang yang menandatangani dokumen tersebut. Prinsip-prinsip ini akan menjadi tidak berlaku jika tanda tangan asli dipindahkan ke dokumen yang dihasilkan.

Oleh karena itu, jika Anda memproses dokumen yang diunggah ke server, hal ini berpotensi berarti Anda dapat merusak dokumen yang diunggah ke server Anda dengan cara ini tanpa menyadarinya. Oleh karena itu yang terbaik adalah memeriksa tanda tangan digital pada suatu dokumen dan mengambil tindakan yang tepat jika ditemukan, misalnya peringatan dapat dikirimkan kepada klien untuk memberi tahu mereka bahwa dokumen yang mereka lewati berisi tanda tangan digital yang akan hilang jika ada. diproses. Anda dapat mendownload file template contoh ini dari [Di Sini](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Kode di atas menggunakan metode [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) untuk mendeteksi apakah suatu dokumen berisi tanda tangan digital tanpa memuat dokumen terlebih dahulu. Ini memberikan cara yang efisien dan aman untuk memeriksa tanda tangan dokumen sebelum memprosesnya. Saat dijalankan, metode ini mengembalikan objek [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) yang menyediakan properti [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Properti ini mengembalikan true jika dokumen berisi satu atau lebih tanda tangan digital. Penting untuk diingat bahwa metode ini tidak memvalidasi tanda tangan, melainkan hanya menentukan apakah ada tanda tangan. Memvalidasi tanda tangan digital dibahas di bagian selanjutnya.

{{% alert color="primary" %}}

Anda juga dapat memeriksa apakah suatu dokumen memiliki tanda tangan digital setelah dimuat dengan memeriksa properti `Count` dari koleksi [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Tanda Tangan Digital pada Makro (Proyek VBA)

Tanda tangan digital pada makro tidak dapat diakses atau ditandatangani. Hal ini dikarenakan Aspose.Words tidak berhubungan langsung dengan makro dalam suatu dokumen. Namun tanda tangan digital pada makro dipertahankan saat mengekspor dokumen kembali ke format Word apa pun. Tanda tangan ini dapat dipertahankan pada kode VBA karena konten biner makro tidak berubah meskipun dokumen itu sendiri diubah.

### Akses dan Verifikasi Tanda Tangan Digital

Sebuah dokumen dapat memiliki banyak tanda tangan digital. Semua tanda tangan ini dapat diakses melalui koleksi [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Setiap objek yang dikembalikan adalah [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) yang mewakili satu tanda tangan digital milik dokumen tersebut. Ini memberikan anggota yang memungkinkan Anda untuk memeriksa validitas tanda tangan.

Properti terpenting yang harus diperiksa dengan tanda tangan digital adalah validitas setiap tanda tangan dalam dokumen. Semua tanda tangan dalam dokumen dapat divalidasi sekaligus dengan memanggil properti [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Ini akan mengembalikan true jika semua tanda tangan dalam dokumen valid atau jika dokumen tidak memiliki tanda tangan dan false jika setidaknya satu tanda tangan digital tidak valid.

Setiap tanda tangan juga dapat divalidasi secara individual dengan memanggil [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Suatu tanda tangan dapat menjadi tidak sah karena beberapa alasan, misalnya dokumen telah diubah sejak penandatanganan atau sertifikat telah habis masa berlakunya. Selain itu rincian tambahan dari tanda tangan juga dapat diakses. Contoh kode di bawah ini menunjukkan cara memvalidasi setiap tanda tangan dalam dokumen dan menampilkan informasi dasar tentang tanda tangan. Anda dapat mengunduh file template contoh ini dari [Di Sini](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Menandatangani Dokumen Word

Kelas [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) menyediakan metode untuk menandatangani dokumen. Metode [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) menandatangani dokumen sumber menggunakan [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) yang diberikan dengan tanda tangan digital dan menulis dokumen yang ditandatangani ke aliran tujuan

Contoh di bawah ini menunjukkan cara menandatangani dokumen sederhana

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Contoh di bawah ini menunjukkan cara menandatangani dokumen terenkripsi

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Menandatangani dokumen Word dengan Signature Line

Anda dapat menandatangani dokumen sumber menggunakan [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) dan [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) yang diberikan dengan tanda tangan digital dan menulis dokumen yang ditandatangani ke file tujuan. Menggunakan kelas [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) Anda dapat menentukan opsi untuk penandatanganan dokumen. Contoh di bawah ini menunjukkan cara membuat baris tanda tangan baru dan menandatangani dokumen

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Contoh di bawah ini menunjukkan cara mengubah baris tanda tangan yang ada dan menandatangani dokumen

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Menandatangani Dokumen Word menggunakan Pengidentifikasi Penyedia Tanda Tangan

Contoh di bawah ini menunjukkan cara menandatangani dokumen Word menggunakan pengidentifikasi penyedia tanda tangan. Penyedia layanan kriptografi (CSP) adalah modul perangkat lunak independen yang benar-benar menjalankan algoritma kriptografi untuk otentikasi, pengkodean, dan enkripsi. MS Office mencadangkan nilai {00000000-0000-0000-0000-000000000000} untuk penyedia tanda tangan defaultnya.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Buat Dokumen Kata Tanda Tangan Baris Tanda Tangan Baru menggunakan Pengidentifikasi Penyedia

Contoh di bawah ini menunjukkan cara membuat baris tanda tangan dan menandatangani dokumen Word menggunakan pengidentifikasi penyedia tanda tangan.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Ambil Nilai Tanda Tangan Digital

Aspose.Words juga menyediakan kemampuan untuk mengambil nilai tanda tangan digital dari dokumen yang ditandatangani secara digital sebagai array byte menggunakan properti [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

Contoh kode berikut menunjukkan cara mendapatkan nilai tanda tangan digital sebagai array byte dari dokumen:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
