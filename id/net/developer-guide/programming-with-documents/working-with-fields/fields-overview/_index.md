---
title: Ikhtisar Bidang di C#
second_title: Aspose.Words untuk .NET
articleTitle: Ikhtisar Bidang
linktitle: Ikhtisar Bidang
description: "Fitur bidang secara detail, kode bidang, dan hasil bidang dijelaskan di Aspose.Words untuk .NET."
type: docs
weight: 10
url: /id/net/fields-overview/
---

Aspose.Words adalah perpustakaan kelas yang dirancang untuk pemrosesan dokumen Microsoft Word di sisi server dan mendukung bidang dengan cara berikut:

- semua bidang dalam dokumen dipertahankan selama pembukaan/penyimpanan dan konversi
- dimungkinkan untuk memperbarui hasil dari sebagian besar bidang

Dalam artikel ini, kita akan mempelajari lebih lanjut tentang struktur bidang, bidang yang didukung di Aspose.Words, dan detail cara bekerja dengan bidang tersebut.

## Struktur Lapangan

Sebuah bidang terdiri dari:

- Node awal dan pemisah bidang digunakan untuk mencakup konten yang membentuk kode bidang (biasanya dalam bentuk teks biasa).
- Pemisah bidang dan ujung bidang mencakup hasil lapangan. Ini dapat terdiri dari berbagai jenis konten mulai dari teks, paragraf, hingga tabel.
- Beberapa kolom mungkin tidak memiliki pemisah yang berarti seluruh konten membentuk kode kolom.
- Kode bidang mendefinisikan perilaku bidang dan terdiri dari pengidentifikasi bidang dan sering kali parameter lain seperti nama bidang dan sakelar.
- Hasil lapangan berisi evaluasi lapangan terkini. Nilai ini disimpan dalam hasil bidang dan ditampilkan kepada pengguna. Beberapa bidang mungkin tidak memiliki hasil bidang apa pun sehingga tidak akan menampilkan apa pun di dokumen. Demikian pula, beberapa bidang mungkin belum diperbarui sehingga tidak ada hasil bidangnya.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Konten yang membentuk kode bidang disimpan sebagai node [Run](https://reference.aspose.com/words/net/aspose.words/run/) antara [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) dan [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). Hasil bidang disimpan antara node **FieldSeparator** dan [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) dan dapat terdiri dari berbagai jenis konten. Biasanya hasil bidang hanya berisi teks yang terdiri dari node **Run**, namun ada kemungkinan node **FieldEnd** ditempatkan di paragraf yang sama sekali berbeda, sehingga membuat hasil bidang terdiri dari [Tingkat Logis Node dalam Dokumen](/words/id/net/logical-levels-of-nodes-in-a-document/) seperti **Table** dan **Paragraph** node juga.

Berikut adalah tampilan bagaimana suatu bidang disimpan di Aspose.Words dengan menggunakan contoh "*DocumentExplorer"* yang dapat ditemukan di [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Bidang di Aspose.Words Document Object Model (DOM)

Saat dokumen dimuat ke Aspose.Words, bidang dokumen dimuat ke [Aspose.Words Document Object Model (DOM)](/words/id/net/aspose-words-document-object-model/) sebagai kumpulan komponen terpisah (node). Satu bidang dimuat sebagai kumpulan node **FieldStart**, **FieldSeparator**, dan **FieldEnd** beserta konten di antara node tersebut. Jika suatu field tidak memiliki hasil field maka tidak akan ada node **FieldSeparator**. Semua node ini selalu ditemukan inline (sebagai turunan dari [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) atau [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

Di Aspose.Words, setiap node **FieldXXX** berasal dari [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Kelas ini menyediakan properti untuk memeriksa jenis bidang yang diwakili oleh node tertentu melalui properti [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Misalnya **FieldType.FieldMergeField** mewakili bidang gabungan dalam dokumen.

{{% alert color="primary" %}}

Ada beberapa bidang tertentu yang ada di dokumen Word yang tidak diimpor ke Aspose.Words sebagai kumpulan node **FieldXXX**. Misalnya, bidang `LINK` dan bidang `INCLUDEPICTURE` diimpor ke Aspose.Words sebagai objek [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/). Objek ini menyediakan properti untuk bekerja dengan data gambar yang biasanya disimpan di bidang ini. Untuk mengimpor bidang `INCLUDEPICTURE` sebagai node **FieldXXX**, opsi [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) harus ditentukan sebagai **true**.

Bidang formulir juga diimpor ke Aspose.Words sebagai kelas khusus mereka sendiri. Kelas [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) mewakili bidang formulir dalam dokumen Word dan menyediakan metode tambahan khusus untuk bidang formulir.

{{% /alert %}}

## Bidang yang Didukung

Perhitungan bidang berikut ini didukung dalam versi Aspose.Words saat ini:

- = (rumus)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Parsing Lapangan yang Canggih

Aspose.Words mengikuti cara Microsoft Word memproses kolom dan sebagai hasilnya ia menangani dengan benar:

- bidang bersarang:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumen bidang dapat berupa hasil bidang bersarang
- bidang dapat disarangkan dalam kode bidang serta dalam hasil bidang
- spasi/tanpa spasi, tanda kutip/tanpa tanda kutip, karakter escape di kolom, dll.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- bidang yang mencakup beberapa paragraf

### Bidang Rumus

Aspose.Words menyediakan implementasi mesin formula yang sangat serius dan mendukung hal-hal berikut:

- operator aritmatika dan logika:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- fungsi:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referensi ke bookmark:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- saklar pemformatan angka:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Fungsi ekspresi berikut ini didukung: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `MIN`, TRUE.

### Bidang `IF` dan `COMPARE`

Beberapa ekspresi `IF` yang dapat dihitung dengan mudah oleh Aspose.Words akan memberi Anda gambaran betapa hebatnya fitur ini:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Bidang `DATE` dan `TIME`

Aspose.Words mendukung semua sakelar pemformatan tanggal dan waktu yang tersedia di Microsoft Word, beberapa contohnya adalah:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Bidang Mail Merge

Aspose.Words tidak memberikan batasan pada kompleksitas bidang mail merge di dokumen Anda dan mendukung `IF` bertingkat dan bidang rumus dan bahkan dapat menghitung nama bidang gabungan menggunakan rumus.

Beberapa contoh kolom mail merge yang didukung Aspose.Words:

- Sakelar bidang Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- bidang gabungan bersarang dalam rumus:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- hitung nama bidang gabungan saat runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- perpindahan bersyarat ke rekaman berikutnya di sumber data:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Peralihan Format

Bidang dalam dokumen dapat memiliki tombol pemformatan yang menentukan bagaimana nilai yang dihasilkan harus diformat. Aspose.Words mendukung sakelar format berikut:

- \\\@ – format tanggal dan waktu
- \\\# – pemformatan angka
- \\\* Batasan
- \\\* FirstCap
- \\\* Lebih rendah
- \\\* Atas
- \\\* CHARFORMAT – memformat hasil sesuai dengan karakter pertama kode field
- \\\* MERGEFORMAT – memformat hasil sesuai dengan format hasil lama

### Date dan Pemformatan Angka di Bidang

Saat Aspose.Words menghitung hasil bidang, sering kali Aspose.Words perlu menguraikan string menjadi nilai angka atau tanggal dan juga memformatnya kembali menjadi string. Secara default, Aspose.Words menggunakan budaya thread saat ini untuk melakukan penguraian dan pemformatan saat menghitung nilai bidang selama pembaruan bidang dan mail merge. Ada juga opsi yang disediakan dalam bentuk kelas [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) yang memungkinkan kontrol lebih lanjut terhadap budaya mana yang digunakan selama pembaruan lapangan.

- secara default properti [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) diatur ke [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) yang memformat bidang menggunakan budaya thread saat ini
- properti ini dapat disetel ke [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) sehingga bahasa yang disetel dari kode bidang digunakan untuk pemformatan

### Memformat menggunakan Budaya Thread Saat Ini

Untuk mengontrol budaya yang digunakan selama perhitungan lapangan, cukup atur properti **Thread.CurrentThread.CurrentCulture** ke budaya pilihan Anda sebelum menjalankan perhitungan lapangan.

Contoh kode berikut menunjukkan cara mengubah budaya yang digunakan dalam bidang pemformatan selama pembaruan:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Menggunakan budaya saat ini untuk memformat bidang memungkinkan sistem mengontrol dengan mudah dan konsisten bagaimana semua bidang dalam dokumen diformat selama pembaruan bidang.

### Memformat menggunakan Budaya dalam Dokumen

Di sisi lain, Microsoft Word memformat setiap bidang berdasarkan bahasa teks yang ditemukan di bidang tersebut (khususnya, proses dari kode bidang). Terkadang selama pembaruan bidang, hal ini mungkin merupakan perilaku yang diinginkan, misalnya jika Anda memiliki dokumen global yang berisi konten yang terdiri dari berbagai bahasa dan ingin setiap bidang mengikuti lokal yang digunakan dari teks. Aspose.Words juga mendukung fungsi ini.

Kelas [Document](https://reference.aspose.com/words/net/aspose.words/document/) menyediakan properti [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) yang berisi anggota yang dapat digunakan untuk mengontrol bagaimana bidang diperbarui dalam dokumen.

Contoh kode berikut menunjukkan cara menentukan dari mana budaya yang digunakan untuk pemformatan tanggal selama pembaruan bidang dan mail merge dipilih:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
