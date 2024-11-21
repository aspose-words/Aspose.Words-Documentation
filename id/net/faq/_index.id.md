---
title: Pertanyaan Umum
second_title: Aspose.Words untuk .NET
articleTitle: Pertanyaan Umum – Aspose.Words untuk .NET
linktitle: Pertanyaan Umum – Aspose.Words untuk .NET
articleTitle: Pertanyaan Umum
linktitle: Pertanyaan Umum
type: docs
description: "Aspose.Words untuk .NET menjawab pertanyaan yang paling sering diajukan. Pelajari halaman ini untuk menyelesaikan masalah Anda dengan cepat pada pertanyaan umum atau topik tertentu."
weight: 75
url: /id/net/faq/
timestamp: 2024-11-18-12-56-02
---

Halaman ini berisi jawaban atas pertanyaan yang paling sering diajukan. Silakan pelajari halaman saat ini – mungkin ini akan memungkinkan Anda menyelesaikan masalah Anda dengan cepat.

Jika Anda belum menemukan jawaban atas pertanyaan Anda, Anda dapat bertanya di forum dukungan. Untuk informasi tentang cara melaporkan pertanyaan atau masalah Anda dengan benar, lihat halaman [Dukungan teknis](/words/id/net/technical-support/).

{{% alert color="primary" %}}

Pertanyaan yang sering diajukan dikelompokkan berdasarkan topik untuk kenyamanan Anda.

{{% /alert %}}

## Umum

**T: Apa itu Aspose.Words?**

Aspose.Words untuk .NET adalah perpustakaan kelas yang memungkinkan aplikasi Anda melakukan berbagai macam tugas pemrosesan dokumen. Dengan Aspose.Words untuk .NET, Anda dapat membuat, memodifikasi, mengonversi, merender, dan mencetak dokumen tanpa aplikasi pihak ketiga.

Detailnya dapat ditemukan di dokumentasi kami.

------

**Q: Apa maksudnya "Aspose.Words tidak memerlukan aplikasi pihak ketiga"?**

Aspose.Words untuk .NET tidak perlu menginstal aplikasi pihak ketiga atau paket perangkat lunak tambahan apa pun agar dapat berfungsi. Cukup unduh dan instal Aspose.Words seperti yang dijelaskan dalam artikel [Instalasi](/words/id/net/installation/) dan mulailah.

------

**T: Platform apa saja yang didukung Aspose.Words?**

Aspose.Words untuk .NET mencakup sebagian besar lingkungan pengembangan dan platform penerapan yang populer. API-nya dapat digunakan untuk mengembangkan aplikasi untuk berbagai sistem operasi seperti Windows, Linux, dan Mac OS, dan berbagai platform.

Untuk detailnya, lihat halaman [Ikhtisar Produk](/words/id/net/product-overview/) dan bagian [Platform dan Kemampuan Interop](/words/net/platforms-and-interoperability/).

------

**T: Format dokumen apa yang didukung Aspose.Words?**

Aspose.Words untuk .NET mendukung sebagian besar format dokumen populer seperti DOC, DOCX, HTML, Markdown, PDF, XML, dan lainnya.

Anda dapat melihat daftar lengkap format yang didukung di halaman [Format Dokumen yang Didukung](/words/id/net/supported-document-formats/).

------

**T: Bagaimana cara mencoba Aspose.Words secara gratis?**

Anda dapat melakukannya dengan dua cara – menggunakan versi Uji Coba atau Lisensi Sementara 30 hari. Versi Uji Coba sama dengan versi yang dibeli, versi ini menyediakan fungsionalitas produk lengkap tetapi menambahkan tanda air evaluatif di bagian atas dokumen saat memuat dan menyimpan serta membatasi ukuran dokumen maksimum hingga beberapa ratus paragraf. Lisensi Sementara memungkinkan Anda menguji Aspose.Words tanpa batasan Uji Coba selama 30 hari.

Lihat halaman [Lisensi dan Langganan](/words/id/net/licensing/) untuk informasi lebih lanjut.

{{% alert color="primary" %}}

Anda juga dapat mencoba beberapa fitur Aspose.Words terpopuler melalui [Aplikasi online gratis Aspose.Words](https://products.aspose.app/words).

{{% /alert %}}

------

**T: Bagaimana cara membeli Aspose.Words?**

Untuk membeli lisensi Aspose.Words, Anda perlu membuka halaman [Pembelian](https://purchase.aspose.com/buy), memilih produk "Aspose.Words" dan jenis lisensi yang sesuai untuk Anda. Kemudian tambahkan lisensi ke keranjang Anda dan ikuti instruksi Keranjang Belanja.

Setelah membeli, ajukan lisensi seperti yang dijelaskan di bagian [Lisensi yang Dibeli](/words/net/licensing/#purchased-license).

Detail cara install Aspose.Words dapat dibaca di halaman [Instalasi](/words/id/net/installation/).

------

**T: Bagaimana saya bisa mendapatkan dukungan?**

Gunakan forum dukungan teknis gratis. Untuk rincian tentang cara melaporkan masalah dengan benar dan apa yang perlu dilakukan sebelum menghubungi forum, lihat halaman [Dukungan teknis](/words/id/net/technical-support/).

## Merender Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih detail tentang rendering di bagian dokumentasi [Render](/words/id/net/rendering/).

{{% /alert %}}

**Q: Mengapa tata letak dan font pada dokumen keluaran berbeda dengan aslinya?**

Font mungkin tidak tersedia, atau format font didukung oleh Microsoft Word namun tidak didukung oleh Aspose.Words. Aspose.Words akan menjalankan [Memanipulasi dan Mengganti Font TrueType](/words/id/net/manipulating-and-substitution-truetype-fonts/).

Untuk memeriksa apakah fontnya hilang:

* Di Aspose.Words gunakan peringatan penggantian Font (untuk detailnya, lihat bagian "Cara Mengenali Bahwa Font Telah Diganti" di artikel [Memanipulasi dan Mengganti Font TrueType](/words/id/net/manipulating-and-substitution-truetype-fonts/)).
* Di Microsoft Word buka kotak dialog "Substitusi Font" (File → Opsi → Lanjutan → Substitusi Font).

------

**T: Di mana saya harus menyimpan font untuk aplikasi ASP.NET?**

Di `APS.NET`, tidak ada akses ke folder font sistem dalam kepercayaan sedang. Pengguna harus menyimpan font di foldernya sendiri.

------

**T: Mengapa penggantian font tidak berfungsi pada platform non-Windows dan karakter Unicode diganti dengan .notdef glyph?**

Kita sering melihat `.notdef` glyph alih-alih beberapa karakter Unicode. Ini biasanya berupa kotak atau pertanyaan glyph.

Hal ini karena pengaturan cadangan Microsoft Office dipilih secara default, dan font Microsoft Office tidak tersedia. Pengguna harus menginstal font Microsoft Office atau mengubah pengaturan fallback.

------

**T: Mengapa teks skrip yang rumit, seperti Thailand atau Ibrani, mungkin ditampilkan secara tidak akurat karena beberapa alasan, seperti posisi diakritik yang salah atau pengikatan yang tidak akurat?**

Beberapa font skrip yang rumit memerlukan fitur Tipografi Tingkat Lanjut untuk diproses agar dapat menampilkannya dengan benar. Tipografi Tingkat Lanjut dinonaktifkan di Aspose.Words secara default. Pengguna harus mengaktifkan Tipografi Tingkat Lanjut dengan [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**T: Apakah saya memerlukan file lisensi untuk font yang saya gunakan?**

Ya, benar. Oleh karena itu, saat menyalin font, perlu diingat bahwa sebagian besar font memiliki hak cipta. Temukan lisensi font sebelumnya dan verifikasi bahwa lisensi tersebut dapat ditransfer secara bebas ke komputer lain.

## Mail Merge bersarang

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih detail tentang mail merge di bagian dokumentasi [Mail Merge dan Pelaporan](/words/net/mail-merge-and-reporting/).

{{% /alert %}}

**T: Mengapa tidak ada kolom gabungan pada keluaran yang dihasilkan?**

Nama asli kolom gabungan tetap sama tanpa digantikan dengan data yang diperlukan dari sumber data, lalu:

* Periksa apakah data dimuat dengan benar ke dalam tabel: atur [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) dengan benar dengan semua kunci utama dan hubungan yang diperlukan.
* Periksa apakah bidang gabungan diberi nama dengan benar. Gunakan metode [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) untuk mendapatkan semua nama bidang gabungan dan pastikan bahwa nama bidang gabungan di templat Anda cocok dengan yang ada di sumber data Anda.

------

**T: Mengapa keluaran penggabungan bertingkat tidak menampilkan data dari tabel anak untuk entri pertama di tabel induk, namun menampilkan semua item untuk entri terakhir di tabel induk, bahkan item yang sebenarnya tidak tertaut ke tabel tersebut?**

Hal ini karena wilayah gabungan dalam templat tidak terbentuk dengan benar, yang dapat membuat semua wilayah mail merge yang disarangkan berhenti menampilkan apa pun. Tag pembuka [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) dan tag penutup [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) harus cocok dan berada pada baris atau sel yang sama. Misalnya, jika Anda mulai menyusun wilayah gabungan di sel tabel, Anda harus mengakhiri wilayah gabungan di baris yang sama dengan sel pertama.

------

**T: Mengapa setiap entri dari tabel induk menampilkan setiap item di tabel anak, bahkan item yang sebenarnya tidak tertaut ke tabel tersebut?**

Hal ini karena hubungan antara tabel induk dan anak tidak diatur atau tidak diatur dengan benar. Hal ini diperlukan untuk:

* Pastikan integritas data dalam **DataSet** Anda dan gunakan objek **DataRelation** untuk mewakili hubungan induk-anak antara tabel data terkait.
* Cek bagian "Cara Mengatur Relasi Data di Mail Merge Bersarang dengan Region" di artikel [Mail Merge Bersarang dengan Wilayah](/words/net/nested-mail-merge-with-regions/).

------

**T: Mengapa ada pengecualian: "System.ArgumentException: Batasan ini tidak dapat diaktifkan karena tidak semua nilai memiliki nilai induk yang sesuai" saat menjalankan mail merge bertingkat?**

Hal ini terjadi karena tidak setiap rekaman induk memiliki rekaman anak sehingga sumber data Anda tidak cocok dengan kriteria berikut: *setiap baris dalam tabel induk harus memiliki hubungan satu-ke-satu dengan baris-baris tabel anak berdasarkan data utama dan kunci asing*.

Nonaktifkan batasan kunci asing saat Anda membuat **DataRelation**.

## Tambahkan atau Sisipkan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang pemrograman dengan dokumen di bagian dokumentasi [Pemrograman dengan Dokumen](/words/id/net/programming-with-documents/).

{{% /alert %}}

**T: Mengapa konten yang ditambahkan ke dokumen tidak muncul di halaman yang sama?**

Hasil penambahan muncul pada halaman terpisah karena perbedaan pengaturan [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) untuk bagian tempat dokumen ditambahkan bersama. Buat pengaturan **PageSetup** yang sama untuk bagian tempat dokumen ditambahkan bersama.

## Konversi Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang mengonversi dokumen di bagian dokumentasi [Konversi Dokumen](/words/id/net/convert-a-document/).

{{% /alert %}}

**T: Bagaimana cara mengonversi PDF ke Word?**

Caranya sangat mudah, cukup muat dokumen ke model dan simpan ke format apa pun yang didukung.

Contoh kode berikut menunjukkan proses konversi file PDF ke DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**T: Bagaimana cara mengubah DOCX ke PDF?**

Caranya juga sangat mudah, cukup muat dokumen ke model dan simpan ke format apa pun yang didukung.

Contoh kode berikut menunjukkan proses konversi file DOCX ke PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Memanipulasi dengan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang pemrograman dengan dokumen di bagian dokumentasi [Pemrograman dengan Dokumen](/words/id/net/programming-with-documents/).

{{% /alert %}}

**T: Bagaimana cara membagi dokumen halaman demi halaman?**

Aspose.Words memungkinkan Anda membagi dokumen multi-halaman halaman demi halaman.

Contoh kode berikut menunjukkan cara membagi dokumen dan menyimpan setiap halaman sebagai dokumen terpisah:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**Q: Bagaimana cara membuka yang terenkripsi** **dokumen?**

Anda dapat mencoba membuka dokumen terenkripsi tanpa kata sandi, yang akan menghasilkan pengecualian.

Contoh kode berikut menunjukkan cara membuka dokumen terenkripsi dengan kata sandi:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**Q: Bagaimana cara mencetak dokumen?**

Hanya dua baris kode.

Contoh kode berikut menunjukkan cara mencetak dokumen dengan dua cara:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**T: Bagaimana cara mengedit dokumen PDF?**

Cukup muat PDF ke model dokumen Aspose.Words dan buat perubahan.

Contoh kode berikut menunjukkan cara mengedit dokumen:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**T: Bagaimana cara menggunakan Aspose.Words di Docker?**

Untuk jawaban detailnya, pelajari artikel [Cara Menjalankan Aspose.Words di Docker](/words/id/net/how-to-run-aspose-words-in-docker/).
