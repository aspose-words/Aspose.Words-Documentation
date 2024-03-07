---
title: Konversikan Dokumen ke HTML, MHTML atau EPUB di C#
second_title: Aspose.Words untuk .NET
articleTitle: Konversikan Dokumen ke HTML, MHTML atau EPUB
linktitle: Konversikan Dokumen ke HTML, MHTML atau EPUB
description: "Konversikan dokumen dari hampir semua format ke HTML atau MHTML, serta ke format EPUB menggunakan C#. Anda juga dapat menentukan opsi penyimpanan untuk mengelola dokumen keluaran."
type: docs
weight: 20
url: /id/net/convert-a-document-to-html-mhtml-or-epub/
---

Dokumen dalam format flow-layout HTML dan MHTML juga sangat populer dan dapat digunakan di platform web apa pun. Oleh karena itu, mengonversi dokumen ke HTML dan MHTML merupakan fitur penting Aspose.Words.

EPUB (kependekan dari "Electronic Publication") adalah format berbasis HTML yang biasa digunakan untuk distribusi buku elektronik. Format ini didukung penuh di Aspose.Words untuk mengekspor buku elektronik yang kompatibel dengan sebagian besar perangkat membaca.

## Konversi Dokumen

Untuk konversi sederhana ke HTML, MHTML, atau EPUB, salah satu metode kelebihan [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) digunakan. Anda dapat menyimpan dokumen ke file atau aliran dan secara eksplisit mengatur format penyimpanan dokumen keluaran atau menentukannya dari ekstensi nama file.

Contoh berikut menunjukkan cara mengonversi DOCX ke HTML dengan menentukan format penyimpanan:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Untuk mengonversi dokumen ke MHTML atau EPUB, gunakan `SaveFormat.Mhtml` atau `SaveFormat.Epub` masing-masing.

## Konversi Dokumen dengan Informasi Pulang Pergi

Format HTML tidak mendukung banyak fitur Microsoft Word, dan jika kita perlu mengembalikan model dokumen sedekat mungkin dengan aslinya, kita perlu menyimpan beberapa informasi tambahan di dalam file HTML. Informasi tersebut juga disebut "informasi pulang-pergi". Untuk tujuan ini, Aspose.Words menyediakan kemampuan untuk mengekspor informasi bolak-balik saat menyimpan ke HTML, MHTML, atau EPUB menggunakan properti [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). Menyimpan informasi bolak-balik memungkinkan untuk memulihkan properti dokumen seperti tab, komentar, header, dan footer selama memuat dokumen dari format yang terdaftar kembali ke objek **Document**.

Nilai defaultnya adalah **true** untuk HTML dan **false** untuk MHTML dan EPUB:

- Ketika **true**, informasi pulang-pergi diekspor sebagai - aw - * properti CSS dari elemen HTML yang sesuai
- Ketika **false**, tidak ada informasi bolak-balik yang akan dikeluarkan ke dalam file yang dihasilkan

Contoh kode berikut menunjukkan cara mengekspor informasi pulang-pergi saat mengonversi dokumen dari DOCX ke HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Tentukan Opsi Simpan saat Konversi ke HTML

Aspose.Words memungkinkan untuk mengonversi dokumen Word ke HTML menggunakan opsi penyimpanan default atau khusus. Beberapa contoh opsi penyimpanan khusus dijelaskan di bawah.

### Tentukan Folder untuk Menyimpan Sumber Daya

Dengan menggunakan Aspose.Words kita dapat menentukan folder fisik tempat semua sumber daya, seperti gambar, font, dan CSS eksternal, disimpan ketika dokumen dikonversi ke HTML. Secara default, ini adalah string kosong.

Menentukan properti [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) adalah cara paling sederhana untuk mengatur folder tempat semua sumber daya harus ditulis. Kita dapat menggunakan properti individual, seperti [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) yang menyimpan font ke folder tertentu dan [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) yang menyimpan gambar ke folder tertentu. Ketika jalur relatif ditentukan, **FontsFolder** dan **ImagesFolder** merujuk ke folder tempat perakitan kode berada, **ResourceFolder** dan [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) merujuk ke folder keluaran tempat dokumen HTML berada.

Dalam contoh ini, **ResourceFolder** menentukan jalur relatif. Jalur ini merujuk ke folder keluaran tempat dokumen HTML disimpan. Nilai properti **ResourceFolderAlias** digunakan untuk membuat URL untuk semua sumber daya.

Contoh kode berikut menunjukkan cara bekerja dengan properti ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Dengan menggunakan properti [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), kita juga dapat menentukan nama folder yang digunakan untuk membuat URI dari semua sumber daya yang ditulis ke dalam dokumen HTML. Ini adalah cara paling sederhana untuk menentukan bagaimana URI harus dibuat untuk semua file sumber daya. Informasi yang sama dapat ditentukan untuk gambar dan font secara terpisah melalui properti [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) dan [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/).

Namun, tidak ada properti individual untuk CSS. Perilaku properti **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** dan **CssStyleSheetFileName** tidak berubah. Perhatikan bahwa properti **CssStyleSheetFileName** digunakan untuk menentukan nama folder dan nama file.

- **ResourceFolder** memiliki prioritas lebih rendah dibandingkan folder yang ditentukan melalui **FontsFolder**, **ImagesFolder**, dan **CssStyleSheetFileName**. Jika folder yang ditentukan dalam **ResourceFolder** tidak ada, maka akan dibuat secara otomatis.
- **ResourceFolderAlias** memiliki prioritas lebih rendah dibandingkan **FontsFolderAlias** dan **ImagesFolderAlias**. Jika **ResourceFolderAlias** kosong, nilai properti **ResourceFolder** akan digunakan untuk membuat URI sumber daya. Jika **ResourceFolderAlias** diatur ke "." (titik), URI sumber daya hanya akan berisi nama file tanpa menentukan jalurnya.

### Ekspor Sumber Daya Font Pengkodean Base64

Aspose.Words menyediakan kemampuan untuk menentukan apakah sumber daya font harus disematkan ke dalam HTML dalam pengkodean Base64. Untuk melakukan ini, gunakan properti [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) – ini merupakan perpanjangan dari properti [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). Secara default, nilainya adalah **false**, dan font ditulis ke dalam file terpisah. Namun jika opsi ini disetel ke **true**, font akan disematkan ke dalam CSS dokumen dalam pengkodean Base64. Properti **EksporFontsAsBase64** hanya mempengaruhi format HTML dan tidak mempengaruhi EPUB dan MHTML.

Contoh kode berikut menunjukkan cara mengekspor font berkode Base64 ke HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Tentukan Opsi Simpan saat Konversi ke EPUB

Aspose.Words memungkinkan untuk mengonversi dokumen Word ke format EPUB menggunakan opsi penyimpanan default atau khusus. Anda dapat menentukan sejumlah opsi dengan meneruskan instance [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) ke metode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/).

Contoh kode berikut menunjukkan cara mengonversi dokumen Word ke EPUB dengan menentukan beberapa opsi penyimpanan khusus:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Lihat juga

- [Cara mengekspor informasi pulang-pergi saat menyimpan ke HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
