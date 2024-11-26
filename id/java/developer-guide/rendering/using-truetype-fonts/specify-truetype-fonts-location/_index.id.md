---
title: Tentukan kebenaran Jenis Lokasi Font di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Tentukan kebenaran Jenis Lokasi Font
linktitle: Tentukan kebenaran Jenis Lokasi Font
description: "Tentukan berbagai Login Jenis sumber font: folder sistem, sumber pengguna, memuat font dari aliran, sistem file, atau memori menggunakan JavaSitemap"
type: docs
weight: 30
url: /id/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Topik ini menjelaskan perilaku default dari Aspose.Words ketika mencari font TrueType, termasuk perbedaan spesifik sistem operasi, dan menunjukkan cara menentukan sumber font pengguna.

Login [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) kelas digunakan untuk menentukan berbagai sumber font. Ada beberapa implementasi **FontSourceBase** kelas:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Detail implementasi untuk beberapa kelas dijelaskan di bawah ini.

## Font Beban dari Sistem {#loading-fonts-from-system}

Ada [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) kelas yang selalu digunakan secara default. Ini mewakili semua font TrueType yang diinstal pada sistem. Oleh karena itu, dimungkinkan untuk membuat daftar sumber dengan **SystemFontSource** dan sumber yang diperlukan lainnya:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Contoh tunggal dari **SystemFontSource** kelas didefinisikan secara default [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)Sitemap Pada sistem operasi yang berbeda, font mungkin terletak di tempat yang berbeda. Namun, menggunakan **FontSettings** Contoh untuk setiap dokumen bukanlah solusi optimal. Dalam sebagian besar kasus, menggunakan [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) harus cukup.

Contoh per-document diperlukan hanya jika diperlukan untuk menggunakan sumber font yang berbeda untuk dokumen yang berbeda, yang merupakan kasus yang langka. Menggunakan beberapa **FontSettings** kasus mengurangi kinerja karena mereka tidak berbagi cache.

### Sitemap Aspose.Words Cari Font TrueType di Windows

Dalam kebanyakan kasus, Windows pengguna tidak menghadapi masalah signifikan dengan font yang terjawab atau tata letak yang salah. Biasanya, Aspose.Words melalui dokumen, dan ketika menemukan tautan font, berhasil menangkap data font dari folder sistem.

Sitemap WindowsSitemap Aspose.Words pertama mengambil semua font yang tersedia dari _%windir%\Fonts folder. Pengaturan ini akan bekerja untuk Anda sebagian besar waktu. Anda hanya menentukan folder font Anda sendiri jika Anda perlu. Aspose.Words juga mencari font tambahan yang terdaftar di HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts kunci registry. Selain itu, Windows 10 memungkinkan instalasi font untuk pengguna saat ini. Font ditempatkan ke dalam %userprofile%\AppData\Local\Microsoft\Windows\Fonts folder dan juga ditentukan dalam folder HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts registry, dimana Aspose.Words akan mencari font ini. Meme it

Jika dokumen mengandung font tertanam, Aspose.Words dapat membaca data font yang relevan dari dokumen dan menggunakannya untuk membuat tata letak dokumen. Dokumen juga dapat berisi tautan ke font yang tidak di folder sistem, di mana kasus skenario berikut datang untuk bekerja:

- Pengguna dapat mengatur sumber font baru melalui **FontSettings** Login
- Login Aspose.Words dapat mencoba untuk mengganti font yang terjawab dengan yang sama

### Font di Non-Windows Login

Aspose.Words akan mencari font di folder font sistem. Daftar folder ini dapat dilihat oleh [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) Login Jika tidak ada font yang didukung ditemukan, Aspose.Words akan menggunakan bawaan font Fanwood.ttf.

Sejak metrik font Windows dan non-Windows OS berbeda, Aspose.Words apakah semuanya mungkin untuk menemukan font yang sama dan membangun tata letak yang mirip dengan aslinya. Namun, ini tidak selalu mungkin. Dalam kasus ini, **FontSettings** kelas harus digunakan untuk menambahkan font kustom atau aturan substitusi.

#### Sitemap Aspose.Words Cari Font TrueType di Linux

Login Linux distribusi dapat menyimpan font di folder yang berbeda. Aspose.Words mencari font di beberapa lokasi. Login Aspose.Words mencari font di semua lokasi berikut: `/usr/share/font` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts` Perilaku default ini akan bekerja untuk sebagian besar Linux distribusi, tetapi tidak dijamin untuk bekerja sepanjang waktu, dalam hal mana Anda mungkin perlu menentukan lokasi true jenis font secara eksplisit. Untuk melakukan ini, Anda perlu tahu di mana font TrueType diinstal pada Anda Linux Login

#### Sitemap Aspose.Words Cari Font TrueType di Mac OS X

Aspose.Words mencari font di folder /Library/Fonts, yang merupakan lokasi standar untuk font TrueType di Mac OS X. Meskipun pengaturan ini akan bekerja untuk Anda sebagian besar waktu, Anda mungkin perlu menentukan folder font Anda sendiri dalam kasus ketika Anda perlu.

#### Font TrueType di Android

Sitemap Android, alur kerja font ditekapkan dalam kelas Typeface.
Ada lima jenis permukaan, masing-masing jenis wajah mewakili sekelompok keluarga font serupa:

- Login
- Sitemap
- Login
- SANS_SERIF
- SERIF

Misalnya, sesuai dengan AndroidSitemap [WordPress.org](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config file, "times" milik "serif" keluarga sehingga NotoSerif-Regular.ttf akan digunakan ketika "times" diminta:

**WordPress.org**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Untuk mencari font serupa, strategi yang dijelaskan sebelumnya digunakan

Selain mereka, Aspose.Words memiliki daftar pengganti sendiri untuk Android Login

Katakanlah dokumen berisi font PMingLiU-ExtB, pertama-tama, Aspose.Words mencari font yang diperlukan dalam sumber sistem.

Daftar default Android folder font adalah:

- /sistem/font
- /sistem/font
- /data/font

Login Aspose.Words melihat melalui sumber yang ditentukan pengguna yang ditetapkan dengan metode:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Dalam kasus penggantian eksplisit telah ditentukan, Aspose.Words mengganti font yang hilang dengan saran pengguna:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Jika tidak ada aturan yang bekerja, Aspose.Words periksa tabel penggantian internal. Jika tabel berisi informasi tentang fit yang baik maka font akan diganti. Dalam kasus kami Aspose.Words Login `Typeface.SERIF`Sitemap Tapi jika tabel tidak tahu apa-apa tentang font yang diminta kemudian Aspose.Words mengambil font berdasarkan aturan MS Word khusus atau jarak terdekat di ruang Panose.

#### Font TrueType di .NET Core Login Xamarin

Sitemap .NET Core Login Xamarin aturan yang sama berlaku untuk Aspose.Words Sitemap Java Sitemap Secara default, semua font sistem dari platform di mana aplikasi berjalan tersedia.
Daftar folder di mana pencarian akan dilakukan dapat ditemukan dengan memanggil metode:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Font Beban dari Folder {#loading-fonts-from-folder}

Jika dokumen diproses berisi tautan ke font yang tidak ada di sistem, atau Anda tidak ingin menambahkannya ke folder sistem, atau Anda tidak memiliki izin, maka solusi terbaik adalah menambahkan folder dengan font Anda sendiri menggunakan font `SetFontsSources` Login Ini akan memungkinkan mengganti sumber sistem dengan sumber pengguna. Aspose.Words tidak akan lagi mencari font di registry atau Meme it Windows\Font folder dan bukan hanya memindai font dalam folder yang ditentukan. Login `GetFontSources` metode akan mengembalikan nilai yang sesuai.

### Tentukan Satu atau Beberapa Folder Font

Login [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) dan metode SetFontsFolders adalah shortcuts ke **SetFontSources** metode dengan satu atau beberapa [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) Sitemap Metode ini digunakan untuk menunjukkan di mana Aspose.Words harus mencari font. Jika folder tidak ada atau tidak dapat diakses, Aspose.Words hanya mengabaikan folder ini. Jika semua folder, termasuk sumber untuk substitusi font, diabaikan, Aspose.Words akan menggunakan font Fanwood sebagai default.

Contoh berikut menunjukkan bagaimana mengatur folder atau sumber, yang Aspose.Words kemudian akan digunakan untuk mencari font TrueType selama rendering atau embedding font:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{% /alert %}}

Parameter Boolean tambahan mengontrol apakah font dipindai berulang melalui semua folder, sehingga memindai semua folder anak dari folder tertentu. Contoh berikut menunjukkan cara mengatur Aspose.Words untuk melihat beberapa folder untuk TrueType fonts ketika rendering atau embedding font:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Anda dapat mengunduh file template dari contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)Sitemap

{{% alert color="primary" %}}

Perhatikan prioritas. Jika ada font dengan nama keluarga dan gaya yang sama dalam berbagai sumber font, maka Aspose.Words akan memilih font dari sumber dengan prioritas yang lebih tinggi. Lihat deskripsi bidang "Prioritas" di bawah ini.

{{% /alert %}}

Jika Anda tidak ingin menggunakan font sistem sama sekali, Aspose.Words memungkinkan Anda untuk mengabaikan mereka dan menggunakan font Anda sendiri hanya:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Properti Prioritas

Login [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) properti digunakan ketika ada font dengan nama keluarga dan gaya yang sama dalam berbagai sumber font. Dalam kasus ini Aspose.Words pilih font dari sumber dengan nilai prioritas yang lebih tinggi. Misalnya, ada versi lama font di folder sistem dan pelanggan menambahkan versi baru dari font yang sama dalam folder kustom.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Font Beban dari Stream {#loading-fonts-from-stream}

Aspose.Words Sitemap [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) kelas, yang memungkinkan memuat font dari aliran. Untuk menggunakan sumber font aliran, pengguna perlu membuat kelas yang berasal dari **StreamFontSource** dan memberikan implementasi [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) Login Login **OpenFontDataStream** metode bisa disebut beberapa kali. Untuk pertama kalinya, itu akan disebut ketika Meme it Aspose.Words memindai sumber font yang disediakan untuk mendapatkan daftar font yang tersedia. Kemudian dapat disebut jika font digunakan dalam dokumen untuk membuat data font dan untuk mengatur data font ke beberapa format output. **StreamFontSource** mungkin berguna karena memungkinkan pemuatan data font hanya ketika diperlukan, dan tidak menyimpannya dalam memori untuk `FontSettings` Sitemap

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** adalah alternatif untuk [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) karena selalu memungkinkan untuk memuat aliran ke memori dan melewatinya **MemoryFontSource**Sitemap Perbedaannya adalah **MemoryFontSource** disimpan dalam memori sepanjang waktu, dan **StreamFontSource** dimuat pada permintaan dan pembuangan segera. Tetapi mungkin dimuat beberapa kali, seperti yang dijelaskan di atas. Dalam beberapa kasus **MemoryFontSource** lebih disukai, dan pada orang lain, **StreamFontSource**Sitemap

## Simpan dan Muat Cache Pencarian Font

Ketika mencari font untuk pertama kalinya, Aspose.Words iterates atas sumber font yang ditentukan oleh pengguna dan membentuk cache pencarian font berdasarkan data dari sumber ini. Dengan demikian, cache akan mengumpulkan informasi tentang font yang tersedia: font keluarga, gaya, nama font penuh, dan lain-lain. Pada panggilan berikutnya, Aspose.Words mencari informasi tentang font yang diinginkan oleh namanya dalam cache pencarian font, setelah itu parses file yang ditentukan untuk menggunakan font.

Prosedur untuk membuat semua file font yang tersedia untuk menginisialisasi cache cukup memakan waktu. Aspose.Words memungkinkan Anda untuk menyimpan dan memuat cache menggunakan **FontSettings.SaveSearchCache** metode untuk memecahkan masalah kinerja. Itu, pengguna dapat memuat cache yang sebelumnya disimpan dari file dan melewatkan langkah membuat semua file font yang tersedia.

{{% alert color="primary" %}}

Gunakan yang sama **SaveSearchCache** metode untuk memperbarui cache.

{{% /alert %}}

{{% alert color="primary" %}}

Cache juga cocok untuk skenario lain ketika font dimuat melalui jaringan. Atau untuk skenario ketika tidak ada cara untuk menyimpan `FontSettings` Contoh dengan cache yang dimuat.

{{% /alert %}}


## Dapatkan Daftar Font yang Tersedia {#get-a-list-of-available-fonts}

Jika Anda ingin mendapatkan daftar font yang tersedia, yang, misalnya, dapat digunakan untuk membuat dokumen PDF, Anda dapat menggunakan [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) metode, seperti yang ditunjukkan dalam contoh kode berikut. Login [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) menentukan informasi tentang font fisik yang tersedia untuk Aspose.Words mesin font:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
