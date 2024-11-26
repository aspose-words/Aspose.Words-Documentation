---
title: Bekerja dengan Dokumen Teks
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Dokumen Teks
linktitle: Bekerja dengan Dokumen Teks
description: "Bekerja dengan dokumen teks dan memodifikasi objeknya menggunakan Python."
type: docs
weight: 430
url: /id/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Pada artikel ini, kita akan mempelajari opsi apa saja yang berguna untuk bekerja dengan dokumen teks melalui Aspose.Words. Harap dicatat bahwa ini bukan daftar lengkap opsi yang tersedia, tetapi hanya contoh penggunaan beberapa di antaranya.

## Tambahkan Tanda Dua Arah

Anda dapat menggunakan properti [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) untuk menentukan apakah akan menambahkan tanda dua arah sebelum setiap BiDi dijalankan saat mengekspor dalam format teks biasa. Aspose.Words menyisipkan Karakter Unicode 'TANDA KANAN-KIRI' (U+200F) sebelum setiap [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) dua arah dalam teks. Opsi ini sesuai dengan opsi "Tambahkan tanda dua arah" dalam dialog Konversi File MS Word saat Anda mengekspor ke format Teks Biasa. Perhatikan bahwa ini muncul dalam dialog hanya jika ada bahasa pengeditan Arab atau Ibrani yang ditambahkan di MS Word.

Contoh kode berikut menunjukkan cara menggunakan properti [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). Nilai default properti ini adalah `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Kenali Item Daftar Saat Memuat TXT

Aspose.Words dapat mengimpor item daftar file teks sebagai nomor daftar atau teks biasa dalam model objek dokumennya. Properti [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) memungkinkan menentukan bagaimana item daftar bernomor dikenali ketika dokumen diimpor dari format teks biasa:

* Jika opsi ini diatur ke `True`, spasi juga digunakan sebagai pembatas nomor daftar: algoritme pengenalan daftar untuk penomoran gaya Arab (1., 1.1.2.) menggunakan simbol spasi putih dan titik (".").
* Jika opsi ini diatur ke `False`, algoritme pengenalan daftar akan mendeteksi paragraf daftar, ketika nomor daftar diakhiri dengan titik, tanda kurung siku, atau simbol poin (seperti "•", "*", "-" atau "o").

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Menangani spasi Depan dan Belakang Selama Memuat TXT

Anda dapat mengontrol cara menangani spasi awal dan akhir selama memuat file TXT. Ruang-ruang terdepan dapat dipangkas, dilestarikan atau diubah menjadi indentasi dan ruang-ruang di belakang dapat dipangkas atau dilestarikan.

Contoh kode berikut menunjukkan cara memangkas spasi awal dan akhir saat mengimpor file TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Deteksi Arah Teks Dokumen

Aspose.Words menyediakan properti [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) di kelas [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) untuk mendeteksi arah teks (RTL/LTR) dalam dokumen. Properti ini menetapkan atau mendapatkan petunjuk teks dokumen yang disediakan dalam enumerasi [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). Nilai defaultnya adalah dari kiri ke kanan.

Contoh kode berikut menunjukkan cara mendeteksi arah teks dokumen saat mengimpor file TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Ekspor Header dan Footer di Output TXT

Jika Anda ingin mengekspor header dan footer dalam dokumen keluaran TXT, Anda dapat menggunakan properti [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Properti ini menentukan cara header dan footer diekspor ke format teks biasa.

Contoh kode berikut menunjukkan cara mengekspor header dan footer ke format teks biasa:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Ekspor Indentasi Daftar di Output TXT

Aspose.Words memperkenalkan kelas [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) yang memungkinkan menentukan bagaimana tingkat daftar diindentasi saat mengekspor ke format teks biasa. Saat bekerja dengan [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), properti [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) disediakan untuk menentukan karakter yang akan digunakan untuk membuat indentasi level daftar dan menghitung menentukan berapa banyak karakter yang akan digunakan sebagai indentasi per satu level daftar. Nilai default untuk properti karakter adalah '\0' yang menunjukkan bahwa tidak ada lekukan. Untuk properti count, nilai defaultnya adalah 0 yang berarti tidak ada lekukan.

### Menggunakan Karakter Tab

Contoh kode berikut menunjukkan cara mengekspor tingkat daftar menggunakan karakter tab:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Menggunakan Karakter Luar Angkasa

Contoh kode berikut menunjukkan cara mengekspor level daftar menggunakan karakter spasi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

