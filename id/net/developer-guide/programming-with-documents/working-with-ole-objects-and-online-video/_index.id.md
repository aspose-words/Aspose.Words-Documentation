---
title: Bekerja dengan Objek OLE dan Video Online di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Objek OLE dan Video Online
linktitle: Bekerja dengan Objek OLE dan Video Online
description: "Buat dan modifikasi penyematan OLE di dokumen Anda menggunakan C#."
type: docs
weight: 360
url: /id/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) adalah teknologi dimana pengguna dapat bekerja dengan dokumen yang berisi "objek" yang dibuat atau diedit oleh aplikasi pihak ketiga. Artinya, OLE mengizinkan aplikasi pengeditan untuk mengekspor "objek" ini ke aplikasi pengeditan lain dan kemudian mengimpornya dengan konten tambahan.

Pada artikel ini, kita akan membahas tentang menyisipkan objek OLE dan mengatur propertinya, serta menyisipkan video online ke dalam dokumen.

## Masukkan Objek OLE

Jika Anda menginginkan Objek OLE, panggil metode [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) dan teruskan **ProgId** secara eksplisit dengan parameter lainnya.

Contoh kode berikut menunjukkan cara menyisipkan Objek OLE ke dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Tetapkan Nama File dan Ekstensi saat Memasukkan Objek OLE

Paket OLE adalah cara lama dan "tidak terdokumentasi" untuk menyimpan objek yang disematkan jika penangan OLE tidak diketahui.

Versi Windows awal seperti Windows 3.1, 95, dan 98 memiliki aplikasi Packager.exe yang dapat digunakan untuk menyematkan semua jenis data ke dalam dokumen. Aplikasi ini sekarang dikecualikan dari Windows, namun Microsoft Word dan aplikasi lain masih menggunakannya untuk menyematkan data jika pengendali OLE tidak ada atau tidak diketahui. Kelas `OlePackage` memungkinkan pengguna untuk mengakses properti Paket OLE.

Contoh kode berikut menunjukkan cara mengatur nama file, ekstensi, dan nama tampilan untuk Paket OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Dapatkan Akses ke Data Mentah Objek OLE

Pengguna dapat mengakses data objek OLE menggunakan berbagai properti dan metode kelas `OleFormat`. Misalnya, dimungkinkan untuk mendapatkan data mentah objek `OLE` atau jalur dan nama file sumber untuk objek OLE yang tertaut.

Contoh kode berikut menunjukkan cara mendapatkan data mentah Objek OLE menggunakan metode [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Sisipkan Objek OLE sebagai Ikon

Objek OLE juga dapat disisipkan ke dalam dokumen sebagai gambar.

Contoh kode berikut menunjukkan cara menyisipkan Objek OLE sebagai ikon. Untuk tujuan ini, kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) memaparkan metode [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Contoh kode berikut menunjukkan cara menyisipkan objek OLE yang tertanam sebagai ikon dari aliran ke dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Ukuran maksimum ikon harus 32x32 agar tampilannya benar.

{{% /alert %}}

## Masukkan Video Daring

Video online dapat disisipkan ke dalam dokumen Word dari tab *"Sisipkan" &gt; "Video Online"*. Anda dapat memasukkan video online ke dalam dokumen di lokasi saat ini dengan memanggil metode [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/).

Kelas [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) memperkenalkan empat kelebihan metode ini. Yang pertama bekerja dengan sumber daya video paling populer dan menggunakan `URL` video sebagai parameter. Misalnya, kelebihan pertama mendukung penyisipan sederhana video online dari sumber [Youtube](https://www.youtube.com/) dan [Vimeo](https://vimeo.com/).

Contoh kode berikut menunjukkan cara menyisipkan video online dari *Vimeo* ke dalam dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Kelebihan kedua berfungsi dengan semua sumber daya video lainnya dan menggunakan kode HTML yang disematkan sebagai parameter. Kode HTML untuk menyematkan video mungkin berbeda-beda tergantung penyedianya, jadi hubungi penyedia masing-masing untuk detailnya.

{{% alert color="primary" %}}

Harap dicatat bahwa dokumen akan secara otomatis dioptimalkan untuk MS Word 2013 untuk menampilkan video.

{{% /alert %}}

Contoh kode berikut menunjukkan cara memasukkan video online ke dalam dokumen menggunakan kode HTML tersebut:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
