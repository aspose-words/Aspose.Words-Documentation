---
title: Bekerja dengan Ole Objects
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Ole Objects
linktitle: Bekerja dengan Ole Objects
description: "Buat dan memodifikasi OLE yang timbul dalam dokumen Anda menggunakan JavaSitemap"
type: docs
weight: 360
url: /id/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE singkatan dari "Object Linking dan Embedding". Ini adalah teknologi dimana pengguna dapat bekerja dengan dokumen yang mengandung "objects" yang dibuat atau diedit oleh aplikasi pihak ketiga. Itu, OLE memungkinkan aplikasi untuk mengekspor "objects" ini ke aplikasi lain untuk mengedit, dan kemudian mengimpor mereka kembali dengan beberapa konten tambahan.

Dalam artikel ini, kita akan berbicara tentang memasukkan objek OLE dan mengatur sifatnya ke dalam dokumen.

## Masukkan Objek Ole

Jika Anda ingin OLE Objek, sebutkan [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) metode dan melewatinya **ProgId** eksplisit dengan parameter lain.

Contoh kode berikut menunjukkan cara memasukkan OLE Objek ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Mengatur Nama File dan Ekstensi ketika Memasukkan Objek OLE

Paket OLE adalah warisan dan cara "tidak didokumentasikan" untuk menyimpan benda-benda tertanam jika pegangan OLE tidak diketahui.

Sitemap Windows versi seperti Windows 3.1, 95, dan 98 memiliki Paket. Aplikasi exe yang dapat digunakan untuk menanamkan jenis data ke dalam dokumen. Aplikasi ini sekarang dikecualikan dari WindowsSitemap Microsoft Word dan aplikasi lain masih menggunakannya untuk mengatur data jika handler OLE hilang atau tidak diketahui. Login `OlePackage` kelas memungkinkan pengguna untuk mengakses properti Paket OLE.

Contoh kode berikut menunjukkan cara mengatur nama file, ekstensi, dan nama tampilan untuk Paket OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Dapatkan akses ke OLE Object Raw Data

Pengguna dapat mengakses data objek OLE menggunakan berbagai properti dan metode `OleFormat` Sitemap Misalnya, dimungkinkan untuk mendapatkan Meme it `OLE` objek data mentah atau path dan nama file sumber untuk objek OLE yang terkait.

Contoh kode berikut menunjukkan bagaimana untuk mendapatkan OLE Data baku objek menggunakan [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Masukkan OLE Objek sebagai ikon

OLE objek juga dapat dimasukkan ke dalam dokumen sebagai gambar.

Contoh kode berikut menunjukkan cara memasukkan objek OLE sebagai ikon. Untuk tujuan ini, **DocumentBuilder** kelas mengekspos Meme it [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) Login

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Contoh kode berikut menunjukkan cara memasukkan objek OLE tertanam sebagai ikon dari aliran ke dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Masukkan Video Online

Video online dapat dimasukkan ke dalam dokumen Word dari * "Insert" > "Video Online" * tab. Anda dapat memasukkan video online ke dalam dokumen di lokasi saat ini dengan memanggil [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) metode:

Login [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kelas memperkenalkan empat kelebihan dari metode ini. Yang pertama bekerja dengan sumber daya video yang paling populer dan mengambil `URL` video sebagai parameter. Misalnya, overload pertama mendukung penyisipan sederhana video online dari [Login](https://www.youtube.com/) Login [Login](https://vimeo.com/) sumber daya.

Contoh kode berikut menunjukkan cara memasukkan video online dari *Vimeo* ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Beban kedua bekerja dengan semua sumber daya video lainnya dan mengambil kode HTML tertanam sebagai parameter. Kode HTML untuk mengatur video dapat bervariasi tergantung pada penyedia, sehingga hubungi penyedia masing-masing untuk rincian.

{{% alert color="primary" %}}

Harap dicatat bahwa dokumen akan secara otomatis dioptimalkan untuk MS Word 2013 untuk menunjukkan video.

{{% /alert %}}

Contoh kode berikut menunjukkan cara memasukkan video online ke dalam dokumen menggunakan kode HTML tersebut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
