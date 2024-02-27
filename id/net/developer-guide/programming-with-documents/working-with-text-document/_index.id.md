---
title: Bekerja dengan Dokumen Teks di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Dokumen Teks
linktitle: Bekerja dengan Dokumen Teks
description: "Pemrosesan dokumen TXT tingkat lanjut, daftar, BiDi, header/footer, menggunakan C#."
type: docs
weight: 430
url: /id/net/working-with-text-document/
---

Pada artikel ini, kita akan mempelajari opsi apa saja yang berguna untuk bekerja dengan dokumen teks melalui Aspose.Words. Harap dicatat bahwa ini bukan daftar lengkap opsi yang tersedia, tetapi hanya contoh penggunaan beberapa di antaranya.

## Tambahkan Tanda Dua Arah

Anda dapat menggunakan properti [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) untuk menentukan apakah akan menambahkan tanda dua arah sebelum setiap BiDi dijalankan saat mengekspor dalam format teks biasa. Aspose.Words menyisipkan Karakter Unicode 'TANDA KANAN KE KIRI' (U+200F) sebelum setiap Jalankan dua arah dalam teks. Opsi ini sesuai dengan opsi "Tambahkan tanda dua arah" dalam dialog Konversi File MS Word saat Anda mengekspor ke format Teks Biasa. Perhatikan bahwa ini muncul dalam dialog hanya jika ada bahasa pengeditan Arab atau Ibrani yang ditambahkan di MS Word.

Contoh kode berikut menunjukkan cara menggunakan properti **AddBidiMarks**. Nilai default properti ini adalah *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Kenali Item Daftar Saat Memuat TXT

Aspose.Words dapat mengimpor item daftar file teks sebagai nomor daftar atau teks biasa dalam model objek dokumennya. Properti [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) memungkinkan menentukan bagaimana item daftar bernomor dikenali ketika dokumen diimpor dari format teks biasa:

* Jika opsi ini diatur ke *true*, spasi juga digunakan sebagai pembatas nomor daftar: algoritme pengenalan daftar untuk penomoran gaya Arab (1., 1.1.2.) menggunakan simbol spasi putih dan titik (".").

* Jika opsi ini diatur ke *false*, algoritme pengenalan daftar akan mendeteksi paragraf daftar, ketika nomor daftar diakhiri dengan titik, tanda kurung siku, atau simbol poin (seperti "•", "*", "-" atau "o").

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Menangani spasi Depan dan Belakang Selama Memuat TXT

Anda dapat mengontrol cara menangani spasi awal dan akhir selama memuat file TXT. Ruang-ruang terdepan dapat dipangkas, dilestarikan atau diubah menjadi indentasi dan ruang-ruang di belakang dapat dipangkas atau dilestarikan.

Contoh kode berikut menunjukkan cara memangkas spasi awal dan akhir saat mengimpor file TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Deteksi Arah Teks Dokumen

Aspose.Words menyediakan properti [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) pada kelas [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) untuk mendeteksi arah teks (RTL/LTR) pada dokumen. Properti ini menetapkan atau mendapatkan petunjuk teks dokumen yang disediakan dalam enumerasi [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/). Nilai default diserahkan kepada *right*.

Contoh kode berikut menunjukkan cara mendeteksi arah teks dokumen saat mengimpor file TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Ekspor Header dan Footer di Output TXT

Jika Anda ingin mengekspor header dan footer dalam dokumen keluaran TXT, Anda dapat menggunakan properti [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/). Properti ini menentukan cara header dan footer diekspor ke format teks biasa.

Contoh kode berikut menunjukkan cara mengekspor header dan footer ke format teks biasa:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Ekspor Indentasi Daftar di Output TXT

Aspose.Words memperkenalkan kelas [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) yang memungkinkan menentukan bagaimana tingkat daftar diindentasi saat mengekspor ke format teks biasa. Saat bekerja dengan [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), properti [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) disediakan untuk menentukan karakter yang akan digunakan untuk membuat indentasi level daftar dan menghitung menentukan berapa banyak karakter yang akan digunakan sebagai indentasi per satu level daftar.

Nilai default untuk properti karakter adalah '\0' yang menunjukkan bahwa tidak ada lekukan. Untuk properti count, nilai defaultnya adalah 0 yang berarti tidak ada lekukan.

### Menggunakan Karakter Tab

Contoh kode berikut menunjukkan cara mengekspor tingkat daftar menggunakan karakter tab:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Menggunakan Karakter Luar Angkasa

Contoh kode berikut menunjukkan cara mengekspor level daftar menggunakan karakter spasi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Menggunakan Indentasi Default

Contoh kode berikut menunjukkan cara mengekspor tingkat daftar menggunakan indentasi default:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
