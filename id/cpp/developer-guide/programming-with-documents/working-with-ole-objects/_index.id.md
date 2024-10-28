---
title: Bekerja dengan Objek OLE di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Objek OLE
linktitle: Bekerja dengan Objek OLE
description: "Buat dan modifikasi penyematan OLE di dokumen Anda menggunakan C++."
type: docs
weight: 360
url: /id/cpp/working-with-ole-objects/
---

OLE (Penautan dan Penyematan Objek) adalah teknologi di mana pengguna dapat bekerja dengan dokumen yang berisi "objek" yang dibuat atau diedit oleh aplikasi pihak ketiga. Artinya, OLE memungkinkan aplikasi pengeditan untuk mengekspor "objek" ini ke aplikasi pengeditan lain dan kemudian mengimpornya dengan konten tambahan.

Pada artikel ini, kita akan berbicara tentang menyisipkan objek OLE dan mengatur propertinya ke dalam dokumen.

## Sisipkan Objek OLE

Jika Anda menginginkan Objek OLE, panggil metode [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) dan berikan **ProgId** secara eksplisit dengan parameter lain.

Contoh kode berikut menunjukkan cara menyisipkan Objek OLE ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Setel Nama File dan Ekstensi saat Menyisipkan Objek OLE

Paket OLE adalah cara lama dan "tidak berdokumen" untuk menyimpan objek yang disematkan jika penangan OLE tidak diketahui.

Versi Windows awal seperti Windows 3.1, 95, dan 98 memiliki Pembuat Paket.aplikasi exe yang dapat digunakan untuk menyematkan semua jenis data ke dalam dokumen. Aplikasi ini sekarang dikecualikan dari Windows, tetapi Microsoft Word dan aplikasi lain masih menggunakannya untuk menyematkan data jika penangan OLE hilang atau tidak diketahui. Kelas `OlePackage` memungkinkan pengguna untuk mengakses properti Paket OLE.

Contoh kode berikut menunjukkan cara mengatur nama file, ekstensi, dan nama tampilan untuk Paket OLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Dapatkan Akses ke Data Mentah Objek OLE

Pengguna dapat mengakses data objek OLE menggunakan berbagai properti dan metode kelas `OleFormat`. Misalnya, dimungkinkan untuk mendapatkan data mentah objek `OLE` atau jalur dan nama file sumber untuk objek OLE yang ditautkan.

Contoh kode berikut menunjukkan cara mendapatkan data mentah Objek OLE menggunakan metode [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Sisipkan Objek Ole sebagai Ikon

OLE objek juga dapat disisipkan ke dalam dokumen sebagai gambar.

Contoh kode berikut menunjukkan cara menyisipkan Objek OLE sebagai ikon. Untuk tujuan ini, kelas [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) mengekspos metode [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Contoh kode berikut menunjukkan cara menyisipkan objek OLE yang disematkan sebagai ikon dari aliran ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Sisipkan Video Daring

Video online dapat disisipkan ke dalam dokumen Word dari tab *"Insert" > "Online Video"*. Anda dapat menyisipkan video online ke dalam dokumen di lokasi saat ini dengan memanggil metode [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Kelas [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) memperkenalkan empat kelebihan metode ini. Yang pertama berfungsi dengan sumber daya video paling populer dan mengambil `URL` video sebagai parameter. Misalnya, kelebihan beban pertama mendukung penyisipan sederhana video online dari [YouTube](https://www.youtube.com/) dan [Vimeo](https://vimeo.com/) sumber daya.

Contoh kode berikut menunjukkan cara menyisipkan video online dari *Vimeo* ke dalam dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Kelebihan beban kedua berfungsi dengan semua sumber daya video lainnya dan menggunakan kode HTML yang disematkan sebagai parameter. Kode HTML untuk menyematkan video dapat bervariasi tergantung pada penyedianya, jadi hubungi penyedia masing-masing untuk detailnya.

{{% alert color="primary" %}}

Harap perhatikan bahwa dokumen akan dioptimalkan secara otomatis untuk MS Word 2013 untuk menampilkan video.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan video online ke dalam dokumen menggunakan kode HTML tersebut:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}