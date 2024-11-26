---
title: Mencetak Dokumen di C#
second_title: Aspose.Words untuk .NET
articleTitle: Mencetak Dokumen Secara Terprogram atau Menggunakan Dialog
linktitle: Mencetak Dokumen Secara Terprogram atau Menggunakan Dialog
description: "Cetak dokumen di Server menggunakan XpsPrint API yang tidak dikelola atau melalui printer yang dipilih dengan Pengaturan dan Dialog Pratinjau Cetak dalam C#."
type: docs
weight: 55
url: /id/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

Artikel ini menjelaskan cara mencetak dokumen pengolah kata dari aplikasi Layanan ASP.NET atau Windows menggunakan Aspose.Words dan `XpsPrint` API. Ini juga menunjukkan metode pencetakan dokumen dengan Pengaturan, Pratinjau cetak, dan dialog Kemajuan pencetakan, dan menjelaskan cara mengurangi waktu panggilan pertama untuk mencetak dokumen.

## Mencetak Dokumen pada Server melalui `XpsPrint` API

Bagian ini ditujukan bagi pengguna yang ingin mengirimkan dokumen XPS ke XpsPrint API yang tidak dikelola dari aplikasi .NET menggunakan Aspose.Words.

### Keterbatasan pencetakan dokumen di aplikasi Layanan ASP.NET atau Windows

Saat mengembangkan aplikasi .NET yang menghasilkan beberapa keluaran cetakan, Anda biasanya dapat menggunakan kelas yang disediakan di namespace *System.Drawing.Printing*, atau kelas Windows Presentation Foundation (WPF). Namun, jika aplikasinya adalah aplikasi ASP.NET atau Windows Service, opsi pencetakannya terbatas, karena Microsoft tidak menganjurkan penggunaan pendekatan ini. Kelas Pencetakan .NET Framework tidak didukung oleh aplikasi layanan. Ini termasuk halaman ASP, yang umumnya dijalankan dalam konteks layanan server.

Kelas-kelas dalam namespace *System.Drawing.Printing* tidak didukung untuk digunakan dalam layanan Windows atau aplikasi atau layanan ASP.NET, dan upaya penggunaannya dapat mengakibatkan penurunan kinerja layanan, pengecualian waktu proses, dan masalah lainnya. Penggunaan WPF untuk membangun layanan Windows juga tidak didukung. Karena WPF adalah teknologi presentasi, layanan Windows memerlukan izin yang sesuai untuk melakukan operasi visual yang melibatkan interaksi pengguna. Jika layanan Windows tidak memiliki izin tersebut, mungkin ada hasil yang tidak diharapkan.

Objek Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) menyediakan sekumpulan metode [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) untuk mencetak dokumen. Metode ini menggunakan kelas pencetakan .NET yang ditentukan dalam namespace *System.Drawing.Printing*. Ada banyak pelanggan Aspose.Words yang berhasil memanfaatkannya untuk mencetak di aplikasi sisi server mereka. Namun demikian, artikel ini menunjukkan metode pencetakan alternatif yang sesuai dengan rekomendasi Microsoft.

### Metode Mencetak Dokumen di Server

Cara mencetak dokumen sesuai Microsoft yang benar adalah dengan menggunakan XpsPrint API yang tidak dikelola. API ini tersedia di Windows 7, Windows Server 2008 R2, dan Windows Vista asalkan Pembaruan Platform untuk Windows Vista diinstal.

Karena Aspose.Words dapat dengan mudah mengonversi dokumen apa pun ke XPS, Anda hanya perlu menulis kode yang meneruskan dokumen XPS ke `XpsPrint` API. Satu-satunya masalah adalah `XpsPrint` API tidak dikelola dan memerlukan pengetahuan tentang teknologi Platform Invoke.

Untuk mencetak dokumen, Aspose.Words menyediakan kelas **XpsPrintHelper** yang berisi metode Print sederhana, di mana Anda hanya perlu menentukan parameter berikut (lihat lebih detail di artikel [Cetak Dokumen melalui XPS API](/words/net/missing-features-in-openxml/)):

- Dokumen yang ingin Anda cetak.
- Nama pencetak.
- Nama pekerjaan (opsional).
- Nilai Boolean, menentukan apakah program harus menunggu hingga pekerjaan pencetakan selesai. Oleh karena itu, sistem akan memeriksa apakah dokumen berhasil dicetak atau segera mengembalikannya setelah pekerjaan pencetakan dikirim. Dalam kasus terakhir, tidak mungkin untuk mengidentifikasi apakah pekerjaan pencetakan berhasil.

Jika menemui masalah saat mengirimkan atau mencetak dokumen, metode ini akan mengeluarkan pengecualian.

Contoh kode di bawah ini menunjukkan cara mencetak dokumen menggunakan kelas **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Saat Anda menjalankan proyek, proyek tersebut akan mencetak dokumen sampel pada printer yang ditentukan dan membuka jendela konsol untuk menampilkan hasil pencetakan. Ketika pekerjaan pencetakan selesai atau terjadi kesalahan, sistem akan menampilkan pesan sukses atau teks pengecualian yang dilempar.

Anda juga dapat mengatur beberapa pengaturan pencetakan menggunakan kelas [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/). Misalnya, di Microsoft Word, baki printer ditentukan untuk setiap bagian dan khusus untuk printer. Oleh karena itu, Anda dapat mengubah nilai-nilai ini secara terprogram untuk setiap bagian melalui properti [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) dan [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

Dalam beberapa kasus, Anda mungkin perlu menggunakan sampel ini tanpa Aspose.Words. Misalnya saja ketika Anda sudah memiliki dokumen XPS dan baru ingin mencetaknya dari aplikasi ASP.NET atau Windows Service. Kemudian, Anda tinggal menghapus metode `Print`.

{{% /alert %}}

Ada dua kelebihan metode **XpsPrintHelper**.**Print**. Kelebihan pertama mengambil objek [Document](https://reference.aspose.com/words/net/aspose.words/document/) dan menyimpannya ke dalam `MemoryStream` dalam format XPS. Kelebihan beban kedua menerima objek `Stream`. Aliran harus berisi dokumen dalam format XPS.

Anda dapat mendownload contoh metode kelebihan beban dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Mencetak Dokumen dengan Pengaturan dan Dialog Pratinjau Cetak

Saat bekerja dengan dokumen, seringkali diperlukan untuk mencetaknya ke printer yang dipilih. Akan sangat membantu jika memanfaatkan dialog pratinjau cetak untuk memeriksa secara visual tampilan dokumen yang dicetak dan memilih opsi pencetakan yang relevan.

Aspose.Words tidak memiliki dialog atau formulir bawaan tetapi mengimplementasikan kelas [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/), berdasarkan kelas .NET **PrintDocument**. Sebuah instance dari kelas ini dapat diteruskan ke formulir **PrintPreviewDialog** untuk melihat pratinjau dan mencetak dokumen. Selain itu, kelas [Dialog Pratinjau Cetak](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) mendefinisikan output yang akan dikirim ke printer.

Contoh berikut menunjukkan cara menggunakan kelas-kelas ini untuk mencetak dokumen dari Aspose.Words melalui pratinjau Cetak dan dialog Pengaturan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Properti **AllowSomePages** memungkinkan Anda memilih rentang halaman untuk dicetak jika nilai properti ini Benar. Secara default, semua halaman dalam rentang tersebut dipilih untuk dicetak.

{{% /alert %}}

Untuk mengoptimalkan tampilan pengaturan dialog Pratinjau Cetak, tentukan properti kelas **PrintPreviewDialog**.

## Mencetak Banyak Halaman dalam Satu Lembar

Memiliki lebih banyak fleksibilitas saat mencetak dokumen selalu bermanfaat. Dengan menggunakan .NET dan Aspose.Words, Anda dapat dengan mudah menyempurnakan operasi pencetakan untuk menerapkan logika kustom Anda dengan menentukan tampilan dokumen pada halaman yang dicetak.

Seperti pada bagian sebelumnya, Aspose.Words mengimplementasikan kelas **MultipagePrintDocument**, yang didasarkan pada kelas .NET **PrintDocument**. Ini berarti bahwa infrastruktur pencetakan .NET yang ada dapat digunakan sedemikian rupa sehingga dialog cetak dan pratinjau cetak memungkinkan visualisasi dokumen sebelum dicetak. Kelas **MultipagePrintDocument** memberikan kemampuan untuk mencetak beberapa halaman dalam satu lembar kertas.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Hasil dari contoh kode ini ditunjukkan di bawah ini:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Menyembunyikan Dialog Kemajuan Pencetakan Saat Mencetak Dokumen

Dialog Kemajuan Pencetakan tidak muncul saat mencetak dokumen melalui metode [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Namun, dialog ini muncul saat mencetak dengan metode [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) lain. Dalam hal ini, untuk mencegah dialog Pencetakan muncul, Anda harus menentukan pengaturan printer yang valid dan pengontrol pencetakan standar dalam metode ini, seperti yang ditunjukkan pada contoh di bawah ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Cara Mengurangi Waktu Panggilan Pertama untuk Mencetak Dokumen

Aspose.Words membaca dan menyimpan beberapa bidang **PrinterSettings** untuk mengurangi waktu pencetakan. Anda dapat mencapainya dengan memanggil metode [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Metode ini dipanggil sebelum pencetakan dimulai jika belum pernah dijalankan sebelumnya. Perhatikan bahwa total waktu pencetakan dengan dan tanpa pemanggilan metode ini hampir sama. Tujuan penggunaan metode ini adalah untuk mengurangi waktu pemanggilan pertama metode [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Contoh kode berikut menunjukkan cara menggunakan metode ini:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Lihat juga

- [Pembaruan Platform untuk Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
