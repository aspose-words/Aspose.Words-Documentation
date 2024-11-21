---
title: Manipulat dan Substitute TrueType Fonts
second_title: Aspose.Words Sitemap Java
articleTitle: Manipulat dan Substitute TrueType Fonts
linktitle: Manipulat dan Substitute TrueType Fonts
description: "Aspose.Words Sitemap Java dapat mengatur font TrueType yang benar ke dalam dokumen yang dihasilkan untuk memastikan bahwa ia menampilkan secara akurat, atau mencari pengganti font yang sesuai, atau menggunakan mekanisme fallback Font."
type: docs
weight: 10
url: /id/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words membutuhkan Benar Jenis font untuk berbagai tugas, termasuk dokumen rendering ke format halaman tetap, misalnya, PDF atau XPSSitemap Sitemap Aspose.Words render dokumen, perlu melakukan embedding dan subset yang timbul dari TrueType font ke dalam dokumen yang dihasilkan, yang merupakan praktik normal selama generasi dokumen, termasuk PDF populer atau XPS Login Ini memastikan bahwa dokumen akan muncul sama dengan pemirsa apa pun. Sitemap XPS spesifikasi membutuhkan font untuk selalu tertanam dalam dokumen.

Untuk memastikan Aspose.Words akurat mengukur karakter dan berhasil timbul font yang relevan, kondisi berikut harus dipenuhi:

Sitemap Aspose.Words harus dapat menemukan dan mengakses file font TrueType di sistem.
Sitemap Harus ada font TrueType yang cukup tersedia untuk Aspose.Words, sebaiknya dengan nama keluarga font yang sama seperti yang digunakan dalam dokumen.

Perhatikan bahwa font dalam dokumen mewakili entitas, seperti nama keluarga, gaya, ukuran, warna, yang berbeda dari `TrueType` font (font fisik) entitas. Aspose.Words menyelesaikan font dalam dokumen ke font fisik pada beberapa tahap pemrosesan. Ini memungkinkan tugas-tugas tertentu, paling umum tugas menghitung ukuran teks selama konstruksi tata letak dan mengatur / mengatur ke format halaman tetap. Sejumlah tugas yang kurang populer lainnya, seperti pemecahan font dan pergantian sementara memuat HTML atau embedding/subsetting ke beberapa format aliran, juga diaktifkan.

## Font Manipulasi dan Masalah Kinerja

Semua mekanisme manipulasi font yang tersedia terkandung dalam [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) Sitemap Kelas ini bertanggung jawab untuk mengambil font dalam sumber font yang ditentukan serta untuk proses Substitusi Font, seperti yang dijelaskan di bawah ini.

Fonts dibuat dalam beberapa langkah:

Sitemap Mendapatkan info untuk font, menyelesaikan dari semua font yang tersedia.
Sitemap Membuat font yang diselesaikan untuk mendapatkan tersedia glyphs dan metrik (horizontal dan vertikal).
Sitemap Menetapkan font yang telah diselesaikan untuk menyematkan dan mengatur ulang.

Sitemap Aspose.Words menemukan font dalam dokumen untuk pertama kalinya, upaya untuk mendapatkan informasi font dasar, seperti nama penuh font, nama keluarga, versi, gaya, dari file font yang terletak di setiap sumber font. Setelah semua font diambil, Aspose.Words menggunakan detail ini untuk menemukan data font yang diperlukan atau penggantian yang cocok untuk font yang diminta.

Karena prosedur yang dijelaskan di atas memakan waktu, dapat mempengaruhi kinerja aplikasi secara negatif pada peluncuran pertamanya. Namun, setiap kasus **FontSettings** memiliki cache sendiri, yang dapat mengurangi waktu pemrosesan dokumen berikutnya. Sebagai contoh, Anda dapat berbagi contoh **FontSettings** kelas antara dokumen yang berbeda, yang memungkinkan Anda untuk mempercepat pemuatan dokumen. Contoh berikut menunjukkan ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Dalam kasus ketika **FontSettings** tidak didefinisikan secara eksplisit, Aspose.Words menggunakan default **FontSettings** Sitemap Contoh ini juga secara otomatis dibagikan di antara dokumen, dan dapat diekstrak sebagai berikut:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Jika Anda yakin bahwa semua dokumen pemrosesan memerlukan pengaturan font yang sama, maka disarankan untuk mengatur dan memanfaatkan default **FontSettings** Sitemap Misalkan bahwa Anda perlu menggunakan sumber font yang sama untuk semua dokumen Anda. Dalam hal ini, Anda hanya dapat mengubah instance default sebagai berikut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

Kustom **FontSettings** memiliki prioritas yang lebih tinggi dari instance default.

{{% /alert %}}

## Ketersediaan Font dan Substitusi

Teks dalam dokumen dapat diformat dengan berbagai font, seperti Arial, Times New Roman, Verdana, dan lain-lain. Sitemap Aspose.Words render dokumen, upaya untuk memilih font yang ditentukan dalam dokumen.

Namun, ada situasi ketika font yang tepat tidak dapat ditemukan dan Aspose.Words harus menggantinya untuk font yang sama bukan. Aspose.Words pilih font sesuai dengan proses berikut:

Sitemap Aspose.Words mencoba menemukan font di antara sumber font yang tersedia dengan nama font yang tepat.
Sitemap Aspose.Words mencoba menemukan font yang diperlukan di antara font yang tertanam dalam dokumen asli. Beberapa format dokumen seperti DOCX dapat mengandung font tertanam.
Sitemap Sitemap Aspose.Words tidak bisa menemukan font yang diperlukan dengan nama yang tepat, dan [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) properti didefinisikan untuk font ini, kemudian Aspose.Words akan menemukan font yang didefinisikan dengan Meme it **AltName** dari [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) kelas, yang menentukan informasi font.
Sitemap Sitemap Aspose.Words tidak bisa menemukan font yang ditentukan, dan **AltName** tidak juga didefinisikan, maka aturan substitusi font diterapkan satu-by-one, seperti yang dijelaskan di bawah (ketika penggantian yang tepat ditemukan, Proses Substitusi Font berhenti dan langkah berikutnya tidak dieksekusi):
   Sitemap Aspose.Words akan mencoba untuk menerapkan pengaturan font OS, jika mereka tersedia, dengan menggunakan `FontConfig` Sitemap Ini Non-Windows fitur harus digunakan dengan OS yang kompatibel FontConfig. Hampir setiap OS berbasis Unix sudah memiliki `FontConfig` perpustakaan yang dirancang untuk menyediakan konfigurasi font, kustomisasi, dan akses ke aplikasi. Jika tidak, perpustakaan ini dapat dengan mudah dipasang oleh pengguna.<br/>
      Aspose.Words tahu bagaimana mengukur data dan menafsirkan hasil FontConfig untuk tujuannya sendiri. Login `FontConfig` utilitas dinonaktifkan. Anda dapat mengaktifkannya sebagai berikut:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. Langkah berikutnya adalah mekanisme sederhana, tetapi sangat kuat yang disebut [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)Sitemap Secara default, fitur ini aktif dan tersedia untuk setiap OS. Aspose.Words menggunakan tabel XML yang menentukan aturan substitusi dasar untuk OS yang berbeda. Menurut aturan substitusi Tabel, daftar nama font pengganti akan digunakan.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - font yang akan diganti, SubstituteFonts - daftar varian substitusi, dipisahkan oleh komma. Font pertama yang tersedia digunakan untuk penggantian.<br/>
      Fitur utama dari aturan ini adalah kemampuan untuk memuat tabel substitusi Anda sendiri, karena ditunjukkan dalam contoh berikut:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Anda dapat mengambil dasar tabel yang ada dari jar atau menyimpannya secara programtik dengan cara berikut:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Meskipun fleksibilitas mekanisme ini, ada beberapa kasus ketika lebih baik menonaktifkannya, seperti yang ditunjukkan di bawah ini:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Itu **FontInfo** aturan substitusi akan diterapkan jika aturan substitusi tabel tidak dapat menemukan font. Mekanisme ini diaktifkan secara default. Aspose.Words menemukan font yang paling cocok sesuai dengan informasi font yang terkandung dalam dokumen tertentu. Informasi ini dapat diperoleh dari **FontInfo** kelas seperti yang ditunjukkan di bawah ini:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Pengguna tidak dapat mengganggu alur kerja fitur ini kecuali mereka memutuskan untuk menonaktifkannya dalam kasus hasil yang tidak memuaskan:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Sitemap **FontInfo** tidak tersedia untuk font yang hilang, maka proses berhenti.
   Sitemap **DefaultFont** aturan substitusi akan diterapkan dalam kasus ketika `FontInfo` substitusi juga gagal. Aturan ini juga diaktifkan secara default. Menurut aturan ini, Aspose.Words akan mencoba untuk menggunakan font default yang ditentukan dalam [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) Login Jika pengguna belum memilih font default mereka sendiri, maka "Waktu Romawi Baru" akan digunakan sebagai font default. Aturan ini dapat dinonaktifkan seperti yang ditunjukkan di bawah ini:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Untuk memeriksa font default saat ini, gunakan:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Untuk mengatur pilihan pengganti Anda sendiri, berlaku:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
Sitemap Sitemap Aspose.Words tidak bisa melakukan substitusi font, ia mencoba untuk mendapatkan font pertama yang tersedia dari sumber font yang tersedia.
Sitemap Sitemap Aspose.Words tidak dapat menemukan font di antara sumber font yang tersedia, itu render dokumen menggunakan font Fanwood gratis yang tertanam ke dalam Aspose.Words Sitemap

{{% alert color="primary" %}}

Sitemap **FontInfo** tersedia, aturan substitusi * FontInfo * akan selalu menyelesaikan font dan menimpa aturan font default. Jika Anda ingin menggunakan aturan font default, Anda harus menonaktifkan aturan substitusi * FontInfo *. Perhatikan bahwa aturan substitusi *FontConfig * akan menyelesaikan font dalam kebanyakan kasus, dan dengan demikian menimpa semua aturan lain.

{{% /alert %}}

## Bagaimana untuk mengenali Itu Font Apakah Diganti

Kadang-kadang, mungkin tidak jelas mengapa tata letak dokumen telah berubah, atau mengapa beberapa font tidak terlihat seperti yang diharapkan. Dalam kasus tersebut, pesan peringatan substitusi font yang diimplementasikan oleh [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) antarmuka datang untuk menyelamatkan. Mereka memiliki Meme it [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) jenis peringatan dan format teks deskripsi standar, "Font '<originalfont>' belum ditemukan. Meme it Menggunakan '<substitutionfont>' font bukan. Sitemap <reason>", dengan alasan berikut:</reason></substitutionfont></originalfont>

- "nama alternatif dari dokumen" - untuk substitusi oleh [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig substitusi" - untuk substitusi dengan aturan font config
- "substitusi yang stabil" - untuk substitusi oleh aturan tabel
- "font info substitusi" - untuk substitusi dengan aturan info font
- "substitusi font default" - untuk substitusi dengan aturan font default
- "font yang tersedia pertama" - untuk substitusi dengan font yang tersedia pertama

## Pengaturan Font FallBack dari XML

Ada dua mekanisme yang berbeda yang digunakan dalam Aspose.Words - Substitusi Font dan fallback Font. Substitusi font digunakan ketika font yang ditentukan dalam dokumen tidak dapat ditemukan di antara sumber font karena dijelaskan di bagian di atas. Mekanisme fallback Font digunakan ketika font diselesaikan, tetapi tidak mengandung karakter tertentu. Dalam kasus ini, Aspose.Words mencoba menggunakan salah satu font fallback untuk karakter.

Sitemap [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) metode yang secara otomatis membangun pengaturan fallback dengan memindai font yang tersedia. Karena metode ini dapat menghasilkan pengaturan fallback non-optimalkan, Anda dapat mengontrol perilaku fallback font dengan menggunakan sifat [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) Sitemap Kelas ini menentukan pengaturan mekanisme fallback font. Anda bisa mendapatkan contoh **FontFallbackSettings** kelas sebagai berikut:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Demikian pula dengan aturan substitusi yang dapat diandalkan *, mekanisme ini menggunakan tabel XML untuk konfigurasi. Tabel XML ini dapat dimuat dan disimpan dengan metode berikut:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Login Aspose.Words rilis termasuk dua tabel: *MsOfficeFallbackSetting.xml* Login *NotoFallbackSetting.xml*Sitemap

Login *MsOfficeFallbackSetting* tabel mendefinisikan strategi pengganti untuk berbagai karakter, yang mirip dengan strategi yang digunakan oleh Microsoft WordSitemap Dengan demikian, strategi membutuhkan instalasi Microsoft Kantor fonts. *MsOfficeFallbackSetting* dapat diaktifkan menggunakan metode berikut:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Login *NotoFallbackSetting* tabel dibuat terutama untuk digunakan dengan Google Noto font (lihat lebih banyak tentang Google Noto Pengaturan font di bagian berikutnya) dan dapat diaktifkan sebagai berikut:

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

## Pengaturan FallBack Font yang telah ditentukan untuk Google Noto Login

Aspose.Words menyediakan pengaturan fallback font yang telah ditentukan untuk Google Noto Login Ini adalah font gratis yang berlisensi di bawah Lisensi Font Terbuka SIL, yang dapat diunduh dari Google Noto Login Login **FontFallbackSettings** kelas menyediakan [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) Login Ini memuat pengaturan fallback yang ditentukan, yang menggunakan Google Noto font seperti yang ditunjukkan dalam contoh kode di bawah ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Hanya Sans style Noto font dengan berat biasa digunakan dalam pengaturan yang ditentukan.

{{% /alert %}}

## Sitemap Aspose.Words Cari Font

Aspose.Words mencoba untuk menemukan font TrueType pada sistem file secara otomatis. Biasanya, Anda dapat mengandalkan perilaku default dari Aspose.Words untuk menemukan `TrueType` font, tetapi kadang-kadang Anda perlu menentukan folder Anda sendiri yang mengandung font TrueType. Login [Login](/words/id/java/specify-truetype-fonts-location/) topik menggambarkan bagaimana dan di mana Meme it Aspose.Words mencari font, serta cara menentukan lokasi font Anda sendiri.

## Perbedaan dalam Pengolahan Format Font dalam Aspose.Words Login Microsoft Word

Ada beberapa perbedaan dalam pemrosesan format font dalam Aspose.Words Login Microsoft Word seperti yang ditunjukkan pada tabel di bawah ini:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Font TrueType dan OpenType fonts dengan garis besar TrueType | Sitemap | Sitemap |
| OpenType fonts dengan Garis besar PostScript | Didukung untuk sebagian besar skenario. Menghapus format halaman tetap seperti PDF dan XPS tidak didukung. Teks diganti dengan gambar bitmap. | Didukung untuk sebagian besar skenario, termasuk embedding ke format halaman tetap. |
| Variasi Font OpenType | Hanya contoh bernama yang didukung. variasi terus menerus tidak didukung. | Didukung hanya instance default. Contoh nama dan variasi terus menerus tidak didukung. |
| Mengetik1 font | Sitemap Windows versi sebelum 2013 dan pada versi MacOS. Dukungan dijatuhkan Windows versi mulai dari 2013. | Tidak didukung. |

## Lihat Juga

- Login [Google Noto Login](https://fonts.google.com/noto) untuk mengunduh font gratis


