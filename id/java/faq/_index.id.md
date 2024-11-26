---
title: FAQ
second_title: Aspose.Words untuk Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words untuk Java menjawab pertanyaan yang paling sering diajukan. Pelajari halaman ini untuk menyelesaikan masalah Anda dengan cepat pada pertanyaan umum atau topik tertentu."
weight: 75
url: /id/java/faq/
timestamp: 2024-01-31-14-23-37
---

Halaman ini berisi jawaban atas pertanyaan yang paling sering diajukan. Silakan pelajari halaman saat ini-mungkin ini akan memungkinkan Anda untuk menyelesaikan masalah Anda dengan cepat.

Jika Anda belum menemukan jawaban atas pertanyaan Anda, Anda dapat bertanya di forum dukungan. Untuk informasi tentang cara melaporkan pertanyaan atau masalah Anda dengan benar, lihat bagian [Dukungan Teknik](/words/java/technical-support/) halaman.

{{% alert color="primary" %}}

Pertanyaan yang sering diajukan dikelompokkan berdasarkan topik untuk kenyamanan Anda.

{{% /alert %}}

## Umum

**T: Apa itu Aspose.Words?**

Aspose.Words untuk Java adalah pustaka kelas yang memungkinkan aplikasi Anda melakukan berbagai tugas pemrosesan dokumen. Dengan Aspose.Words untuk Java, Anda dapat membuat, memodifikasi, mengonversi, merender, dan mencetak dokumen tanpa aplikasi pihak ketiga.

Detailnya dapat ditemukan di dokumentasi kami.

------

**T: Apa artinya "Aspose.Words tidak memerlukan aplikasi pihak ketiga"?**

Aspose.Words untuk Java tidak perlu menginstal aplikasi pihak ketiga atau paket perangkat lunak tambahan apa pun agar berfungsi. Cukup unduh dan instal Aspose.Words seperti yang dijelaskan dalam [Instalasi](/words/java/installation/) artikel dan mulai.

------

**T: Platform apa yang didukung Aspose.Words?**

Aspose.Words untuk Java mencakup sebagian besar lingkungan pengembangan dan platform penerapan yang populer. Its API dapat digunakan untuk mengembangkan aplikasi untuk berbagai sistem operasi seperti Windows, Linux, dan Mac OS, dan berbagai platform.

Untuk detailnya, lihat [Sekilas Produk](/words/java/product-overview/) halaman dan [Platform dan kemungkinan mendapatkan Interop](/words/java/platforms-and-interoperability/) bagian.

------

**T: Format dokumen apa yang didukung oleh Aspose.Words?**

Aspose.Words untuk Java mendukung sebagian besar format dokumen populer seperti DOC, DOCX, HTML, Markdown, PDF, XML, dan lainnya.

Anda dapat melihat daftar lengkap format yang didukung di [Format Dokumen yang Disertakan](/words/java/supported-document-formats/) halaman.

------

**T: Bagaimana saya bisa mencoba Aspose.Words gratis?**

Anda dapat melakukannya dengan dua cara-menggunakan versi Uji Coba atau Lisensi Sementara selama 30 hari. Versi Uji Coba sama dengan yang dibeli, versi ini menyediakan fungsionalitas produk lengkap tetapi menambahkan tanda air evaluatif di bagian atas dokumen saat memuat dan menyimpan dan membatasi ukuran dokumen maksimum hingga beberapa ratus paragraf. Lisensi Sementara memungkinkan Anda menguji Aspose.Words tanpa batasan Uji Coba selama 30 hari.

Lihat [Lisensi dan Tangganan](/words/java/licensing/) halaman untuk informasi lebih lanjut.

{{% alert color="primary" %}}

Anda juga dapat mencoba beberapa fitur Aspose.Words paling populer melalui [Aspose.Words Aplikasi online gratis](https://products.aspose.app/words).

{{% /alert %}}

------

**T: Bagaimana saya bisa membeli Aspose.Words?**

Untuk membeli lisensi Aspose.Words, Anda harus pergi ke [Pembelian](https://purchase.aspose.com/buy) halaman, pilih produk "Aspose.Words " dan jenis lisensi yang sesuai untuk Anda. Kemudian tambahkan lisensi ke keranjang Anda dan ikuti petunjuk Keranjang Belanja.

Setelah membeli, ajukan lisensi seperti yang dijelaskan dalam [Lisensi yang Dibeli](/words/java/licensing/#purchased-license) bagian.

Detail tentang cara menginstal Aspose.Words dapat dibaca di [Instalasi](/words/java/installation/) halaman.

------

**T: Bagaimana saya bisa mendapatkan dukungan?**

Gunakan forum dukungan teknis gratis. Untuk detail tentang cara melaporkan masalah dengan benar dan apa yang perlu dilakukan sebelum menghubungi forum, lihat bagian [Dukungan Teknik](/words/java/technical-support/) halaman.

## Merender Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang rendering di [Rendering](/words/java/rendering/) bagian dokumentasi.

{{% /alert %}}

**T: Mengapa tata letak dan font dalam dokumen keluaran berbeda dari aslinya?**

Font mungkin tidak tersedia, atau format font didukung oleh Microsoft Word tetapi tidak didukung oleh Aspose.Words. Aspose.Words akan tampil [penggantian fonta](/words/java/manipulate-and-substitute-truetype-fonts/).

Untuk memeriksa apakah font tidak ada:

- Di Aspose.Words gunakan peringatan penggantian font (untuk detailnya, lihat bagian "Cara Mengenali Bahwa Font Telah Diganti" di [Mengatur dan Mengganti TrueType Font](/words/java/manipulate-and-substitute-truetype-fonts/) artikel).
- Di Microsoft Word buka kotak dialog "Substitusi Font" (File → Options → Advanced Substitution Substitusi Font).

------

**T: Mengapa fallback font tidak berfungsi pada platform non-Windows dan karakter Unicode diganti dengan.mesin terbang notdef?**

Kita sering dapat melihat mesin terbang `.notdef` alih-alih beberapa karakter Unicode. Ini biasanya kotak atau mesin terbang pertanyaan.

Ini karena pengaturan fallback Office Microsoft dipilih secara default, dan font Office Microsoft tidak tersedia. Pengguna harus menginstal Microsoft font Office atau mengubah pengaturan fallback.

------

**T: Mengapa teks skrip yang rumit, seperti bahasa Thailand atau Ibrani, ditampilkan secara tidak akurat karena beberapa alasan, seperti posisi diakritik yang salah atau pengikat yang tidak akurat?**

Beberapa font skrip yang kompleks memerlukan fitur Tipografi Tingkat Lanjut untuk diproses agar dapat menampilkannya dengan benar. Tipografi Tingkat Lanjut dinonaktifkan di Aspose.Words secara default. Pengguna harus mengaktifkan Tipografi Tingkat Lanjut dengan [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**T: Apakah saya memerlukan file lisensi untuk font yang saya gunakan?**

Ya, Anda lakukan. Oleh karena itu, saat menyalin font, perlu diingat bahwa sebagian besar font memiliki hak cipta. Temukan lisensi font sebelumnya dan verifikasi bahwa lisensi tersebut dapat ditransfer secara bebas ke komputer lain.

## Bersarang Mail Merge

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang Mail Merge di [Mail Merge dan Pelaporan](/words/java/mail-merge-and-reporting/) bagian dokumentasi.

{{% /alert %}}

**T: Mengapa tidak ada bidang gabungan dalam output yang dihasilkan?**

Nama asli bidang penggabungan tetap sama tanpa diganti dengan data yang diperlukan dari sumber data, lalu:

- Periksa apakah data dimuat dengan benar ke dalam tabel: setel [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) dengan benar dengan semua kunci utama dan relasi yang diperlukan.
- Periksa apakah bidang gabungan diberi nama dengan benar. Gunakan metode [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) untuk mendapatkan semua nama bidang gabungan dan memastikan bahwa nama bidang gabungan di templat Anda cocok dengan yang ada di sumber data Anda.

------

**T: Mengapa keluaran penggabungan bersarang tidak menampilkan data dari tabel turunan untuk entri pertama di tabel induk tetapi menampilkan semua item untuk entri terakhir di tabel induk, bahkan item yang sebenarnya tidak ditautkan dengannya?**

Ini karena wilayah gabungan dalam templat tidak terbentuk dengan benar, yang dapat membuat semua wilayah Mail Merge bersarang berhenti menampilkan apa pun. Tag pembuka [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) dan tag penutup [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) harus cocok dan berada di baris atau sel yang sama. Misalnya, jika Anda mulai menyarangkan wilayah penggabungan dalam sel tabel, Anda harus mengakhiri wilayah penggabungan di baris yang sama dengan sel pertama.

------

**T: Mengapa setiap entri dari tabel induk menampilkan setiap item di tabel turunan, bahkan item yang sebenarnya tidak ditautkan dengannya?**

Ini karena hubungan antara tabel induk dan tabel turunan tidak diatur atau pengaturannya salah. Hal ini diperlukan untuk:

- Pastikan integritas data dalam **DataSet** Anda dan gunakan objek **DataRelation** untuk merepresentasikan hubungan induk-anak antara tabel data terkait.
- Periksa bagian "Cara Mengatur Relasi Data dalam Mail Merge Bersarang dengan Wilayah" di artikel [Mulai Mail Merge dengan Wilayah](/words/java/nested-mail-merge-with-regions/).

------

**T: Mengapa pengecualian: "Sistem.ArgumentException: Batasan ini tidak dapat diaktifkan karena tidak semua nilai memiliki nilai induk yang sesuai" saat menjalankan mail merge bersarang?**

Hal ini terjadi karena tidak semua catatan induk memiliki catatan turunan sehingga sumber data Anda tidak sesuai dengan kriteria berikut: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Nonaktifkan batasan kunci asing saat Anda membuat **DataRelation**.

## Menambahkan atau Menyisipkan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang pemrograman dengan dokumen di [Pemrograman dengan Dokumen](/words/java/programming-with-documents/) bagian dokumentasi.

{{% /alert %}}

**T: Mengapa konten yang ditambahkan ke dokumen tidak muncul di halaman yang sama?**

Hasil append muncul di halaman terpisah karena perbedaan pengaturan [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) untuk bagian tempat dokumen ditambahkan bersama. Buat pengaturan **PageSetup** yang identik untuk bagian tempat dokumen ditambahkan bersama.

## Konversikan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang mengonversi dokumen di [Konversikan Dokumen](/words/java/convert-a-document/) bagian dokumentasi.

{{% /alert %}}

**T: Bagaimana cara mengubah DOCX menjadi PDF?**

Ini juga sangat mudah, cukup muat dokumen ke model dan simpan ke format apa pun yang didukung.

Contoh kode berikut menunjukkan proses pengubahan file DOCX menjadi PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Memanipulasi dengan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang pemrograman dengan dokumen di [Pemrograman dengan Dokumen](/words/java/programming-with-documents/) bagian dokumentasi.

{{% /alert %}}

**T: Bagaimana cara membagi dokumen halaman demi halaman?**

Aspose.Words memungkinkan Anda membagi dokumen multi-halaman halaman demi halaman.

Contoh kode berikut menunjukkan cara membagi dokumen dan menyimpan setiap halaman sebagai dokumen terpisah:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**T: Bagaimana cara membuka pesan terenkripsi**

Anda dapat mencoba membuka dokumen terenkripsi tanpa kata sandi, yang akan menyebabkan pengecualian.

Contoh kode berikut menunjukkan cara membuka dokumen terenkripsi dengan kata sandi:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**T: Bagaimana cara mencetak dokumen?**

Untuk jawaban terperinci, pelajari artikelnya [Membuat Dokumen Secara Terprogram atau Menggunakan Dialog](/words/java/print-a-document-programmatically-or-using-dialogs/).
