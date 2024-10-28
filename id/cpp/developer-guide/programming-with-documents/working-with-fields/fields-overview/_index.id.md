---
title: Tinjauan Bidang dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Tinjauan Bidang
linktitle: Tinjauan Bidang
description: "Fitur bidang dalam detail, kode bidang, dan hasil bidang dijelaskan dalam Aspose.Words untuk C++."
type: docs
weight: 10
url: /id/cpp/fields-overview/
---

Aspose.Words adalah pustaka kelas yang dirancang untuk pemrosesan sisi server dokumen Microsoft Word dan mendukung bidang dengan cara berikut:

- semua bidang dalam dokumen dipertahankan selama buka / simpan dan konversi
- dimungkinkan untuk memperbarui hasil dari sebagian besar bidang

Pada artikel ini, kita akan mempelajari lebih lanjut tentang struktur bidang, bidang yang didukung dalam Aspose.Words, dan detail bekerja dengan bidang tersebut.

## Struktur Bidang

Sebuah bidang terdiri dari:

- Node awal bidang dan pemisah digunakan untuk mencakup konten yang membentuk kode bidang (biasanya sebagai teks biasa).
- Pemisah bidang dan ujung bidang mencakup hasil bidang. Ini dapat terdiri dari berbagai jenis konten mulai dari teks hingga paragraf hingga tabel.
- Beberapa bidang mungkin tidak memiliki pemisah yang berarti seluruh konten membentuk kode bidang.
- Kode bidang mendefinisikan perilaku bidang dan terdiri dari pengenal bidang dan seringkali parameter lain seperti nama bidang dan sakelar.
- Hasil bidang berisi evaluasi terbaru dari bidang tersebut. Nilai ini disimpan di bidang hasil dan apa yang ditampilkan kepada pengguna. Beberapa bidang mungkin tidak memiliki hasil bidang apa pun sehingga tidak akan menampilkan apa pun di dokumen. Demikian juga, beberapa bidang mungkin belum diperbarui oleh karena itu juga tidak akan memiliki hasil bidang.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Konten yang membentuk kode bidang disimpan sebagai simpul [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) antara [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) dan [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Hasil bidang disimpan di antara simpul **FieldSeparator** dan [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) dan dapat terdiri dari berbagai jenis konten. Biasanya hasil bidang hanya berisi teks yang terdiri dari **Run** simpul, namun simpul **FieldEnd** dapat ditempatkan di paragraf yang sama sekali berbeda, sehingga membuat hasil bidang terdiri dari [node tingkat blok](/words/cpp/logical-levels-of-nodes-in-a-document/) seperti juga simpul **Table** dan **Paragraph**.

Berikut adalah tampilan tentang bagaimana sebuah bidang disimpan dalam Aspose.Words dengan menggunakan " *DocumentExplorer"* example.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Bidang dalam Model Objek Dokumen Aspose.Words (DOM)

Saat dokumen dimuat ke dalam Aspose.Words, bidang dokumen dimuat ke dalam [Aspose.Words Model Objek Dokumen](/words/cpp/aspose-words-document-object-model/) sebagai satu set komponen terpisah (node). Satu bidang dimuat sebagai kumpulan simpul **FieldStart**, **FieldSeparator**, dan **FieldEnd** bersama dengan konten di antara simpul-simpul ini. Jika suatu bidang tidak memiliki hasil bidang maka tidak akan ada simpul **FieldSeparator**. Semua simpul ini selalu ditemukan sebaris (sebagai turunan dari [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) atau [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

Dalam Aspose.Words masing-masing **FieldXXX** simpul berasal dari [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Kelas ini menyediakan properti untuk memeriksa jenis bidang yang diwakili oleh simpul yang ditentukan melalui properti [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Misalnya **FieldType.FieldMergeField** mewakili bidang gabungan dalam dokumen.

{{% alert color="primary" %}}

Ada beberapa bidang tertentu yang ada dalam dokumen Word yang tidak diimpor ke Aspose.Words sebagai kumpulan simpul **FieldXXX**. Misalnya, bidang `LINK` dan bidang `INCLUDEPICTURE` diimpor ke Aspose.Words sebagai objek `Shape`. Objek ini menyediakan properti untuk bekerja dengan data gambar yang biasanya disimpan di bidang ini. Untuk mengimpor bidang `INCLUDEPICTURE` sebagai simpul **FieldXXX**, opsi [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) harus ditetapkan sebagai **true**.

Bidang formulir juga diimpor ke Aspose.Words sebagai kelas khususnya sendiri. Kelas [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) mewakili bidang formulir dalam dokumen Word dan menyediakan metode tambahan yang khusus untuk bidang formulir.

{{% /alert %}}

## Bidang yang Didukung

Perhitungan bidang berikut didukung dalam versi Aspose.Wordssaat ini:

- = (rumus)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Penguraian Bidang yang Canggih

Aspose.Words mengikuti cara Microsoft Word memproses bidang dan sebagai hasilnya menangani dengan benar:

- bidang bersarang:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumen bidang dapat berupa hasil dari bidang bersarang
- bidang dapat disarangkan di dalam kode bidang serta di hasil bidang
- spasi/tanpa spasi, tanda kutip/tanpa tanda kutip, karakter escape di bidang, dll.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- bidang yang terbentang di beberapa paragraf

### Bidang Rumus

Aspose.Words menyediakan implementasi yang sangat serius dari mesin formula dan mendukung hal-hal berikut:

- operator aritmatika dan logika:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- fungsi:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referensi ke bookmark:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- sakelar pemformatan angka:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Fungsi berikut dalam ekspresi didukung: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Hanya beberapa ekspresi `IF` yang dapat dihitung dengan mudah oleh Aspose.Words yang akan memberi Anda gambaran tentang seberapa kuat fitur ini:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words mendukung semua sakelar pemformatan tanggal dan waktu yang tersedia di Microsoft Word, beberapa contohnya adalah:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Bidang Mail Merge

Aspose.Words tidak membatasi kerumitan bidang mail merge dalam dokumen Anda dan mendukung bidang `IF` dan rumus bersarang dan bahkan dapat menghitung nama bidang gabungan menggunakan rumus.

Beberapa contoh bidang mail merge yang didukung Aspose.Words:

- Mail merge sakelar bidang:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- bidang gabungan bersarang dalam rumus:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- hitung nama bidang penggabungan saat runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- pemindahan bersyarat ke rekaman berikutnya di sumber data:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Sakelar Format

Bidang dalam dokumen dapat memiliki sakelar pemformatan yang menentukan bagaimana nilai yang dihasilkan harus diformat. Aspose.Words mendukung sakelar format berikut:

- @ - pemformatan tanggal dan waktu
- \\\# - pemformatan angka
- \\\\\\\\* Topi
- \\\\\\\\* FirstCap
- \\\\\\\\* Lebih rendah
- \\\\\\\\* Atas
- \\\\\\\\* CHARFORMAT - format hasil sesuai dengan karakter pertama dari kode bidang
- \\\\\\\\* MERGEFORMAT - format hasil sesuai dengan format hasil lama

### Pemformatan Tanggal dan Angka di Bidang

Saat Aspose.Words menghitung hasil bidang, seringkali perlu mengurai string menjadi angka atau nilai tanggal dan juga memformatnya kembali menjadi nilai string.By default Aspose.Words menggunakan budaya utas saat ini untuk melakukan penguraian dan pemformatan saat menghitung nilai bidang selama pembaruan bidang dan mail merge. Ada juga opsi yang disediakan dalam bentuk kelas [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) yang memungkinkan kontrol lebih lanjut atas budaya mana yang digunakan selama pembaruan bidang.

- secara default, properti [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) disetel ke [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) yang memformat bidang menggunakan budaya utas saat ini
- properti ini dapat disetel ke [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) sehingga bahasa yang disetel dari kode bidang bidang digunakan untuk pemformatan sebagai gantinya

### Memformat menggunakan Budaya Utas Saat Ini

Untuk mengontrol budaya yang digunakan selama penghitungan bidang, cukup setel properti **CurrentCulture** ke budaya pilihan Anda sebelum menjalankan penghitungan bidang.

Contoh kode berikut menunjukkan cara mengubah budaya yang digunakan dalam bidang pemformatan selama pembaruan:

EXAMPLE

Menggunakan budaya saat ini untuk memformat bidang memungkinkan sistem mengontrol dengan mudah dan konsisten bagaimana semua bidang dalam dokumen diformat selama pembaruan bidang.

### Memformat menggunakan Budaya dalam Dokumen

Di sisi lain, Microsoft Word memformat setiap bidang berdasarkan bahasa teks yang ditemukan di bidang tersebut (khususnya, lari dari kode bidang). Terkadang selama pembaruan bidang, ini mungkin merupakan perilaku yang diinginkan, misalnya jika Anda memiliki dokumen global yang berisi konten yang terdiri dari banyak bahasa berbeda dan ingin setiap bidang menghormati lokal yang digunakan dari teks. Aspose.Words juga mendukung fungsi ini.

Kelas [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) menyediakan properti [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) yang berisi anggota yang dapat digunakan untuk mengontrol bagaimana bidang diperbarui dalam dokumen.

Contoh kode berikut menunjukkan cara menentukan dari mana budaya yang digunakan untuk pemformatan tanggal selama pembaruan bidang dan mail merge dipilih:

EXAMPLE