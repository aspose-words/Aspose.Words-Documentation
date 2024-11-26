---
title: Memanipulasi dan Mengganti Font TrueType
second_title: Aspose.Words untuk Java
articleTitle: Memanipulasi dan Mengganti Font TrueType
linktitle: Memanipulasi dan Mengganti Font TrueType
description: "Aspose.Words untuk Java dapat menyematkan font TrueType yang benar ke dalam dokumen yang dihasilkan untuk memastikannya ditampilkan secara akurat, atau mencari pengganti font yang sesuai, atau menggunakan mekanisme fallback Font."
type: docs
weight: 10
url: /id/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words memerlukan font TrueType untuk berbagai tugas, termasuk merender dokumen ke format halaman tetap, misalnya, PDF atau XPS. Saat Aspose.Words merender dokumen, dokumen perlu melakukan penyematan dan penyematan subset font TrueType ke dalam dokumen yang dihasilkan, yang merupakan praktik normal selama pembuatan dokumen, termasuk format PDF atau XPS yang populer. Ini memastikan bahwa dokumen akan tampak sama di semua penampil. Selain itu, spesifikasi XPS mengharuskan font untuk selalu disematkan dalam dokumen.

Untuk memastikan Aspose.Words mengukur karakter secara akurat dan berhasil menyematkan font yang relevan, persyaratan berikut harus dipenuhi:

1. Aspose.Words harus dapat menemukan dan mengakses file font TrueType di sistem.
1. Harus ada cukup font TrueType yang tersedia untuk Aspose.Words, sebaiknya dengan nama keluarga font yang sama dengan yang digunakan dalam dokumen.

Perhatikan bahwa font dalam dokumen mewakili entitas, seperti nama keluarga, gaya, ukuran, warna, yang berbeda dari entitas `TrueType` font (font fisik). Aspose.Words menyelesaikan font dalam dokumen menjadi font fisik pada beberapa tahap pemrosesan. Hal ini memungkinkan tugas-tugas tertentu, paling umum tugas menghitung ukuran teks selama konstruksi tata letak dan menyematkan / mensubset ke format halaman tetap. Sejumlah tugas lain yang kurang populer, seperti penyelesaian dan penggantian font saat memuat HTML atau menyematkan / mensubset ke beberapa format alur, juga diaktifkan.

## Manipulasi Font dan Masalah Kinerja

Semua mekanisme manipulasi font yang tersedia terdapat dalam kelas [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Kelas ini bertanggung jawab untuk mengambil font dalam sumber font yang ditentukan serta untuk proses Penggantian Font, seperti yang dijelaskan di bawah ini.

Font diuraikan dalam beberapa langkah:

1. Mendapatkan info untuk font, menyelesaikan dari semua font yang tersedia.
1. Mengurai font yang diselesaikan untuk mendapatkan mesin terbang dan metrik yang tersedia (horizontal dan vertikal).
1. Mengurai font yang diselesaikan untuk disematkan dan disubset.

Saat Aspose.Words menemukan font dalam dokumen untuk pertama kalinya, ia mencoba mendapatkan informasi font dasar, seperti nama lengkap font, nama keluarga, versi, gaya, dari file font yang terletak di setiap sumber font. Setelah semua font diambil, Aspose.Words menggunakan detail ini untuk menemukan data font yang diperlukan atau pengganti yang sesuai untuk font yang diminta.

Karena prosedur yang dijelaskan di atas memakan waktu, prosedur ini dapat berdampak negatif pada kinerja aplikasi pada peluncuran pertamanya. Namun, setiap instance **FontSettings** memiliki cache sendiri, yang dapat mengurangi waktu pemrosesan dokumen berikutnya. Misalnya, Anda dapat membagikan instance kelas **FontSettings** di antara dokumen yang berbeda, yang memungkinkan Anda mempercepat pemuatan dokumen. Contoh berikut menunjukkan hal ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Dalam kasus ketika **FontSettings** tidak didefinisikan secara eksplisit, Aspose.Words menggunakan instance **FontSettings** default. Instance ini juga dibagikan secara otomatis di antara dokumen, dan dapat diekstraksi sebagai berikut:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Jika Anda yakin bahwa semua dokumen pemrosesan memerlukan pengaturan font yang sama, maka disarankan untuk menyiapkan dan menggunakan instance **FontSettings** default. Misalkan Anda perlu menggunakan sumber font yang sama untuk semua dokumen Anda. Dalam hal ini, Anda cukup mengubah instance default sebagai berikut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Kustom **FontSettings** memiliki prioritas lebih tinggi daripada instance default.

{{% /alert %}}

## Ketersediaan dan Penggantian Font

Teks dalam dokumen dapat diformat dengan berbagai font, seperti Arial, Times New Roman, Verdana, dan lainnya. Saat Aspose.Words merender dokumen, ia mencoba memilih font yang ditentukan dalam dokumen.

Namun, ada situasi ketika font yang tepat tidak dapat ditemukan dan Aspose.Words harus menggantinya dengan font yang serupa. Aspose.Words memilih font sesuai dengan proses berikut:

1. Aspose.Words mencoba menemukan font di antara sumber font yang tersedia dengan nama font yang tepat.
1. Aspose.Words mencoba menemukan font yang diperlukan di antara font yang disematkan di dokumen asli. Beberapa format dokumen seperti DOCX dapat berisi font yang disematkan.
1. Jika Aspose.Words tidak dapat menemukan font yang diperlukan dengan nama yang sama persis, dan properti [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) ditentukan untuk font ini, maka Aspose.Words akan menemukan font yang ditentukan dengan **AltName** dari kelas [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), yang menentukan informasi font.
1. Jika Aspose.Words tidak dapat menemukan font yang ditentukan, dan **AltName** juga tidak ditentukan, maka aturan penggantian font diterapkan satu per satu, seperti yang dijelaskan di bawah ini (saat penggantian yang sesuai ditemukan, Proses Penggantian Font berhenti dan langkah selanjutnya tidak dijalankan):
   1. Aspose.Words akan mencoba menerapkan pengaturan font OS, jika tersedia, dengan menggunakan utilitas `FontConfig`. Fitur Non - Windows ini harus digunakan dengan FontConfig yang kompatibel dengan OS. Hampir semua OS berbasis Unix sudah memiliki pustaka `FontConfig` yang dirancang untuk menyediakan konfigurasi font di seluruh sistem, penyesuaian, dan akses ke aplikasi. Jika tidak, pustaka ini dapat dengan mudah diinstal oleh pengguna.<br>
      Aspose.Words mengetahui cara menanyakan data dan menafsirkan hasil FontConfig untuk tujuannya sendiri. Secara default, utilitas `FontConfig` dinonaktifkan. Anda dapat mengaktifkannya sebagai berikut:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Langkah selanjutnya adalah mekanisme sederhana namun sangat kuat yang disebut [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Secara default, fitur ini aktif dan tersedia untuk OS apa pun. Aspose.Words menggunakan tabel XML yang menentukan aturan substitusi dasar untuk OS yang berbeda. Menurut aturan substitusi tabel, daftar nama font pengganti akan digunakan.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - font yang akan diganti, SubstituteFonts - daftar varian substitusi, dipisahkan dengan koma. Font pertama yang tersedia digunakan untuk penggantian.<br>
      Fitur utama dari aturan ini adalah kemampuan untuk memuat tabel substitusi Anda sendiri, seperti yang ditunjukkan pada contoh berikut:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Anda dapat mengambil sebagai dasar tabel yang ada dari toples atau menyimpannya secara terprogram dengan cara berikut:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Terlepas dari fleksibilitas mekanisme ini, ada beberapa kasus di mana lebih baik menonaktifkannya, seperti yang ditunjukkan di bawah ini:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Aturan substitusi **FontInfo** akan diterapkan jika aturan substitusi tabel tidak dapat menemukan font. Mekanisme ini diaktifkan secara default. Aspose.Words menemukan font yang paling sesuai dengan informasi font yang terdapat dalam dokumen tertentu. Informasi ini dapat diperoleh dari kelas **FontInfo** seperti yang ditunjukkan di bawah ini:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Pengguna tidak dapat ikut campur dalam alur kerja fitur ini kecuali mereka memutuskan untuk menonaktifkannya jika hasilnya tidak memuaskan:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Jika **FontInfo** tidak tersedia untuk font yang hilang, maka proses akan berhenti.
   1. aturan substitusi **DefaultFont** akan diterapkan jika substitusi `FontInfo` juga gagal. Aturan ini juga diaktifkan secara default. Menurut aturan ini, Aspose.Words akan mencoba menggunakan font default yang ditentukan dalam properti [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Jika pengguna belum memilih font defaultnya sendiri, maka "Times New Roman" akan digunakan sebagai font default. Aturan ini dapat dinonaktifkan seperti yang ditunjukkan di bawah ini:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Untuk memeriksa font default saat ini, gunakan:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Untuk menyiapkan opsi penggantian Anda sendiri, terapkan:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Jika Aspose.Words tidak dapat melakukan penggantian font, ia mencoba mendapatkan font pertama yang tersedia dari sumber font yang tersedia.
1. Terakhir, jika Aspose.Words tidak dapat menemukan font apa pun di antara sumber font yang tersedia, dokumen akan dirender menggunakan font Fanwood gratis yang disematkan ke dalam rakitan Aspose.Words.

{{% alert color="primary" %}}

Jika **FontInfo** tersedia, *FontInfo substitution rule* akan selalu menyelesaikan font dan mengganti aturan font default. Jika Anda ingin menggunakan aturan font default, Anda harus menonaktifkan *FontInfo substitution rule*. Perhatikan bahwa *FontConfig substitution rule* akan menyelesaikan font dalam banyak kasus, dan dengan demikian mengesampingkan semua aturan lainnya.

{{% /alert %}}

## Bagaimana Mengenali Bahwa Font Telah Diganti

Terkadang, mungkin tidak jelas mengapa tata letak dokumen berubah, atau mengapa beberapa font tidak terlihat seperti yang diharapkan. Dalam kasus seperti itu, pesan peringatan penggantian font yang diterapkan oleh antarmuka [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) datang untuk menyelamatkan. Mereka memiliki tipe peringatan [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) dan format teks deskripsi standar, " Font '<OriginalFont> ' belum ditemukan. Menggunakan font '<SubstitutionFont> ' sebagai gantinya. Reason: <Reason>", dengan alasan sebagai berikut:

- "nama alternatif dari dokumen" – untuk penggantian dengan [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "substitusi fontconfig" – untuk substitusi dengan aturan konfigurasi font
- "substitusi tabel" – untuk substitusi dengan aturan tabel
- "substitusi info font" – untuk substitusi berdasarkan aturan info font
- "substitusi font default" – untuk substitusi dengan aturan font default
- "font pertama yang tersedia" – untuk penggantian dengan font pertama yang tersedia

## Pengaturan Fonta FallBack dari XML

Ada dua mekanisme berbeda yang digunakan dalam Aspose.Words - Substitusi font dan fallback Font. Penggantian font digunakan ketika font yang ditentukan dalam dokumen tidak dapat ditemukan di antara sumber font seperti yang dijelaskan di bagian di atas. Mekanisme fallback Font digunakan saat font diselesaikan, tetapi tidak berisi karakter tertentu. Dalam hal ini, Aspose.Words mencoba menggunakan salah satu font fallback untuk karakter tersebut.

Ada metode [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) yang secara otomatis membuat pengaturan mundur dengan memindai font yang tersedia. Karena metode ini dapat menghasilkan pengaturan fallback yang tidak optimal, Anda dapat mengontrol perilaku fallback font dengan menggunakan properti kelas [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Kelas ini menentukan pengaturan mekanisme fallback font. Anda bisa mendapatkan instance dari kelas **FontFallbackSettings** sebagai berikut:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Sama halnya dengan *Table substitution rule*, mekanisme ini menggunakan tabel XML untuk konfigurasi. Tabel XML ini dapat dimuat dan disimpan dengan metode berikut:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Rilis Aspose.Words mencakup dua tabel: *MsOfficeFallbackSetting.xml* dan *NotoFallbackSetting.xml*.

Tabel *MsOfficeFallbackSetting* mendefinisikan strategi penggantian untuk rentang karakter, yang mirip dengan strategi yang digunakan oleh Microsoft Word. Dengan demikian, strategi tersebut memerlukan pemasangan Microsoft font Office. *MsOfficeFallbackSetting* dapat diaktifkan menggunakan metode berikut:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabel *NotoFallbackSetting* dibuat khusus untuk digunakan dengan font Google Noto (lihat selengkapnya tentang pengaturan font Google Noto di bagian selanjutnya) dan dapat diaktifkan sebagai berikut:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

Contoh kode berikut menunjukkan cara memuat pengaturan fallback font dari file XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

Dalam contoh kode di atas, file XML berikut digunakan:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Pengaturan FallBack Font yang telah Ditentukan Sebelumnya untuk Google Noto Font

Aspose.Words menyediakan pengaturan fallback font yang telah ditentukan sebelumnya untuk Google Noto font. Ini adalah font gratis yang dilisensikan di bawah SIL Open Font License, yang dapat diunduh dari Google Noto Font. Kelas **FontFallbackSettings** menyediakan metode [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Ini memuat pengaturan fallback yang telah ditentukan sebelumnya, yang menggunakan font Google Noto seperti yang ditunjukkan pada contoh kode di bawah ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Hanya font Noto Sans style dengan bobot reguler yang digunakan dalam pengaturan yang telah ditentukan.

{{% /alert %}}

## Dimana Aspose.Words Mencari Font

Aspose.Words mencoba menemukan TrueType font pada sistem file secara otomatis. Biasanya, Anda dapat mengandalkan perilaku default Aspose.Words untuk menemukan font `TrueType`, tetapi terkadang Anda perlu menentukan folder Anda sendiri yang berisi font TrueType. The [Tentang Lokasi Font TrueType](/words/java/specify-truetype-fonts-location/) topik menjelaskan bagaimana dan di mana Aspose.Words mencari font, serta cara menentukan lokasi font Anda sendiri.

## Perbedaan Pemrosesan Format Font dalam Aspose.Words dan Microsoft Word

Ada beberapa perbedaan dalam pemrosesan format font di Aspose.Words dan Microsoft Word seperti yang ditunjukkan pada tabel di bawah ini:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| Font TrueType dan font OpenType dengan garis besar TrueType | Didukung. | Didukung. |
| OpenType fonta dengan garis luar PostScript | Didukung untuk sebagian besar skenario. Menyematkan ke format halaman tetap seperti PDF dan XPS tidak didukung. Teks diganti dengan gambar bitmap. | Didukung untuk sebagian besar skenario, termasuk menyematkan ke format halaman tetap. |
| OpenType Variasi Fonta | Hanya instans bernama yang didukung. Variasi berkelanjutan tidak didukung. | Didukung untuk satu-satunya instans default. Instans bernama dan variasi berkelanjutan tidak didukung. |
| Type1 fonta | Didukung pada versi Windows sebelum 2013 dan pada versi MacOS. Dukungan dihentikan pada versi Windows mulai tahun 2013. | Tidak didukung. |

## Lihat Juga

- [Google Noto Fonta](https://fonts.google.com/noto) untuk mengunduh font gratis


