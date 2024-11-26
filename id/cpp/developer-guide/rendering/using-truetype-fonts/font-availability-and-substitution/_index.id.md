---
title: MFont Ketersediaan dan Substitusi dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Ketersediaan dan Penggantian Font
linktitle: Ketersediaan dan Penggantian Font
description: "Jika font pengganti yang tepat tidak dapat ditemukan, Aspose.Words harus menggantinya dengan font yang serupa. Artikel ini menjelaskan proses menemukan font yang paling cocok."
type: docs
weight: 12
url: /id/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Teks dalam dokumen dapat diformat dengan berbagai font, seperti Arial, Times New Roman, Verdana, dan lainnya. Saat Aspose.Words merender dokumen, ia mencoba memilih font yang ditentukan dalam dokumen.

Namun, ada situasi ketika font yang tepat tidak dapat ditemukan dan Aspose.Words harus menggantinya dengan font yang serupa. Aspose.Words memilih font sesuai dengan proses berikut:

1. Aspose.Words mencoba menemukan font di antara sumber font yang tersedia dengan nama font yang tepat.
1. Aspose.Words mencoba menemukan font yang diperlukan di antara font yang disematkan di dokumen asli. Beberapa format dokumen seperti DOCX dapat berisi font yang disematkan.
1. Jika Aspose.Words tidak dapat menemukan font yang diperlukan dengan nama yang sama persis, dan properti [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) ditentukan untuk font ini, maka Aspose.Words akan menemukan font yang ditentukan dengan **AltName** dari kelas [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), yang menentukan informasi font.
1. Jika Aspose.Words tidak dapat menemukan font yang ditentukan, dan **AltName** juga tidak ditentukan, maka aturan penggantian font diterapkan satu per satu, seperti yang dijelaskan di bawah ini (saat penggantian yang sesuai ditemukan, Proses Penggantian Font berhenti dan langkah selanjutnya tidak dijalankan):
   1. Aspose.Words akan mencoba menerapkan pengaturan font OS, jika tersedia, dengan menggunakan utilitas `FontConfig`. Fitur Non - Windows ini harus digunakan dengan FontConfig yang kompatibel dengan OS. Hampir semua OS berbasis Unix sudah memiliki pustaka `FontConfig` yang dirancang untuk menyediakan konfigurasi font di seluruh sistem, penyesuaian, dan akses ke aplikasi. Jika tidak, pustaka ini dapat dengan mudah diinstal oleh pengguna.<br>
      Aspose.Words tahu cara menanyakan data dan menafsirkan hasil FontConfig untuk tujuannya sendiri. Secara default, utilitas `FontConfig` dinonaktifkan. Anda dapat mengaktifkannya sebagai berikut:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Langkah selanjutnya adalah mekanisme sederhana namun sangat kuat yang disebut [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Secara default, fitur ini aktif dan tersedia untuk OS apa pun. Aspose.Words menggunakan tabel XML yang menentukan aturan substitusi dasar untuk OS yang berbeda. Menurut aturan substitusi tabel, daftar nama font pengganti akan digunakan.<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Anda dapat mengambil sebagai dasar tabel yang ada dari toples atau menyimpannya secara terprogram dengan cara berikut:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Terlepas dari fleksibilitas mekanisme ini, ada beberapa kasus di mana lebih baik menonaktifkannya, seperti yang ditunjukkan di bawah ini:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Aturan substitusi **FontInfo** akan diterapkan jika aturan substitusi tabel tidak dapat menemukan font. Mekanisme ini diaktifkan secara default. Aspose.Words menemukan font yang paling sesuai dengan informasi font yang terdapat dalam dokumen tertentu. Informasi ini dapat diperoleh dari kelas **FontInfo** seperti yang ditunjukkan di bawah ini:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Pengguna tidak dapat ikut campur dalam alur kerja fitur ini kecuali mereka memutuskan untuk menonaktifkannya jika hasilnya tidak memuaskan:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Jika **FontInfo** tidak tersedia untuk font yang hilang, maka proses akan berhenti.
   1. aturan substitusi **DefaultFont** akan diterapkan jika substitusi `FontInfo` juga gagal. Aturan ini juga diaktifkan secara default. Menurut aturan ini, Aspose.Words akan mencoba menggunakan font default yang ditentukan dalam properti [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Jika pengguna belum memilih font defaultnya sendiri, maka "Times New Roman" akan digunakan sebagai font default. Aturan ini dapat dinonaktifkan seperti yang ditunjukkan di bawah ini:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Untuk memeriksa font default saat ini, gunakan:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Untuk menyiapkan opsi penggantian Anda sendiri, terapkan:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Jika Aspose.Words tidak dapat melakukan penggantian font, ia mencoba mendapatkan font pertama yang tersedia dari sumber font yang tersedia.
1. Terakhir, jika Aspose.Words tidak dapat menemukan font apa pun di antara sumber font yang tersedia, dokumen akan dirender menggunakan font Fanwood gratis yang disematkan ke dalam rakitan Aspose.Words.

{{% alert color="primary" %}}

Jika **FontInfo** tersedia, *FontInfo substitution rule* akan selalu menyelesaikan font dan mengganti aturan font default. Jika Anda ingin menggunakan aturan font default, Anda harus menonaktifkan *FontInfo substitution rule*. Perhatikan bahwa *FontConfig substitution rule* akan menyelesaikan font dalam banyak kasus, dan dengan demikian mengesampingkan semua aturan lainnya.

{{% /alert %}}


