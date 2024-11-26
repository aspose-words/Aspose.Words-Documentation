---
title: Ikhtisar Bidang di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Ikhtisar Bidang
linktitle: Ikhtisar Bidang
description: "Anda dapat mengakses modifikasi bidang menggunakan Python. Bidang dokumen dimuat ke dalam Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /id/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Biasanya suatu field, ketika dimasukkan ke dalam Microsoft Word, sudah berisi nilai terkini. Misalnya, jika bidangnya berupa rumus atau nomor halaman, bidang tersebut akan berisi nilai terhitung yang benar untuk versi dokumen tertentu. Namun jika Anda memiliki aplikasi yang menghasilkan atau memodifikasi dokumen dengan bidang (misalnya menggabungkan dua dokumen atau mengisi dengan data) maka agar dokumen tersebut berguna, idealnya semua bidang harus diperbarui.

Sebuah bidang terdiri dari:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Node awal dan pemisah bidang digunakan untuk mencakup konten yang membentuk kode bidang (biasanya dalam bentuk teks biasa)
- Pemisah bidang dan ujung bidang mencakup hasil lapangan. Ini dapat terdiri dari berbagai jenis konten mulai dari teks, paragraf, hingga tabel.
- Beberapa kolom mungkin tidak memiliki pemisah yang berarti seluruh konten membentuk kode kolom.
- Kode bidang mendefinisikan perilaku bidang dan terdiri dari pengidentifikasi bidang dan sering kali parameter lain seperti nama bidang dan sakelar.
- Hasil lapangan berisi evaluasi lapangan terkini. Nilai ini disimpan dalam hasil bidang dan ditampilkan kepada pengguna. Beberapa bidang mungkin tidak memiliki hasil bidang apa pun sehingga tidak akan menampilkan apa pun di dokumen. Demikian pula, beberapa bidang mungkin belum diperbarui sehingga tidak ada hasil bidangnya.

Berikut adalah tampilan bagaimana suatu bidang disimpan di Aspose.Words dengan menggunakan contoh "*DocumentExplorer"* yang dapat ditemukan di [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words adalah perpustakaan kelas yang dirancang untuk pemrosesan dokumen Microsoft Word di sisi server dan mendukung bidang dengan cara berikut:

- Semua bidang dalam dokumen dipertahankan selama pembukaan/penyimpanan dan konversi.
- Dimungkinkan untuk memperbarui hasil dari beberapa bidang paling populer.

## Bidang di Microsoft Word

Bidang dalam dokumen Microsoft Word rumit. Ada lebih dari 50 jenis bidang (masing-masing memerlukan prosedur penghitungan hasil sendiri), rumus dan ekspresi, penanda dan referensi, fungsi, dan berbagai sakelar. Bidang juga bisa disarangkan. Biasanya ketika dokumen dibuka, hasil bidang (nilai bidang) ditampilkan untuk semua bidang dalam dokumen. Anda dapat mengaktifkan tampilan hasil bidang atau kode bidang di Microsoft Word untuk semua bidang dengan menekan **ALT+F9**.

| Kode Bidang | Hasil Lapangan |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Memasukkan Bidang di Microsoft Word

Untuk menyisipkan bidang di Microsoft Word:

1. Klik pada menu **Insert**.
1. Klik menu tarik-turun **Quick Parts**
1. Pilih **Field**
1. Anda disajikan dengan layar yang memungkinkan Anda memasukkan rincian bidang. Di sisi kiri Anda diberikan daftar bidang yang mungkin dan di sisi kanan adalah layar untuk mengedit properti bidang secara visual.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Selain itu Anda dapat menekan tombol **Field Codes** yang memungkinkan Anda untuk langsung menuliskan kode field.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Sakelar juga dapat dimasukkan dengan menggunakan tombol **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Dengan menggunakan metode mana pun, isi kolom yang diinginkan dengan informasi yang sesuai, lalu tekan **Ok**.
1. Bidang tersebut dimasukkan ke dalam dokumen pada posisi kursor saat ini.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Memperbarui Bidang di Microsoft Word

Untuk memperbarui satu bidang di Microsoft Word:

1. Pindahkan tanda sisipan ke bidang yang ingin Anda perbarui.
1. Tekan **F9** untuk memperbarui kolom.

Untuk memperbarui semua bidang di Microsoft Word:

1. Tekan **Ctrl+A** untuk memilih semua konten dalam dokumen.
1. Tekan **F9** untuk memperbarui semua kolom yang ditemukan dalam pilihan.

### Beralih Antara Tampilan Kode Bidang dan Hasil Bidang

Untuk mengganti kode bidang dari satu bidang di Microsoft Word:

1. Pindahkan tanda sisipan ke bidang yang diinginkan.
1. Tekan **SHIFT+F9** untuk mengganti kode kolom hanya untuk kolom ini.

Untuk mengganti kode bidang dari semua bidang di Microsoft Word:

1. Tekan **ALT+F9**

### Mengonversi Bidang menjadi Teks Statis di Microsoft Word

Untuk mengonversi bidang dinamis menjadi teks statis di Microsoft Word:

1. Pindahkan tanda sisipan ke bidang yang ingin Anda konversi.
1. Tekan **Ctrl+Shift+F9** untuk mengubah kolom menjadi teks statis.

### Menghapus Bidang di Microsoft Word

Untuk menghapus bidang di Microsoft Word:

1. Pilih seluruh konten yang menyusun kolom. Jika kode field ditampilkan maka kurung kurawal pembuka dan kurung kurawal akhir juga harus dipilih.
1. Tekan **Delete** untuk menghapus seluruh kolom.

## Bidang di Aspose.Words

Saat dokumen dimuat ke Aspose.Words, bidang dokumen dimuat ke Aspose.Words Document Object Model sebagai kumpulan komponen terpisah (node). Satu bidang dimuat sebagai kumpulan node [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/), dan [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) beserta konten di antara node tersebut. Jika suatu field tidak memiliki hasil field maka tidak akan ada node [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Semua node ini selalu ditemukan inline (sebagai turunan dari [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) atau [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Konten yang membentuk kode bidang disimpan sebagai node [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) antara [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) dan [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Hasil bidang disimpan antara node [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) dan [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) dan dapat terdiri dari berbagai jenis konten. Biasanya, hasil bidang hanya berisi teks yang terdiri dari simpul [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), namun ada kemungkinan simpul [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) ditempatkan di paragraf yang sama sekali berbeda, sehingga membuat hasil bidang terdiri dari simpul tingkat blok seperti simpul [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) dan [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) juga.

Di Aspose.Words, setiap node **FieldXXX** berasal dari [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Kelas ini menyediakan properti untuk memeriksa jenis bidang yang diwakili oleh node tertentu melalui properti [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Misalnya [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) mewakili bidang gabungan dalam dokumen.

{{% alert color="primary" %}}

Ada beberapa bidang tertentu yang ada di dokumen Word yang tidak diimpor ke Aspose.Words sebagai kumpulan node **FieldXXX**. Misalnya, bidang `LINK` dan bidang `INCLUDEPICTURE` diimpor ke Aspose.Words sebagai objek [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Objek ini menyediakan properti untuk bekerja dengan data gambar yang biasanya disimpan di bidang ini.

Bidang formulir juga diimpor ke Aspose.Words sebagai kelas khusus mereka sendiri. Kelas [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) mewakili bidang formulir dalam dokumen Word dan menyediakan metode tambahan khusus untuk bidang formulir.

{{% /alert %}}

### Bidang yang Didukung selama Pembaruan

Perhitungan bidang berikut ini didukung dalam versi Aspose.Words saat ini:

- = (bidang rumus)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (termasuk TOT dan TOF)
- karena

### Parsing yang Canggih

Aspose.Words mengikuti cara Microsoft Word memproses kolom dan sebagai hasilnya ia menangani dengan benar:

- Bidang bersarang
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Argumen bidang dapat berupa hasil bidang yang disarangkan.
- Bidang dapat disarangkan dalam kode bidang serta dalam hasil bidang.
- Spasi/tanpa spasi, tanda kutip/tanpa tanda kutip, karakter escape pada kolom, dll.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Bidang yang mencakup beberapa paragraf.

#### Bidang Rumus

Aspose.Words menyediakan implementasi mesin formula yang sangat serius dan mendukung hal-hal berikut:

- Operator aritmatika dan logika:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Fungsi:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Referensi ke bookmark:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Sakelar pemformatan angka:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Fungsi ekspresi berikut ini didukung: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Bidang `IF` dan `COMPARE`

Beberapa ekspresi `IF` yang dapat dihitung dengan mudah oleh Aspose.Words akan memberi Anda gambaran betapa hebatnya fitur ini:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Bidang `DATE` dan `TIME`

Aspose.Words mendukung semua sakelar pemformatan tanggal dan waktu yang tersedia di Microsoft Word, beberapa contohnya adalah:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Bidang Mail Merge

Aspose.Words tidak memberikan batasan pada kompleksitas bidang Mail Merge di dokumen Anda dan mendukung `IF` bertingkat dan bidang rumus dan bahkan dapat menghitung nama bidang gabungan menggunakan rumus.

Beberapa contoh kolom Mail Merge yang didukung Aspose.Words:

- Sakelar bidang Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Bidang gabungan bersarang dalam rumus:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Hitung nama bidang gabungan saat runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Perpindahan bersyarat ke rekaman berikutnya di sumber data:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Peralihan Format

Bidang dalam dokumen dapat memiliki tombol pemformatan yang menentukan bagaimana nilai yang dihasilkan harus diformat. Aspose.Words mendukung sakelar format berikut:

- @ - format tanggal dan waktu
- \\\# - pemformatan angka
- \\\\\\\\* Tutup
- \\\\\\\\* FirstCap
- \\\\\\\\* Lebih rendah
- \\\\\\\\* Atas
- \\\\\\\\* CHARFORMAT – memformat hasil sesuai karakter pertama kode field.
- \\\\\\\\* MERGEFORMAT – memformat hasil sesuai dengan format hasil lama.

#### Date dan Pemformatan Angka di Bidang

Saat Aspose.Words menghitung hasil bidang, sering kali Aspose.Words perlu menguraikan string menjadi nilai angka atau tanggal dan juga memformatnya kembali menjadi string. Secara default, Aspose.Words menggunakan budaya thread saat ini untuk melakukan penguraian dan pemformatan saat menghitung nilai bidang selama pembaruan bidang dan mail merge. Ada juga opsi yang disediakan dalam bentuk kelas [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) yang memungkinkan kontrol lebih lanjut terhadap budaya mana yang digunakan selama pembaruan lapangan.

- Secara default properti [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) diatur ke [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) yang memformat bidang menggunakan budaya thread saat ini.
- Properti ini dapat disetel ke [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) sehingga bahasa yang disetel dari kode bidang digunakan untuk pemformatan.

#### Memformat menggunakan Budaya Thread Saat Ini

Untuk mengontrol budaya yang digunakan selama perhitungan lapangan, cukup gunakan metode **lokal.setlocale** untuk mengatur budaya pilihan Anda sebelum menjalankan perhitungan lapangan.
Contoh di bawah ini menunjukkan cara mengubah budaya yang digunakan dalam bidang pemformatan selama pembaruan.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Menggunakan budaya saat ini untuk memformat bidang memungkinkan sistem mengontrol dengan mudah dan konsisten bagaimana semua bidang dalam dokumen diformat selama pembaruan bidang.

#### Memformat menggunakan Budaya dalam Dokumen

Di sisi lain, Microsoft Word memformat setiap bidang berdasarkan bahasa teks yang ditemukan di bidang tersebut (khususnya, proses dari kode bidang). Terkadang selama pembaruan bidang, hal ini mungkin merupakan perilaku yang diinginkan, misalnya jika Anda memiliki dokumen global yang berisi konten yang terdiri dari berbagai bahasa dan ingin setiap bidang mengikuti lokal yang digunakan dari teks. Aspose.Words juga mendukung fungsi ini.

Kelas [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) menyediakan properti [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) yang berisi anggota yang dapat digunakan untuk mengontrol bagaimana bidang diperbarui dalam dokumen. Contoh di bawah ini menunjukkan cara menentukan budaya mana yang digunakan untuk pemformatan tanggal selama pembaruan bidang dan Mail Merge dipilih.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Menemukan Kode Lapangan dan Hasil Lapangan

Bidang yang disisipkan menggunakan [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) mengembalikan objek [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Ini adalah kelas fasad yang menyediakan metode berguna untuk menemukan properti suatu bidang dengan cepat. Catatan jika Anda hanya mencari nama bidang gabungan dalam dokumen maka Anda bisa menggunakan metode bawaan [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). Contoh di bawah ini menunjukkan cara mendapatkan nama semua bidang gabungan dalam dokumen.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Cara Mengganti Nama Bidang Gabungan

Contoh di bawah ini menunjukkan cara mengganti nama bidang gabungan di dokumen Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
