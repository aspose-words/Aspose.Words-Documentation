---
title: Tentukan Lokasi Font TrueType
second_title: Aspose.Words untuk Python via .NET
articleTitle: Tentukan Lokasi Font TrueType
linktitle: Tentukan Lokasi Font TrueType
description: "Tentukan berbagai sumber font TrueType: folder sistem, sumber pengguna, memuat font dari aliran, sistem file, atau memori menggunakan Python."
type: docs
weight: 30
url: /id/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Topik ini menjelaskan perilaku default Aspose.Words ketika mencari font TrueType, termasuk perbedaan spesifik sistem operasi, dan menunjukkan cara menentukan sumber font pengguna.

Kelas [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) digunakan untuk menentukan berbagai sumber font. Ada beberapa implementasi kelas [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Detail implementasi untuk beberapa kelas dijelaskan di bawah.

## Memuat Font dari System

Ada kelas [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) khusus yang selalu digunakan secara default. Ini mewakili semua font TrueType yang diinstal pada sistem. Oleh karena itu, dimungkinkan untuk membuat daftar sumber dengan [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) dan sumber lain yang diperlukan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Satu instance kelas [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) ditentukan secara default di [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Pada sistem operasi yang berbeda, font mungkin terletak di tempat yang berbeda. Namun, menggunakan instance [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) untuk setiap dokumen bukanlah solusi optimal. Dalam sebagian besar kasus, menggunakan [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) saja sudah cukup.

Instans per dokumen diperlukan hanya jika diperlukan untuk menggunakan sumber font yang berbeda untuk dokumen yang berbeda, yang merupakan kasus yang jarang terjadi. Menggunakan beberapa contoh [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) menurunkan kinerja karena mereka tidak berbagi cache.

### Dimana Aspose.Words Mencari Font TrueType di Windows

Dalam kebanyakan kasus, pengguna Windows tidak menghadapi masalah berarti dengan font yang hilang atau tata letak yang salah. Biasanya, Aspose.Words menelusuri dokumen, dan ketika menemukan tautan font, berhasil mengambil data font dari folder sistem.

Di Windows, Aspose.Words pertama-tama mengambil semua font yang tersedia dari folder _%windir%\Fonts. Pengaturan ini akan berfungsi untuk Anda hampir sepanjang waktu. Anda hanya menentukan folder font Anda sendiri jika perlu. Aspose.Words untuk .NET juga mencari font tambahan yang terdaftar di kunci registri *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. Selain itu, Windows 10 memungkinkan instalasi font untuk pengguna saat ini. Font ditempatkan ke dalam folder *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* dan juga ditentukan dalam registri *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, tempat Aspose.Words akan mencari font ini.

Jika dokumen berisi font yang disematkan, Aspose.Words dapat membaca data font yang relevan dari dokumen tersebut dan menggunakannya untuk membuat tata letak dokumen. Dokumen mungkin juga berisi tautan ke font yang tidak ada dalam folder sistem, sehingga skenario berikut akan berfungsi:

- Pengguna dapat mengatur sumber font baru melalui kelas [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words dapat mencoba mengganti font yang hilang dengan font serupa


### Font pada Sistem Non-Windows

Aspose.Words akan mencari font di folder font sistem. Daftar folder ini dapat dilihat dengan metode [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Jika tidak ditemukan font yang didukung, Aspose.Words akan menggunakan font default bawaan Fanwood.ttf.

Karena metrik font OS Windows dan non-Windows berbeda, Aspose.Words melakukan segala kemungkinan untuk menemukan font serupa dan membuat tata letak yang mirip dengan aslinya. Namun, ini tidak selalu mungkin. Dalam kasus ini, kelas [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) harus digunakan untuk menambahkan font khusus atau aturan substitusi.

#### Dimana Aspose.Words Mencari Font TrueType di Linux

Distribusi Linux yang berbeda mungkin menyimpan font di folder yang berbeda. Aspose.Words mencari font di beberapa lokasi. Secara default, Aspose.Words mencari font di semua lokasi berikut: */usr/share/fonts* */usr/local/share/fonts* */usr/X11R6/lib/X11/fonts*. Perilaku default ini akan berfungsi pada sebagian besar distribusi Linux, namun tidak dijamin akan berfungsi sepanjang waktu, dalam hal ini Anda mungkin perlu menentukan lokasi font tipe true secara eksplisit. Untuk melakukan ini, Anda perlu mengetahui di mana font TrueType diinstal pada distribusi Linux Anda.

#### Tempat Aspose.Words Mencari Font TrueType di Mac OS X

Aspose.Words mencari font di folder */Library/Fonts*, yang merupakan lokasi standar untuk font TrueType di Mac OS X. Meskipun pengaturan ini sering kali berfungsi untuk Anda, Anda mungkin perlu menentukan folder font Anda sendiri di folder kasus ketika Anda perlu.

## Memuat Font dari Folder

Jika dokumen yang sedang diproses berisi tautan ke font yang tidak ada di sistem, atau Anda tidak ingin menambahkannya ke folder sistem, atau Anda tidak memiliki izin, maka solusi terbaik adalah menambahkan folder dengan font Anda sendiri menggunakan metode [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Ini akan memungkinkan untuk mengganti sumber sistem dengan sumber pengguna. Aspose.Words tidak akan lagi mencari font di registri atau folder Windows\Font dan hanya memindai font di dalam folder yang ditentukan. Metode [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) akan mengembalikan nilai yang sesuai.

### Menentukan Satu atau Beberapa Folder Font

Metode [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) dan [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) merupakan jalan pintas ke metode [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) dengan satu atau beberapa instance [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Metode ini digunakan untuk menunjukkan di mana Aspose.Words harus mencari font. Jika folder tidak ada atau tidak dapat diakses, Aspose.Words mengabaikan saja folder ini. Jika semua folder, termasuk sumber penggantian font, diabaikan, Aspose.Words akan menggunakan font Fanwood sebagai default.

Contoh berikut menunjukkan cara mengatur folder atau sumber, yang selanjutnya akan digunakan Aspose.Words untuk mencari font TrueType selama rendering atau penyematan font:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Parameter Boolean tambahan mengontrol apakah font dipindai secara rekursif melalui semua folder, sehingga memindai semua folder anak dari folder tertentu. Contoh berikut menunjukkan cara mengatur Aspose.Words agar mencari font TrueType di beberapa folder saat merender atau menyematkan font:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file template contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Perhatikan prioritasnya. Jika terdapat font dengan nama keluarga dan gaya yang sama di sumber font berbeda, maka Aspose.Words akan memilih font dari sumber dengan prioritas lebih tinggi. Lihat deskripsi kolom "prioritas" di bawah.

Jika Anda tidak ingin menggunakan font sistem sama sekali, Aspose.Words mengizinkan Anda mengabaikannya dan hanya menggunakan font Anda sendiri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Properti Prioritas

Properti **prioritas** digunakan ketika ada font dengan nama keluarga dan gaya yang sama di sumber font berbeda. Dalam hal ini Aspose.Words memilih font dari sumber dengan nilai prioritas lebih tinggi. Misalnya, ada font versi lama di folder sistem dan pelanggan menambahkan versi baru font yang sama di folder khusus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Mendapatkan Daftar Font yang Tersedia

Jika Anda ingin mendapatkan daftar font yang tersedia, yang misalnya dapat digunakan untuk merender dokumen PDF, Anda dapat menggunakan metode [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), seperti yang ditunjukkan pada contoh kode berikut. Kelas [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) menentukan informasi tentang font fisik yang tersedia untuk mesin font Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
