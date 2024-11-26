---
title: FAQ
second_title: Aspose.Words untuk C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words untuk C++ menjawab pertanyaan yang paling sering diajukan. Pelajari halaman ini untuk menyelesaikan masalah Anda dengan cepat pada pertanyaan umum atau topik tertentu."
weight: 75
url: /id/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Halaman ini berisi jawaban atas pertanyaan yang paling sering diajukan. Silakan pelajari halaman saat ini-mungkin ini akan memungkinkan Anda untuk menyelesaikan masalah Anda dengan cepat.

Jika Anda belum menemukan jawaban atas pertanyaan Anda, Anda dapat bertanya di forum dukungan. Untuk informasi tentang cara melaporkan pertanyaan atau masalah Anda dengan benar, lihat bagian [Dukungan Teknis](/words/cpp/technical-support/) halaman.

{{% alert color="primary" %}}

Pertanyaan yang sering diajukan dikelompokkan berdasarkan topik untuk kenyamanan Anda.

{{% /alert %}}

## Umum

**T: Apa itu Aspose.Words?**

Aspose.Words untuk C++ adalah pustaka kelas yang memungkinkan aplikasi Anda melakukan berbagai tugas pemrosesan dokumen. Dengan Aspose.Words untuk C++, Anda dapat membuat, memodifikasi, mengonversi, merender, dan mencetak dokumen tanpa aplikasi pihak ketiga.

Detailnya dapat ditemukan di dokumentasi kami.

------

**T: Apa artinya "Aspose.Words tidak memerlukan aplikasi pihak ketiga"?**

Aspose.Words untuk C++ tidak perlu menginstal aplikasi pihak ketiga atau paket perangkat lunak tambahan untuk bekerja. Cukup unduh dan instal Aspose.Words seperti yang dijelaskan dalam ["Instalasi"](/words/cpp/installation/) artikel dan mulai.

------

**T: Platform apa yang didukung Aspose.Words?**

Aspose.Words untuk C++ mencakup sebagian besar lingkungan pengembangan dan platform penerapan yang populer. Its API dapat digunakan untuk mengembangkan aplikasi untuk berbagai sistem operasi seperti Windows, Linux, dan Mac OS, dan berbagai platform.

Untuk detailnya, lihat [Tinjauan Produk](/words/cpp/product-overview/) halaman.

------

**T: Format dokumen apa yang didukung oleh Aspose.Words?**

Aspose.Words untuk C++ mendukung sebagian besar format dokumen populer seperti DOC, DOCX, HTML, Markdown, PDF, XML, dan lainnya.

Anda dapat melihat daftar lengkap format yang didukung di [Format Dokumen yang Didukung](/words/cpp/supported-document-formats/) halaman.

------

**T: Bagaimana saya bisa mencoba Aspose.Words gratis?**

Anda dapat melakukannya dengan dua cara-menggunakan versi Uji Coba atau Lisensi Sementara selama 30 hari. Versi Uji Coba sama dengan yang dibeli, versi ini menyediakan fungsionalitas produk lengkap tetapi menambahkan tanda air evaluatif di bagian atas dokumen saat memuat dan menyimpan dan membatasi ukuran dokumen maksimum hingga beberapa ratus paragraf. Lisensi Sementara memungkinkan Anda menguji Aspose.Words tanpa batasan Uji Coba selama 30 hari.

Lihat [Lisensi dan Langganan](/words/cpp/licensing/) halaman untuk informasi lebih lanjut.

{{% alert color="primary" %}}

Anda juga dapat mencoba beberapa fitur Aspose.Words paling populer melalui [Aspose.Words Aplikasi online gratis](https://products.aspose.app/words).

{{% /alert %}}

------

**T: Bagaimana saya bisa membeli Aspose.Words?**

Untuk membeli lisensi Aspose.Words, Anda harus pergi ke [Pembelian](https://purchase.aspose.com/buy) halaman, pilih produk "Aspose.Words " dan jenis lisensi yang sesuai untuk Anda. Kemudian tambahkan lisensi ke keranjang Anda dan ikuti petunjuk Keranjang Belanja.

Setelah membeli, ajukan lisensi seperti yang dijelaskan dalam [Lisensi yang Dibeli](/words/cpp/licensing/#purchased-license) bagian.

Detail tentang cara menginstal Aspose.Words dapat dibaca di [Instalasi](/words/cpp/installation/) halaman.

------

**T: Bagaimana saya bisa mendapatkan dukungan?**

Gunakan forum dukungan teknis gratis. Untuk detail tentang cara melaporkan masalah dengan benar dan apa yang perlu dilakukan sebelum menghubungi forum, lihat bagian [Dukungan Teknis](/words/cpp/technical-support/) halaman.

## Merender Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang rendering di [Rendering](/words/cpp/rendering/) bagian dokumentasi.

{{% /alert %}}

**T: Mengapa tata letak dan font dalam dokumen keluaran berbeda dari aslinya?**

Font mungkin tidak tersedia, atau format font didukung oleh Microsoft Word tetapi tidak didukung oleh Aspose.Words. Aspose.Words akan tampil [penggantian fonta](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Untuk memeriksa apakah font tidak ada:

- Di Aspose.Words gunakan peringatan penggantian font (untuk detailnya, lihat bagian "Cara Mengenali Bahwa Font Telah Diganti" di [Memanipulasi dan Mengganti Font TrueType ](/words/cpp/manipulate-and-substitute-truetype-fonts/) artikel).
- Di Microsoft Word buka kotak dialog "Substitusi Font" (File → Options → Advanced Substitution Substitusi Font).

------

**T: Mengapa fallback font tidak berfungsi pada platform non-Windows dan karakter Unicode diganti dengan.mesin terbang notdef?**

Kita sering dapat melihat mesin terbang `.notdef` alih-alih beberapa karakter Unicode. Ini biasanya kotak atau mesin terbang pertanyaan.

Ini karena pengaturan fallback Office Microsoft dipilih secara default, dan font Office Microsoft tidak tersedia. Pengguna harus menginstal Microsoft font Office atau mengubah pengaturan fallback.

------

**T: Mengapa teks skrip yang rumit, seperti bahasa Thailand atau Ibrani, ditampilkan secara tidak akurat karena beberapa alasan, seperti posisi diakritik yang salah atau pengikat yang tidak akurat?**

Beberapa font skrip yang kompleks memerlukan fitur Tipografi Tingkat Lanjut untuk diproses agar dapat menampilkannya dengan benar. Tipografi Tingkat Lanjut dinonaktifkan di Aspose.Words secara default. Pengguna harus mengaktifkan Tipografi Tingkat Lanjut dengan [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**T: Apakah saya memerlukan file lisensi untuk font yang saya gunakan?**

Ya, Anda lakukan. Oleh karena itu, saat menyalin font, perlu diingat bahwa sebagian besar font memiliki hak cipta. Temukan lisensi font sebelumnya dan verifikasi bahwa lisensi tersebut dapat ditransfer secara bebas ke komputer lain.

## Menambahkan atau Menyisipkan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang pemrograman dengan dokumen di [Pemrograman dengan Dokumen](/words/cpp/programming-with-documents/) bagian dokumentasi.

{{% /alert %}}

**T: Mengapa konten yang ditambahkan ke dokumen tidak muncul di halaman yang sama?**

Hasil append muncul di halaman terpisah karena perbedaan pengaturan [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) untuk bagian tempat dokumen ditambahkan bersama. Buat pengaturan **PageSetup** yang identik untuk bagian tempat dokumen ditambahkan bersama.

## Konversikan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang mengonversi dokumen di [Konversikan Dokumen](/words/cpp/convert-a-document/) bagian dokumentasi.

{{% /alert %}}

**T: Bagaimana cara mengubah DOCX menjadi PDF?**

Ini juga sangat mudah, cukup muat dokumen ke model dan simpan ke format apa pun yang didukung.

Contoh kode berikut menunjukkan proses pengubahan file DOCX menjadi PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Memanipulasi dengan Dokumen

{{% alert color="primary" %}}

Anda dapat menemukan informasi lebih rinci tentang pemrograman dengan dokumen di [Pemrograman dengan Dokumen](/words/cpp/programming-with-documents/) bagian dokumentasi.

{{% /alert %}}

**T: Bagaimana cara membagi dokumen halaman demi halaman?**

Aspose.Words memungkinkan Anda membagi dokumen multi-halaman halaman demi halaman.

Contoh kode berikut menunjukkan cara membagi dokumen dan menyimpan setiap halaman sebagai dokumen terpisah:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**T: Bagaimana cara membuka pesan terenkripsi**

Anda dapat mencoba membuka dokumen terenkripsi tanpa kata sandi, yang akan menyebabkan pengecualian.

Contoh kode berikut menunjukkan cara membuka dokumen terenkripsi dengan kata sandi:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
