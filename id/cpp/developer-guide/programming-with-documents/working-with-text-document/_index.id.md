---
title: Bekerja dengan Dokumen Teks dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Dokumen Teks
linktitle: Bekerja dengan Dokumen Teks
description: "Pemrosesan dokumen TXT lanjutan, daftar, BiDi, header/footer, menggunakan C++."
type: docs
weight: 430
url: /id/cpp/working-with-text-document/
---

Pada artikel ini, kita akan mempelajari opsi apa yang dapat berguna untuk bekerja dengan dokumen teks melalui Aspose.Words. Harap dicatat bahwa ini bukan daftar lengkap opsi yang tersedia, tetapi hanya contoh bekerja dengan beberapa di antaranya.

## Tambahkan Tanda Dua Arah

Anda dapat menggunakan properti [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) untuk menentukan apakah akan menambahkan tanda dua arah sebelum setiap BiDi dijalankan saat mengekspor dalam format teks biasa. Aspose.Words menyisipkan Karakter Unicode'RIGHT-TO-LEFT MARK' (U+200F) sebelum setiap Lari dua arah dalam teks. Opsi ini sesuai dengan opsi "Tambahkan tanda dua arah" dalam dialog Konversi File Word MS saat Anda mengekspor ke format Teks Biasa. Perhatikan bahwa itu muncul dalam dialog hanya jika salah satu bahasa penyuntingan bahasa Arab atau Ibrani ditambahkan dalam MS Word.

Contoh kode berikut menunjukkan cara menggunakan properti **AddBidiMarks**. Nilai default properti ini adalah *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Mengenali item Daftar saat memuat TXT

Aspose.Words dapat mengimpor item daftar dari file teks sebagai nomor daftar atau teks biasa dalam model objek dokumennya. Properti [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) memungkinkan untuk menentukan bagaimana item daftar bernomor dikenali saat dokumen diimpor dari format teks biasa:

* Jika opsi ini disetel ke *true*, spasi kosong juga digunakan sebagai pembatas nomor daftar: algoritme pengenalan daftar untuk penomoran gaya Arab (1., 1.1.2.) menggunakan simbol spasi putih dan titik (".").
* Jika opsi ini disetel ke *false*, algoritme pengenalan daftar mendeteksi paragraf daftar, saat nomor daftar diakhiri dengan simbol titik, tanda kurung siku, atau peluru (seperti "•", "*", "-" atau "o").

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Cara Menangani spasi Awal dan akhir Selama Pemuatan TXT

Anda dapat mengontrol cara menangani spasi awal dan akhir selama memuat file TXT. Ruang terdepan dapat dipangkas, dipertahankan, atau diubah menjadi indentasi dan ruang tambahan dapat dipangkas atau dipertahankan.

Contoh kode berikut menunjukkan cara memangkas spasi awal dan akhir saat mengimpor file TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Ekspor Header dan Footer dalam Keluaran TXT

Jika Anda ingin mengekspor header dan footer dalam dokumen output TXT, Anda dapat menggunakan properti [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Properti ini menentukan cara header dan footer diekspor ke format teks biasa.

Contoh kode berikut menunjukkan cara mengekspor header dan footer ke format teks biasa:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Indentasi Daftar Ekspor dalam Keluaran TXT

Aspose.Words memperkenalkan kelas [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) yang memungkinkan menentukan bagaimana level daftar diindentasi saat mengekspor ke format teks biasa. Saat bekerja dengan [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), properti [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) disediakan untuk menentukan karakter yang akan digunakan untuk membuat indentasi level daftar dan menghitung menentukan berapa banyak karakter yang akan digunakan sebagai indentasi per satu level daftar.

Nilai default untuk properti karakter adalah '\0 ' yang menunjukkan bahwa tidak ada lekukan. Untuk properti count, nilai defaultnya adalah 0 yang berarti tidak ada lekukan.

### Menggunakan Karakter Tab

Contoh kode berikut menunjukkan cara mengekspor level daftar menggunakan karakter tab:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Menggunakan Karakter Spasi

Contoh kode berikut menunjukkan cara mengekspor level daftar menggunakan karakter spasi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Menggunakan Indentasi Default

Contoh kode berikut menunjukkan cara mengekspor level daftar menggunakan indentasi default:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
