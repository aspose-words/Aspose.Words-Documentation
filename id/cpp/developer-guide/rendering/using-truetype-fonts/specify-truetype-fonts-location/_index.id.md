---
title: Tentukan Lokasi Font TrueTypedalam C++
second_title: Aspose.Words untuk C++
articleTitle: Tentukan Lokasi Font TrueType
linktitle: Tentukan Lokasi Font TrueType
description: "Tentukan berbagai sumber font TrueType: folder sistem, sumber pengguna, memuat font dari aliran, sistem file, atau memori."
type: docs
weight: 30
url: /id/cpp/specify-truetype-fonts-location/
---

Topik ini menjelaskan perilaku default Aspose.Words saat mencari font TrueType, termasuk perbedaan khusus sistem operasi, dan mendemonstrasikan cara menentukan sumber font pengguna.

Kelas [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) digunakan untuk menentukan berbagai sumber font. Ada beberapa implementasi dari kelas **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Detail implementasi untuk beberapa kelas dijelaskan di bawah ini.

## Muat Font dari Sistem {#loading-fonts-from-system}

Ada kelas [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) khusus yang selalu digunakan secara default. Ini mewakili semua TrueType font yang diinstal pada sistem. Oleh karena itu, dimungkinkan untuk membuat daftar sumber dengan **SystemFontSource** dan sumber lain yang diperlukan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Satu instance dari kelas **SystemFontSource** didefinisikan secara default di [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). Pada sistem operasi yang berbeda, font mungkin ditempatkan di tempat yang berbeda. Namun, menggunakan instance **FontSettings** untuk setiap dokumen bukanlah solusi yang optimal. Dalam sebagian besar kasus, menggunakan [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) sudah cukup.

Instans per dokumen hanya diperlukan jika diperlukan untuk menggunakan sumber font yang berbeda untuk dokumen yang berbeda, yang merupakan kasus yang jarang terjadi. Menggunakan beberapa instance **FontSettings** menurunkan kinerja karena tidak berbagi cache.

### Dimana Aspose.Words Mencari Font TrueTypepada Windows

Dalam kebanyakan kasus, pengguna Windows tidak menghadapi masalah signifikan dengan font yang terlewat atau tata letak yang salah. Biasanya, Aspose.Words melewati dokumen, dan ketika menemukan tautan font, ia berhasil mengambil data font dari folder sistem.

Pada Windows, Aspose.Words pertama-tama mengambil semua font yang tersedia dari folder _%windir%\Fonts. Pengaturan ini akan bekerja untuk Anda hampir sepanjang waktu. Anda hanya menentukan folder font Anda sendiri jika perlu. Aspose.Words juga mencari font tambahan yang terdaftar di kunci registri HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Selain itu, Windows 10 memungkinkan penginstalan font untuk pengguna saat ini. Font ditempatkan ke dalam folder %userprofile%\AppData\Local\Microsoft\Windows\Fonts dan juga ditentukan dalam registri HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, di mana Aspose.Words akan mencari font ini.

Jika dokumen berisi font yang disematkan, Aspose.Words dapat membaca data font yang relevan dari dokumen dan menggunakannya untuk membuat tata letak dokumen. Dokumen juga dapat berisi tautan ke font yang tidak ada di folder sistem, dalam hal ini skenario berikut akan berfungsi:

- Pengguna dapat mengatur sumber font baru melalui kelas **FontSettings**
- Aspose.Words dapat mencoba mengganti font yang terlewat dengan font serupa

{{% alert color="primary" %}}

Rendering Aspose.Words di server biasanya tidak akan berfungsi dengan aplikasi ASP.NET yang dikonfigurasi untuk berjalan di bawah tingkat Kepercayaan Sedang, karena melarang akses ke registri dan membatasi akses ke sistem file.

{{% /alert %}}

### Font pada Sistem Non - Windows

Aspose.Words akan mencari font di folder font sistem. Daftar folder ini dapat dilihat dengan metode [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Jika tidak ditemukan font yang didukung, Aspose.Words akan menggunakan Fanwood font default bawaan.ttf.

Karena metrik font Windows dan non - Windows OS berbeda, Aspose.Words melakukan segala kemungkinan untuk menemukan font yang serupa dan membuat tata letak yang mirip dengan aslinya. Namun, ini tidak selalu memungkinkan. Dalam kasus ini, kelas **FontSettings** harus digunakan untuk menambahkan font khusus atau aturan substitusi.

#### Dimana Aspose.Words Mencari Font TrueTypepada Linux

Distribusi Linux yang berbeda dapat menyimpan font di folder yang berbeda. Aspose.Words mencari font di beberapa lokasi. Secara default, Aspose.Words mencari font di semua lokasi berikut: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. Perilaku default ini akan berfungsi untuk sebagian besar distribusi Linux, tetapi tidak dijamin berfungsi sepanjang waktu, dalam hal ini Anda mungkin perlu menentukan lokasi font tipe sebenarnya secara eksplisit. Untuk melakukan ini, Anda perlu mengetahui di mana font TrueType diinstal pada distribusi Linux Anda.

#### Dimana Aspose.Words Mencari Font TrueTypepada Mac OS X

Aspose.Words mencari font di folder `/Library/Fonts`, yang merupakan lokasi standar untuk font TrueType di Mac OS X. Meskipun pengaturan ini akan berfungsi untuk Anda hampir sepanjang waktu, Anda mungkin perlu menentukan folder font Anda sendiri jika diperlukan.

#### TrueType Fonta pada Android

Pada Android, alur kerja font dikemas dalam kelas Typeface.
Ada lima jenis tipografi, setiap jenis huruf mewakili sekelompok keluarga font yang serupa:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

Misalnya, menurut Android [fonta.xml sitemap](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) file konfigurasi, "times" milik keluarga "serif" jadi NotoSerif - Reguler.ttf akan digunakan saat" waktu " diminta:

**Fonta.xml sitemap**

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

Untuk mencari font yang serupa, strategi yang dijelaskan sebelumnya digunakan.

Selain itu, Aspose.Words memiliki daftar penggantinya sendiri untuk platform Android.

Katakanlah dokumen tersebut berisi font U-ExtB PMingLi, pertama-tama, Aspose.Words mencari font yang diperlukan di dalam sumber sistem.

Daftar default folder font Android adalah:

- /sistem / font
- / sistem / fonta
- /data / font

Aspose.Words melihat melalui sumber yang ditentukan pengguna yang disetel dengan metode:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

Jika penggantian eksplisit telah ditentukan, Aspose.Words mengganti font yang hilang dengan saran pengguna:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Jika tidak ada aturan yang berhasil, Aspose.Words periksa tabel penggantian internal. Jika tabel berisi informasi tentang kecocokan yang baik maka font akan diganti. Dalam kasus kami Aspose.Words akan memilih `Typeface.SERIF`. Tetapi jika tabel tidak mengetahui apa pun tentang font yang diminta, maka Aspose.Words mengambil font berdasarkan aturan Kata MS khusus atau jarak terdekat dalam ruang Panose.

#### TrueType Fonta pada .NET Core dan Xamarin

Untuk .NET Core dan Xamarin aturan yang sama berlaku untuk Aspose.Words untuk Java versi. Secara default, semua font sistem dari platform tempat aplikasi dijalankan tersedia.
Daftar folder tempat pencarian akan dilakukan dapat ditemukan dengan memanggil metode:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Muat Font dari Folder {#loading-fonts-from-folder}

Jika dokumen yang sedang diproses berisi tautan ke font yang tidak ada di sistem, atau Anda tidak ingin menambahkannya ke folder sistem, atau Anda tidak memiliki izin, maka solusi terbaik adalah menambahkan folder dengan font Anda sendiri menggunakan metode [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Ini akan memungkinkan penggantian sumber sistem dengan sumber pengguna. Aspose.Words tidak akan lagi mencari font di registri atau folder Windows\Font dan sebagai gantinya hanya memindai font di dalam folder yang ditentukan. Metode [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) akan mengembalikan nilai yang sesuai.

### Tentukan Satu atau Beberapa Folder Font

Metode [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) dan [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) adalah pintasan ke metode **SetFontSources** dengan satu atau beberapa instance [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Metode ini digunakan untuk menunjukkan di mana Aspose.Words harus mencari font. Jika folder tidak ada atau tidak dapat diakses, Aspose.Words abaikan saja folder ini. Jika semua folder, termasuk sumber untuk penggantian font, diabaikan, Aspose.Words akan menggunakan font Fanwood sebagai default.

Contoh berikut menunjukkan cara mengatur folder atau sumber, yang selanjutnya akan digunakan Aspose.Words untuk mencari font TrueType selama rendering atau penyematan font:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Parameter Boolean tambahan mengontrol apakah font dipindai secara rekursif melalui semua folder, sehingga memindai semua folder turunan dari folder tertentu. Contoh berikut mendemonstrasikan cara menyetel Aspose.Words untuk mencari font TrueType di beberapa folder saat merender atau menyematkan font:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file templat contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Perhatikan prioritasnya. Jika ada font dengan nama keluarga dan gaya yang sama di sumber font yang berbeda, maka Aspose.Words akan memilih font dari sumber dengan prioritas lebih tinggi. Lihat deskripsi bidang "Prioritas" di bawah ini.

Jika Anda tidak ingin menggunakan font sistem sama sekali, Aspose.Words memungkinkan Anda untuk mengabaikannya dan hanya menggunakan font Anda sendiri:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Properti Prioritas

Properti [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) digunakan jika ada font dengan nama keluarga dan gaya yang sama di sumber font yang berbeda. Dalam hal ini Aspose.Words memilih font dari sumber dengan nilai prioritas yang lebih tinggi. Misalnya, ada font versi lama di folder sistem dan pelanggan menambahkan versi baru dari font yang sama di folder khusus.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Muat Font dari Aliran {#loading-fonts-from-stream}

Aspose.Words menyediakan kelas [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), yang memungkinkan pemuatan font dari aliran. Untuk menggunakan sumber font aliran, pengguna perlu membuat kelas turunan dari **StreamFontSource** dan menyediakan implementasi metode [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). Metode **OpenFontDataStream** dapat dipanggil beberapa kali. Untuk pertama kalinya, ini akan dipanggil saat Aspose.Words memindai sumber font yang disediakan untuk mendapatkan daftar font yang tersedia. Nanti dapat dipanggil jika font digunakan dalam dokumen untuk mengurai data font dan menyematkan data font ke beberapa format keluaran. **StreamFontSource** mungkin berguna karena memungkinkan pemuatan data font hanya jika diperlukan, dan tidak menyimpannya dalam memori selama masa pakai [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Simpan dan Muat Cache Pencarian Font

Saat mencari font untuk pertama kalinya, Aspose.Words beralih ke sumber font yang ditentukan oleh pengguna dan membentuk cache pencarian font berdasarkan data dari sumber tersebut. Dengan demikian, cache akan mengumpulkan informasi tentang font yang tersedia: keluarga font, gaya, nama font lengkap, dan lainnya. Pada panggilan berikutnya, Aspose.Words mencari informasi tentang font yang diinginkan berdasarkan namanya di cache pencarian font, setelah itu mem-parsing file yang ditentukan untuk menggunakan font tersebut.

Prosedur untuk mengurai semua file font yang tersedia untuk menginisialisasi cache cukup memakan waktu. Aspose.Words memungkinkan Anda menyimpan dan memuat cache menggunakan metode [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) untuk mengatasi masalah kinerja. Artinya, pengguna dapat memuat cache yang disimpan sebelumnya dari sebuah file dan melewati langkah penguraian semua file font yang tersedia.

{{% alert color="primary" %}}

Gunakan metode **SaveSearchCache** yang sama untuk memperbarui cache.

{{% /alert %}}

{{% alert color="primary" %}}

Cache juga cocok untuk skenario lain saat font dimuat melalui jaringan. Atau untuk skenario ketika tidak ada cara untuk menyimpan instance `FontSettings` dengan cache yang dimuat.

{{% /alert %}}

## Dapatkan Daftar Font yang Tersedia {#get-a-list-of-available-fonts}

Jika Anda ingin mendapatkan daftar font yang tersedia, yang, misalnya, dapat digunakan untuk merender dokumen PDF, Anda dapat menggunakan metode [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), seperti yang ditunjukkan pada contoh kode berikut. Kelas [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) menetapkan informasi tentang font fisik yang tersedia untuk mesin font Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
