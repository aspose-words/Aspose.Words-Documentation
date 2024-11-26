---
title: Konversi Dokumen ke HTML
second_title: Aspose.Words untuk Python via .NET
articleTitle: Konversikan Dokumen ke HTML, MHTML atau EPUB
linktitle: Konversikan Dokumen ke HTML, MHTML atau EPUB
description: "Konversikan dokumen dari hampir semua format ke HTML atau MHTML, serta ke format EPUB menggunakan Python. Anda juga dapat menentukan opsi penyimpanan untuk mengelola dokumen keluaran."
type: docs
weight: 20
url: /id/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Dokumen dalam format flow-layout HTML dan MHTML juga sangat populer dan dapat digunakan di platform web apa pun. Oleh karena itu, mengonversi dokumen ke HTML dan MHTML merupakan fitur penting Aspose.Words.

EPUB (kependekan dari "Electronic Publication") adalah format berbasis HTML yang biasa digunakan untuk distribusi buku elektronik. Format ini didukung penuh di Aspose.Words untuk mengekspor buku elektronik yang kompatibel dengan sebagian besar perangkat membaca.

## Konversi Dokumen

Untuk konversi sederhana ke HTML, MHTML, atau EPUB, salah satu metode kelebihan [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) digunakan. Anda dapat menyimpan dokumen ke file atau aliran dan secara eksplisit mengatur format penyimpanan dokumen keluaran atau menentukannya dari ekstensi nama file.

Contoh berikut menunjukkan cara mengonversi DOCX ke HTML dengan menentukan format penyimpanan:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Untuk mengonversi dokumen ke MHTML atau EPUB, gunakan [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) atau [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) masing-masing.

## Konversi Dokumen dengan Informasi Pulang Pergi

Format HTML tidak mendukung banyak fitur Microsoft Word, dan jika kita perlu mengembalikan model dokumen sedekat mungkin dengan aslinya, kita perlu menyimpan beberapa informasi tambahan di dalam file HTML. Informasi tersebut juga disebut "informasi pulang-pergi". Untuk tujuan ini, Aspose.Words menyediakan kemampuan untuk mengekspor informasi bolak-balik saat menyimpan ke HTML, MHTML, atau EPUB menggunakan properti **ekspor_pulang pergi_informasi**. Menyimpan informasi bolak-balik memungkinkan untuk memulihkan properti dokumen seperti tab, komentar, header, dan footer selama memuat dokumen dari format yang terdaftar kembali ke objek [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Nilai defaultnya adalah *True* untuk HTML dan *False* untuk MHTML dan EPUB:

- Ketika *True*, informasi pulang-pergi diekspor sebagai - aw - * properti CSS dari elemen HTML yang sesuai
- Ketika *False*, tidak ada informasi bolak-balik yang akan dikeluarkan ke dalam file yang dihasilkan

Contoh kode berikut menunjukkan cara mengekspor informasi pulang-pergi saat mengonversi dokumen dari DOCX ke HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Tentukan Opsi Simpan saat Konversi ke HTML

Aspose.Words memungkinkan untuk mengonversi dokumen Word ke HTML menggunakan opsi penyimpanan default atau khusus. Beberapa contoh opsi penyimpanan khusus dijelaskan di bawah.

### Tentukan Folder untuk Menyimpan Sumber Daya

Dengan menggunakan Aspose.Words kita dapat menentukan folder fisik tempat semua sumber daya, seperti gambar, font, dan CSS eksternal, disimpan ketika dokumen dikonversi ke HTML. Secara default, ini adalah string kosong.

Menentukan properti [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) adalah cara paling sederhana untuk mengatur folder tempat semua sumber daya harus ditulis. Kita dapat menggunakan properti individual, seperti [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) yang menyimpan font ke folder tertentu dan [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) yang menyimpan gambar ke folder tertentu. Ketika jalur relatif ditentukan, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) dan [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) merujuk ke folder tempat rakitan kode berada, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) dan [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) merujuk ke folder keluaran tempat dokumen HTML berada.

Dalam contoh ini, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) menentukan jalur relatif. Jalur ini merujuk ke folder keluaran tempat dokumen HTML disimpan. Nilai properti [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) digunakan untuk membuat URL untuk semua sumber daya.

Contoh kode berikut menunjukkan cara bekerja dengan properti ini:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Dengan menggunakan properti [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), kita juga dapat menentukan nama folder yang digunakan untuk membuat URI dari semua sumber daya yang ditulis ke dalam dokumen HTML. Ini adalah cara paling sederhana untuk menentukan bagaimana URI harus dibuat untuk semua file sumber daya. Informasi yang sama dapat ditentukan untuk gambar dan font secara terpisah melalui properti [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) dan [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/).

Namun, tidak ada properti individual untuk CSS. Perilaku properti [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) dan [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) tidak berubah. Perhatikan bahwa properti [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) digunakan untuk menentukan nama folder dan nama file.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) memiliki prioritas lebih rendah dibandingkan folder yang ditentukan melalui [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), dan [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Jika folder yang ditentukan dalam [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) tidak ada, maka akan dibuat secara otomatis.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) memiliki prioritas lebih rendah dibandingkan [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) dan [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Jika [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) kosong, nilai properti [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) akan digunakan untuk membuat URI sumber daya. Jika [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) diatur ke "." (titik), URI sumber daya hanya akan berisi nama file tanpa menentukan jalurnya.

### Ekspor Sumber Daya Font Pengkodean Base64

Aspose.Words menyediakan kemampuan untuk menentukan apakah sumber daya font harus disematkan ke dalam HTML dalam pengkodean Base64. Untuk melakukan ini, gunakan properti [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) – ini merupakan perpanjangan dari properti [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). Secara default, nilainya adalah *False*, dan font ditulis ke dalam file terpisah. Namun jika opsi ini disetel ke *True*, font akan disematkan ke dalam CSS dokumen dalam pengkodean Base64. Properti [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) hanya memengaruhi format HTML dan tidak memengaruhi EPUB dan MHTML.

Contoh kode berikut menunjukkan cara mengekspor font berkode Base64 ke HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Tentukan Opsi Simpan saat Konversi ke EPUB

Aspose.Words memungkinkan untuk mengonversi dokumen Word ke format EPUB menggunakan opsi penyimpanan default atau khusus. Anda dapat menentukan sejumlah opsi dengan meneruskan instance [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) ke metode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

Contoh kode berikut menunjukkan cara mengonversi dokumen Word ke EPUB dengan menentukan beberapa opsi penyimpanan khusus:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

