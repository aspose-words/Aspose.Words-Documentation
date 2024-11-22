---
title: Memanipulasi dan Mengganti Font TrueType di C#
second_title: Aspose.Words untuk .NET
articleTitle: Memanipulasi dan Mengganti Font TrueType
linktitle: Memanipulasi dan Mengganti Font TrueType
description: "Aspose.Words untuk .NET dapat menyematkan font TrueType yang benar ke dalam dokumen yang dihasilkan untuk memastikan bahwa dokumen tersebut ditampilkan secara akurat menggunakan C#. Jika font atau karakter tertentu tidak tersedia, Aspose.Words mencari pengganti font yang sesuai atau menggunakan mekanisme fallback Font."
type: docs
weight: 10
url: /id/net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words memerlukan font TrueType untuk berbagai tugas, termasuk merender dokumen ke format halaman tetap, misalnya PDF atau XPS. Saat Aspose.Words merender dokumen, Aspose.Words perlu melakukan penyematan dan penyematan subset font TrueType ke dalam dokumen yang dihasilkan, yang merupakan praktik normal selama pembuatan dokumen, termasuk format PDF atau XPS yang populer. Hal ini memastikan bahwa dokumen akan tampak sama bagi siapa pun yang melihatnya. Selain itu, spesifikasi XPS mengharuskan font untuk selalu disematkan pada dokumen.

Untuk memastikan Aspose.Words mengukur karakter secara akurat dan berhasil menyematkan font yang relevan, ketentuan berikut harus dipenuhi:

1. Aspose.Words harus dapat menemukan dan mengakses file font TrueType di sistem.
1. Harus tersedia font TrueType yang memadai untuk Aspose.Words, sebaiknya dengan nama keluarga font yang sama dengan yang digunakan dalam dokumen.

Perhatikan bahwa font dalam dokumen mewakili entitas, seperti nama keluarga, gaya, ukuran, warna, yang berbeda dari entitas font `TrueType` (font fisik). Aspose.Words mengubah font dalam dokumen menjadi font fisik pada tahap pemrosesan tertentu. Hal ini memungkinkan tugas-tugas tertentu, paling umum tugas menghitung ukuran teks selama konstruksi tata letak dan menyematkan/mensubset ke format halaman tetap. Sejumlah tugas lain yang kurang populer, seperti penyelesaian font dan substitusi saat memuat HTML atau menyematkan/mensubset ke beberapa format aliran, juga diaktifkan.

## Manipulasi Font dan Masalah Kinerja

Semua mekanisme manipulasi font yang tersedia terdapat di kelas [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Kelas ini bertanggung jawab untuk mengambil font dalam sumber font yang ditentukan serta untuk proses Substitusi Font, seperti dijelaskan di bawah.

Font diurai dalam beberapa langkah:

1. Memperoleh info font, menyelesaikan semua font yang tersedia.
1. Mengurai font yang diselesaikan untuk mendapatkan glyph dan metrik yang tersedia (horizontal dan vertikal).
1. Mengurai font yang diselesaikan untuk penyematan dan subsetting.

Saat Aspose.Words menemukan font dalam dokumen untuk pertama kalinya, Aspose.Words mencoba memperoleh informasi font dasar, seperti nama lengkap font, nama keluarga, versi, gaya, dari file font yang terletak di setiap sumber font. Setelah semua font diambil, Aspose.Words menggunakan detail ini untuk menemukan data font yang diperlukan atau pengganti yang sesuai untuk font yang diminta.

Karena prosedur yang dijelaskan di atas memakan waktu, hal ini dapat berdampak negatif terhadap kinerja aplikasi pada peluncuran pertama. Namun, setiap **FontSettings** memiliki cache sendiri, yang dapat mengurangi waktu pemrosesan dokumen berikutnya. Misalnya, Anda dapat berbagi instance kelas **FontSettings** di antara berbagai dokumen, sehingga Anda dapat mempercepat pemuatan dokumen. Contoh berikut menunjukkan hal ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

Jika **FontSettings** tidak didefinisikan secara eksplisit, Aspose.Words menggunakan instance **FontSettings** default. Contoh ini juga secara otomatis dibagikan antar dokumen, dan dapat diekstraksi sebagai berikut:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Jika Anda yakin bahwa semua dokumen pemrosesan memerlukan pengaturan font yang sama, disarankan untuk menyiapkan dan menggunakan instance **FontSettings** default. Misalkan Anda perlu menggunakan sumber font yang sama untuk semua dokumen Anda. Dalam hal ini, Anda cukup mengubah instance default sebagai berikut:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

**FontSettings** khusus memiliki prioritas lebih tinggi daripada instans default.

{{% /alert %}}

## Ketersediaan dan Penggantian Font

Sebuah teks dalam suatu dokumen dapat diformat dengan berbagai font, seperti Arial, Times New Roman, Verdana, dan lain-lain. Saat Aspose.Words merender dokumen, ia mencoba memilih font yang ditentukan dalam dokumen.

Namun, ada situasi ketika font yang tepat tidak dapat ditemukan dan Aspose.Words harus menggantinya dengan font yang serupa. Aspose.Words memilih font sesuai dengan proses berikut:
1. Aspose.Words mencoba menemukan font di antara sumber font yang tersedia dengan nama font yang tepat.
1. Aspose.Words mencoba menemukan font yang diperlukan di antara font yang disematkan pada dokumen asli. Beberapa format dokumen seperti DOCX dapat berisi font yang disematkan.
1. Jika Aspose.Words tidak dapat menemukan font yang diperlukan dengan nama yang sama persis, dan properti [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/altname/) yang ditentukan untuk font ini, maka Aspose.Words akan menemukan font yang ditentukan dengan **AltName** dari kelas [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/), yang menentukan informasi font.
1. Jika Aspose.Words tidak dapat menemukan font yang ditentukan, dan **AltName** juga tidak ditentukan, maka aturan penggantian font diterapkan satu per satu, seperti dijelaskan di bawah (bila pengganti yang sesuai ditemukan, Proses Substitusi Font berhenti dan langkah selanjutnya tidak dijalankan):
   1. Pertama, Aspose.Words mencoba memproses nama font untuk mendapatkan substitusi, khususnya mencoba menghilangkan sufiks dengan pemisah "-" dan ",".<br>
      Jika aturan substitusi ini diterapkan, "Font '<OriginalFont>' tidak ditemukan. Sebagai gantinya menggunakan font '<SubstitutionFont>'. Alasan: penggantian nama font." peringatan muncul.<br>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. Kemudian Aspose.Words mencoba menerapkan pengaturan font OS, jika tersedia, dengan menggunakan utilitas **FontConfig**. Fitur Non-Windows ini harus digunakan dengan OS yang kompatibel dengan FontConfig. Hampir semua OS berbasis Unix sudah memiliki perpustakaan `FontConfig` yang dirancang untuk menyediakan konfigurasi font, penyesuaian, dan akses ke aplikasi di seluruh sistem. Jika tidak, perpustakaan ini dapat dengan mudah diinstal oleh pengguna.
      Aspose.Words mengetahui cara menanyakan data dan menafsirkan hasil FontConfig untuk tujuannya sendiri. Secara default, utilitas `FontConfig` dinonaktifkan. Anda dapat mengaktifkannya sebagai berikut:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. Langkah selanjutnya menggunakan mekanisme sederhana namun kuat yang disebut aturan substitusi **Table**. Secara default, fitur ini aktif dan tersedia untuk sistem operasi tertentu. Aspose.Words akan mengganti font dengan aturan ini jika tidak diganti dengan aturan substitusi `FontConfig`.<br>
      Aspose.Words menggunakan tabel XML, yang menentukan aturan substitusi dasar untuk OS yang berbeda. Menurut aturan substitusi Tabel, daftar nama font pengganti akan digunakan.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      Fitur utama dari aturan ini adalah kemampuan untuk memuat tabel substitusi Anda sendiri, seperti yang ditunjukkan pada contoh berikut:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      Meskipun mekanisme ini fleksibel, ada beberapa kasus di mana lebih baik menonaktifkannya, seperti yang ditunjukkan di bawah ini:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. Aturan substitusi **FontInfo** akan diterapkan jika aturan substitusi tabel tidak dapat menemukan font. Mekanisme ini diaktifkan secara default. Aspose.Words menemukan font yang paling sesuai sesuai dengan informasi font yang terdapat dalam dokumen tertentu. Informasi ini dapat diperoleh dari kelas **FontInfo** seperti gambar di bawah ini:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Pengguna tidak dapat ikut campur dalam alur kerja fitur ini, kecuali mereka memutuskan untuk menonaktifkannya jika hasilnya tidak memuaskan:<br>
      **.NET**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Jika **FontInfo** tidak tersedia untuk font yang hilang, maka proses akan berhenti.<br>
   1. Aturan substitusi **DefaultFont** akan diterapkan jika substitusi `FontInfo` juga gagal. Aturan ini juga diaktifkan secara default. Menurut aturan ini, Aspose.Words akan mencoba menggunakan font default yang ditentukan dalam properti [DefaultFontName](https://reference.aspose.com/words/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/). Jika pengguna belum memilih font defaultnya sendiri, maka "Times New Roman" akan digunakan sebagai font default. Aturan ini dapat dinonaktifkan seperti yang ditunjukkan di bawah ini:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Untuk memeriksa font default saat ini, gunakan:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Untuk menyiapkan opsi pengganti Anda sendiri, terapkan:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Jika Aspose.Words tidak dapat melakukan penggantian font, Aspose.Words akan mencoba mendapatkan font pertama yang tersedia dari sumber font yang tersedia.
1. Terakhir, jika Aspose.Words tidak dapat menemukan font apa pun di antara sumber font yang tersedia, Aspose.Words akan merender dokumen menggunakan font Fanwood gratis yang tertanam dalam rakitan Aspose.Words.<br>

Jika **FontInfo** tersedia, *aturan substitusi FontInfo* akan selalu menyelesaikan font dan mengesampingkan aturan font default. Jika Anda ingin menggunakan aturan font default, Anda harus menonaktifkan *aturan substitusi FontInfo*. Perhatikan bahwa *aturan substitusi FontConfig* akan menyelesaikan font dalam banyak kasus, dan dengan demikian mengesampingkan semua aturan lainnya.

## Bagaimana Mengenali Bahwa Font Telah Diganti

Terkadang, tidak jelas mengapa tata letak dokumen berubah, atau mengapa beberapa font tidak terlihat seperti yang diharapkan. Dalam kasus seperti ini, pesan peringatan penggantian font yang diterapkan oleh antarmuka [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) akan membantu. Mereka memiliki jenis peringatan [FontSubstitution](https://reference.aspose.com/words/net/aspose.words/warningtype/) dan format teks deskripsi standar, "Font '<OriginalFont> ' belum ditemukan. Menggunakan '<SubstitutionFont> ' font sebagai gantinya. Alasan:<Reason> ", dengan alasan sebagai berikut:

- "nama alternatif dari dokumen" – untuk diganti dengan [AltName](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/properties/altname)
- "substitusi fontconfig" – untuk substitusi berdasarkan aturan konfigurasi font
- "substitusi tabel" – untuk substitusi berdasarkan aturan tabel
- "penggantian info font" – untuk penggantian berdasarkan aturan info font
- "penggantian font default" – untuk penggantian dengan aturan font default
- "font pertama yang tersedia" – untuk substitusi dengan font pertama yang tersedia

## Pengaturan FallBack Font dari XML

Ada dua mekanisme berbeda yang digunakan di Aspose.Words - Substitusi font dan penggantian Font. Penggantian font digunakan ketika font yang ditentukan dalam dokumen tidak dapat ditemukan di antara sumber font seperti yang dijelaskan pada bagian di atas. Mekanisme fallback Font digunakan saat font diselesaikan, namun tidak mengandung karakter tertentu. Dalam hal ini, Aspose.Words mencoba menggunakan salah satu font cadangan untuk karakter tersebut.

Ada metode [BuildAutomatic](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) yang secara otomatis membuat pengaturan cadangan dengan memindai font yang tersedia. Karena metode ini mungkin menghasilkan pengaturan fallback yang tidak optimal, Anda dapat mengontrol perilaku fallback font dengan menggunakan properti kelas [FontFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/). Kelas ini menentukan pengaturan mekanisme fallback font. Anda bisa mendapatkan instance kelas **FontFallbackSettings** sebagai berikut:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

Mirip dengan *Aturan substitusi tabel*, mekanisme ini menggunakan tabel XML untuk konfigurasi. Tabel XML ini dapat dimuat dan disimpan dengan metode berikut:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

Rilis Aspose.Words mencakup dua tabel: *MsOfficeFallbackSetting.xml* dan *NotoFallbackSetting.xml*.

Tabel *MsOfficeFallbackSetting* mendefinisikan strategi penggantian untuk serangkaian karakter, yang serupa dengan strategi yang digunakan oleh Microsoft Word. Oleh karena itu, strategi ini memerlukan instalasi font Microsoft Office. *MsOfficeFallbackSetting* dapat diaktifkan menggunakan metode berikut:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabel *NotoFallbackSetting* dibuat khusus untuk digunakan dengan font Google Noto (lihat selengkapnya tentang pengaturan font Google Noto di bagian selanjutnya) dan dapat diaktifkan sebagai berikut:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

Contoh kode berikut menunjukkan cara memuat pengaturan penggantian font dari file XML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

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

## Pengaturan FallBack Font yang telah ditentukan sebelumnya untuk Font Google Noto

Aspose.Words menyediakan pengaturan penggantian font yang telah ditentukan sebelumnya untuk font Google Noto. Ini adalah font gratis yang dilisensikan di bawah SIL Open Font License, yang dapat diunduh dari Google Noto Fonts. Kelas **FontFallbackSettings** menyediakan metode [LoadNotoFallbackSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/). Ini memuat pengaturan fallback yang telah ditentukan sebelumnya, yang menggunakan font Google Noto seperti yang ditunjukkan pada contoh kode di bawah:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

Hanya font Noto gaya Sans dengan bobot reguler yang digunakan dalam pengaturan yang telah ditentukan sebelumnya.

{{% /alert %}}

## Dimana Aspose.Words Mencari Font

Aspose.Words mencoba menemukan font TrueType pada sistem file secara otomatis. Biasanya, Anda dapat mengandalkan perilaku default Aspose.Words untuk menemukan font `TrueType`, namun terkadang Anda perlu menentukan folder Anda sendiri yang berisi font TrueType. Topik [Tentukan Lokasi Font TrueType](/words/id/net/specifying-truetype-fonts-location/) menjelaskan bagaimana dan di mana Aspose.Words mencari font, serta cara menentukan lokasi font Anda sendiri.

## Perbedaan Pengolahan Format Font di Aspose.Words dan Microsoft Word

Terdapat beberapa perbedaan pengolahan format font di Aspose.Words dan Microsoft Word seperti terlihat pada tabel di bawah ini:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Font TrueType dan font OpenType dengan kerangka TrueType | Didukung. | Didukung. |
| Font OpenType dengan kerangka PostScript | Didukung untuk sebagian besar skenario. Penyematan ke format halaman tetap seperti PDF dan XPS tidak didukung. Teks diganti dengan gambar bitmap. | Didukung untuk sebagian besar skenario, termasuk penyematan ke format halaman tetap. |
| Variasi Font OpenType | Hanya instance bernama yang didukung. Variasi berkelanjutan tidak didukung. | Didukung hanya untuk instance default. Contoh yang diberi nama dan variasi berkelanjutan tidak didukung. |
| Font tipe1 | Didukung pada versi Windows sebelum 2013 dan versi MacOS. Dukungan dihentikan pada versi Windows mulai tahun 2013. | Tidak didukung. |

## Lihat juga

- [Font Google Noto](https://fonts.google.com/noto) untuk mengunduh font gratis
