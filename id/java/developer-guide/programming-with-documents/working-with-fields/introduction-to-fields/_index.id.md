---
title: Pengantar Bidang di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Pengantar Bidang
linktitle: Pengantar Bidang
description: "Fitur lapangan dalam rincian, kode lapangan dan hasil lapangan dijelaskan dalam Aspose.Words Sitemap JavaSitemap"
type: docs
weight: 10
url: /id/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words adalah perpustakaan kelas yang dirancang untuk pemrosesan sisi server Microsoft Word dokumen dan mendukung bidang dengan cara berikut:

- semua bidang dalam dokumen dipertahankan selama buka / menyimpan dan konversi
- dimungkinkan untuk memperbarui hasil dari sebagian besar bidang

Dalam artikel ini, kami akan mempelajari lebih lanjut tentang struktur lapangan, bidang yang didukung Aspose.Words, dan rincian bekerja dengan bidang tersebut.

## Struktur lapangan

Bidang terdiri dari:

- Login Bidang mulai dan pemisah node digunakan untuk mencakup konten yang membuat kode lapangan (biasanya teks biasa).
- Pemisah lapangan dan ujung lapangan mencakup hasil lapangan. Ini dapat terdiri dari berbagai jenis konten mulai dari menjalankan teks hingga paragraf hingga tabel.
- Beberapa bidang mungkin tidak memiliki pemisah yang berarti seluruh konten membuat kode lapangan.
- Login Kode lapangan mendefinisikan perilaku lapangan dan terdiri dari pengenal lapangan dan sering parameter lain seperti nama lapangan dan sakelar.
- Login Hasil lapangan mengandung evaluasi terbaru dari lapangan. Nilai ini disimpan dalam hasil lapangan dan apa yang ditampilkan kepada pengguna. Beberapa bidang mungkin tidak memiliki hasil lapangan sehingga tidak akan menampilkan apa pun dalam dokumen. Demikian juga, beberapa bidang tidak dapat diperbarui namun karena itu juga tidak akan memiliki hasil lapangan.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Konten yang membuat kode lapangan disimpan sebagai [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) Sitemap [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) Login [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)Sitemap Hasil lapangan disimpan antara **FieldSeparator** Login [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) node dan dapat terdiri dari berbagai jenis konten. Biasanya hasil lapangan hanya mengandung teks yang terdiri dari node Run, namun dimungkinkan untuk node FieldEnd yang terletak di paragraf yang berbeda, dan dengan demikian membuat hasil lapangan terdiri dari [Login](/words/id/java/logical-levels-of-nodes-in-a-document/) Sitemap **Table** Login **Paragraph** Login

Berikut adalah pandangan tentang bagaimana lapangan disimpan di Meme it Aspose.Words dengan menggunakan "*DocumentExplorer" * contoh yang dapat ditemukan di [Login](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer)Sitemap

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Sitemap Aspose.Words Document Object Model SitemapDOMSitemap

Ketika dokumen dimuat ke Aspose.WordsSitemap bidang dokumen dimuat ke dalam Meme it Aspose.Words Document Object Model sebagai set komponen terpisah (nodes). Bidang tunggal dimuat sebagai koleksi **FieldStart**, **FieldSeparator** Login **FieldEnd** node bersama dengan konten di antara node ini. Jika lapangan tidak memiliki hasil lapangan maka tidak akan ada **FieldSeparator** Login Semua node ini selalu ditemukan dalam garis (seperti anak-anak dari [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) Sitemap [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)Sitemap

Sitemap Aspose.Words masing-masing **FieldXXX** node berasal dari [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)Sitemap Kelas ini memberikan properti untuk memeriksa jenis lapangan yang diwakili oleh node yang ditentukan melalui [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) Login Sitemap `FieldType.FieldMergeField` mewakili bidang gabungan dalam dokumen.

{{% alert color="primary" %}}

Ada beberapa bidang tertentu yang ada dalam dokumen Word yang tidak diimpor ke Aspose.Words sebagai koleksi **FieldXXX** Login Contohnya, `LINK` Login `INCLUDEPICTURE` bidang diimpor ke Aspose.Words Sitemap [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Sitemap Objek ini memberikan sifat untuk bekerja dengan data gambar biasanya disimpan di bidang ini. Untuk mengimpor `INCLUDEPICTURE` Login **FieldXXX** Login [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) opsi harus ditentukan sebagai **true**Sitemap

Bidang bentuk juga diimpor ke Aspose.Words sebagai kelas khusus mereka sendiri. Login [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) kelas mewakili bidang bentuk dalam dokumen Word dan menyediakan metode tambahan yang khusus untuk bidang bentuk.

{{% /alert %}}

## Bidang yang Didukung

Perhitungan bidang berikut didukung dalam versi saat ini dari Aspose.WordsSitemap

- = (formula)
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
- Login `TOC` (termasuk TOT dan TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Parsing Lapangan Sophisticated

Aspose.Words mengikuti cara Microsoft Word proses bidang dan sebagai hasil yang benar menangani:

- Bidang bersarang:
  `IF { =OR({ `COMLogin` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- argumen lapangan dapat menjadi hasil dari lapangan bersarang
- ladang dapat bersarang dalam kode lapangan serta dalam hasil lapangan
- ruang / tidak ada ruang, kutipan / tidak ada kutipan, melarikan diri karakter di bidang dll:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- bidang yang mencakup beberapa paragraf

### Bidang Formula

Aspose.Words memberikan implementasi yang sangat serius dari mesin formula dan mendukung berikut:

- operator aritmatiketik dan logis:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- fungsi:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referensi untuk bookmark:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- tombol format nomor:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Fungsi berikut dalam ekspresi didukung: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUESitemap

### `IF` Login `COMPARE` Login

Beberapa `IF` ekspresi yang Aspose.Words dapat dengan mudah menghitung harus memberi Anda ide tentang bagaimana kuat fitur ini:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` Login `TIME` Login

Aspose.Words mendukung semua tombol format tanggal dan waktu yang tersedia Microsoft Word, beberapa contoh adalah:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Login

Aspose.Words tidak ada batasan pada kompleksitas Mail Merge bidang dalam dokumen Anda dan mendukung sarang `IF` dan kolom formula dan bahkan dapat menghitung nama gabungan lapangan menggunakan formula.

Beberapa contoh Mail Merge Login Aspose.Words dukungan:

- Login Mail merge switch lapangan:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- bidang gabungan bersarang dalam formula:
  `IF { `Login` Value1 } >= { `Login` Value2 } True False`
- menghitung nama lapangan merge saat ini:
  `MERGEFIELD { `Login` { `Login` Value1 } >= { `Login` Value2 } FirstName"LastName" }`
- kondisional pindah ke catatan berikutnya dalam sumber data:
  `NEXTIF { `Login` Value1 } <= { =IF(-2.45 >= 6*{ `Login` Value2 }, 2, -.45) }`

### Saklar Format

Bidang dalam dokumen dapat memiliki sakelar pemformatan yang menentukan bagaimana nilai yang dihasilkan harus diformat. Aspose.Words mendukung sakelar format berikut:

- @ - Tanggal dan format waktu
- \\\# - format nomor
- Login Login
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
- Login Sitemap
- Login Sitemap
- \\\\\\\\* CHARFORMAT - hasil format sesuai dengan karakter pertama dari kode lapangan
- \\\\\\\\* MERGEFORMAT - hasil format menurut bagaimana hasil lama diformat

### Date dan Format Nomor di Bidang

Sitemap Aspose.Words menghitung hasil lapangan, sering perlu membuat string menjadi nilai angka atau tanggal dan juga untuk memformatnya kembali ke string. Sitemap Aspose.Words menggunakan budaya benang saat ini untuk melakukan parsing dan format ketika menghitung nilai lapangan selama pembaruan lapangan dan mail mergeSitemap Ada juga pilihan yang disediakan dalam bentuk [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) kelas yang memungkinkan kontrol lebih lanjut atas budaya mana yang digunakan selama pembaruan lapangan%

* secara default [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) properti diatur untuk [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) bidang format yang menggunakan budaya benang saat ini
* properti ini dapat diatur untuk [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) sehingga bahasa diatur dari kode lapangan digunakan untuk memformat bukan Meme it

### Format menggunakan Budaya Thread Saat Ini

Untuk mengontrol budaya yang digunakan selama perhitungan lapangan, cukup set **CurrentCulture** properti untuk budaya pilihan Anda sebelum melakukan perhitungan lapangan.

Contoh kode berikut menunjukkan cara mengubah budaya yang digunakan dalam bidang pemformatan selama pembaruan:

EXAMPLE (menggunakan pembungkus publik CurrentThreadSettings.getLocale() dan setLocale() bukan pribadi `Thread.CurrentThread`Sitemap

Menggunakan budaya saat ini ke bidang format memungkinkan sistem untuk dengan mudah dan secara konsisten mengontrol bagaimana semua bidang dalam dokumen diformat selama pembaruan lapangan.

### Memformat menggunakan Budaya dalam Dokumen

Di sisi lain, Microsoft Word format setiap bidang individu berdasarkan bahasa teks yang ditemukan di lapangan (khususnya, berjalan dari kode lapangan). Kadang-kadang selama pembaruan lapangan ini mungkin perilaku yang diinginkan, misalnya jika Anda memiliki dokumen global yang berisi konten yang terdiri dari banyak bahasa yang berbeda dan ingin setiap bidang untuk menghormati penduduk setempat yang digunakan dari teks. Aspose.Words juga mendukung fungsi ini.

Login [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) kelas menyediakan [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) properti yang berisi anggota yang dapat digunakan untuk mengontrol bagaimana bidang diperbarui dalam dokumen.

Contoh kode berikut menunjukkan cara menentukan di mana budaya yang digunakan untuk pemformatan tanggal selama pembaruan lapangan dan Mail Merge dipilih:

Login
