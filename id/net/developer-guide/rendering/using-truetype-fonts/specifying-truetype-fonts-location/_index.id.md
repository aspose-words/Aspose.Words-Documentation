---
title: Tentukan Lokasi Font TrueType di C#
second_title: Aspose.Words untuk .NET
articleTitle: Tentukan Lokasi Font TrueType
linktitle: Tentukan Lokasi Font TrueType
description: "Tentukan berbagai sumber font TrueType: folder sistem, sumber pengguna, memuat font dari aliran, sistem file, atau memori menggunakan C#."
type: docs
weight: 30
url: /id/net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Topik ini menjelaskan perilaku default Aspose.Words ketika mencari font TrueType, termasuk perbedaan spesifik sistem operasi, dan menunjukkan cara menentukan sumber font pengguna.

Kelas [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) digunakan untuk menentukan berbagai sumber font. Ada beberapa implementasi kelas **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Detail implementasi untuk beberapa kelas dijelaskan di bawah.

## Muat Font dari System {#loading-fonts-from-system}

Ada kelas [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) khusus yang selalu digunakan secara default. Ini mewakili semua font TrueType yang diinstal pada sistem. Oleh karena itu, dimungkinkan untuk membuat daftar sumber dengan **SystemFontSource** dan sumber lain yang diperlukan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Satu instance kelas **SystemFontSource** ditentukan secara default di [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Pada sistem operasi yang berbeda, font mungkin terletak di tempat yang berbeda. Namun, menggunakan contoh **FontSettings** untuk setiap dokumen bukanlah solusi optimal. Dalam sebagian besar kasus, menggunakan [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) sudah cukup.

Instans per dokumen diperlukan hanya jika diperlukan untuk menggunakan sumber font yang berbeda untuk dokumen yang berbeda, yang merupakan kasus yang jarang terjadi. Menggunakan beberapa contoh **FontSettings** menurunkan kinerja karena mereka tidak berbagi cache.

### Dimana Aspose.Words Mencari Font TrueType di Windows

Dalam kebanyakan kasus, pengguna Windows tidak menghadapi masalah berarti dengan font yang hilang atau tata letak yang salah. Biasanya, Aspose.Words menelusuri dokumen, dan ketika menemukan tautan font, berhasil mengambil data font dari folder sistem.

Di Windows, Aspose.Words pertama-tama mengambil semua font yang tersedia dari folder _%windir%\Fonts. Pengaturan ini akan berfungsi untuk Anda hampir sepanjang waktu. Anda hanya menentukan folder font Anda sendiri jika perlu. Aspose.Words untuk .NET juga mencari font tambahan yang terdaftar di kunci registri HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. Selain itu, Windows 10 memungkinkan instalasi font untuk pengguna saat ini. Font ditempatkan ke dalam folder %userprofile%\AppData\Local\Microsoft\Windows\Fonts dan juga ditentukan dalam registri HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, tempat Aspose.Words akan mencari font ini.

Jika dokumen berisi font yang disematkan, Aspose.Words dapat membaca data font yang relevan dari dokumen tersebut dan menggunakannya untuk membuat tata letak dokumen. Dokumen mungkin juga berisi tautan ke font yang tidak ada dalam folder sistem, sehingga skenario berikut akan berfungsi:

- Pengguna dapat mengatur sumber font baru melalui kelas **FontSettings**
- Aspose.Words dapat mencoba mengganti font yang hilang dengan font serupa

{{% alert color="primary" %}}

Render Aspose.Words di server biasanya tidak akan berfungsi dengan aplikasi ASP.NET yang dikonfigurasi untuk berjalan di bawah tingkat Kepercayaan Sedang, karena melarang akses ke registri dan membatasi akses ke sistem file.

{{% /alert %}}

### Font pada Sistem Non-Windows

Aspose.Words akan mencari font di folder font sistem. Daftar folder ini dapat dilihat dengan metode [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Jika tidak ditemukan font yang didukung, Aspose.Words akan menggunakan font default bawaan Fanwood.ttf.

Karena metrik font OS Windows dan non-Windows berbeda, Aspose.Words melakukan segala kemungkinan untuk menemukan font serupa dan membuat tata letak yang mirip dengan aslinya. Namun, ini tidak selalu mungkin. Dalam kasus ini, kelas **FontSettings** harus digunakan untuk menambahkan font khusus atau aturan substitusi.

#### Dimana Aspose.Words Mencari Font TrueType di Linux

Distribusi Linux yang berbeda mungkin menyimpan font di folder yang berbeda. Aspose.Words mencari font di beberapa lokasi. Secara default, Aspose.Words mencari font di semua lokasi berikut: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsPerilaku default ini akan berfungsi pada sebagian besar distribusi Linux, namun tidak dijamin berfungsi sepanjang waktu, dalam hal ini Anda mungkin perlu menentukan lokasi font tipe true secara eksplisit. Untuk melakukan ini, Anda perlu mengetahui di mana font TrueType diinstal pada distribusi Linux Anda.

#### Tempat Aspose.Words Mencari Font TrueType di Mac OS X

Aspose.Words mencari font di folder /Library/Fonts, yang merupakan lokasi standar untuk font TrueType di Mac OS X. Meskipun pengaturan ini sering kali berfungsi untuk Anda, Anda mungkin perlu menentukan folder font Anda sendiri jika kamu butuh.

## Muat Font dari Folder {#loading-fonts-from-folder}

Jika dokumen yang sedang diproses berisi tautan ke font yang tidak ada di sistem, atau Anda tidak ingin menambahkannya ke folder sistem, atau Anda tidak memiliki izin, maka solusi terbaik adalah menambahkan folder dengan font Anda sendiri menggunakan metode [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/). Ini akan memungkinkan untuk mengganti sumber sistem dengan sumber pengguna. Aspose.Words tidak akan lagi mencari font di registri atau folder Windows\Font dan hanya memindai font di dalam folder yang ditentukan. Metode [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) akan mengembalikan nilai yang sesuai.

### Tentukan Satu atau Beberapa Folder Font

Metode [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) dan [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) merupakan jalan pintas ke metode **SetFontSources** dengan satu atau beberapa instance [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/). Metode ini digunakan untuk menunjukkan di mana Aspose.Words harus mencari font. Jika folder tidak ada atau tidak dapat diakses, Aspose.Words mengabaikan saja folder ini. Jika semua folder, termasuk sumber penggantian font, diabaikan, Aspose.Words akan menggunakan font Fanwood sebagai default.

Contoh berikut menunjukkan cara mengatur folder atau sumber, yang selanjutnya akan digunakan Aspose.Words untuk mencari font TrueType selama rendering atau penyematan font:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Parameter Boolean tambahan mengontrol apakah font dipindai secara rekursif melalui semua folder, sehingga memindai semua folder anak dari folder tertentu. Contoh berikut menunjukkan cara mengatur Aspose.Words agar mencari font TrueType di beberapa folder saat merender atau menyematkan font:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Perhatikan prioritasnya. Jika terdapat font dengan nama keluarga dan gaya yang sama di sumber font berbeda, maka Aspose.Words akan memilih font dari sumber dengan prioritas lebih tinggi. Lihat deskripsi bidang "Prioritas" di bawah.

Jika Anda tidak ingin menggunakan font sistem sama sekali, Aspose.Words mengizinkan Anda mengabaikannya dan hanya menggunakan font Anda sendiri:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Properti Prioritas

Properti [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) digunakan ketika ada font dengan nama keluarga dan gaya yang sama di sumber font berbeda. Dalam hal ini Aspose.Words memilih font dari sumber dengan nilai prioritas lebih tinggi. Misalnya, ada font versi lama di folder sistem dan pelanggan menambahkan versi baru font yang sama di folder khusus.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Muat Font dari Stream {#loading-fonts-from-stream}

Aspose.Words menyediakan kelas [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/), yang memungkinkan memuat font dari aliran. Untuk menggunakan sumber font aliran, pengguna perlu membuat kelas turunan dari **StreamFontSource** dan menyediakan implementasi metode [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/). Metode **OpenFontDataStream** bisa dipanggil beberapa kali. Untuk pertama kalinya, ini akan dipanggil ketika Aspose.Words memindai sumber font yang disediakan untuk mendapatkan daftar font yang tersedia. Nantinya mungkin dipanggil jika font digunakan dalam dokumen untuk mengurai data font dan menyematkan data font ke beberapa format output. **StreamFontSource** mungkin berguna karena memungkinkan memuat data font hanya jika diperlukan, dan tidak menyimpannya dalam memori selama masa pakai [Pengaturan Font](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** adalah alternatif untuk [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) karena selalu memungkinkan untuk memuat aliran ke memori dan meneruskannya ke **MemoryFontSource**. Perbedaannya adalah **MemoryFontSource** disimpan dalam memori sepanjang waktu, dan **StreamFontSource** dimuat sesuai permintaan dan langsung dibuang. Namun mungkin dimuat beberapa kali, seperti dijelaskan di atas. Dalam beberapa kasus, **MemoryFontSource** lebih disukai, dan dalam kasus lain, **StreamFontSource**.

## Simpan dan Muat Cache Pencarian Font

Saat mencari font untuk pertama kalinya, Aspose.Words mengulangi sumber font yang ditentukan oleh pengguna dan membentuk cache pencarian font berdasarkan data dari sumber ini. Dengan demikian, cache akan mengumpulkan informasi tentang font yang tersedia: jenis font, gaya, nama font lengkap, dan lain-lain. Pada panggilan berikutnya, Aspose.Words mencari informasi tentang font yang diinginkan berdasarkan namanya di cache pencarian font, setelah itu mem-parsing file yang ditentukan untuk menggunakan font tersebut.

Prosedur parsing semua file font yang tersedia untuk menginisialisasi cache cukup memakan waktu. Aspose.Words memungkinkan Anda menyimpan dan memuat cache menggunakan metode [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) untuk mengatasi masalah kinerja. Artinya, pengguna dapat memuat cache yang disimpan sebelumnya dari sebuah file dan melewati langkah penguraian semua file font yang tersedia.

{{% alert color="primary" %}}

Gunakan metode **SaveSearchCache** yang sama untuk memperbarui cache.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyiapkan sumber font dan membuat cache pencarian font terlebih dahulu:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

Contoh kode berikut menunjukkan cara mengatur sumber font dan memuat cache pencarian sebelum memproses dokumen:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Cache pencarian font sangat bagus untuk integrasi Aspose.Words dalam AWS Lambda karena sejumlah keterbatasan. Misalnya, pada ukuran wadah utama dan, sebagai hasilnya, pada jumlah font.

Cache juga cocok untuk skenario lain ketika font dimuat melalui jaringan. Atau untuk skenario ketika tidak ada cara untuk menyimpan instance `FontSettings` dengan cache yang dimuat.

{{% /alert %}}

## Dapatkan Daftar Font {#get-a-list-of-available-fonts} yang Tersedia

Jika Anda ingin mendapatkan daftar font yang tersedia, yang misalnya dapat digunakan untuk merender dokumen PDF, Anda dapat menggunakan metode [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), seperti yang ditunjukkan pada contoh kode berikut. Kelas [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) menentukan informasi tentang font fisik yang tersedia untuk mesin font Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
