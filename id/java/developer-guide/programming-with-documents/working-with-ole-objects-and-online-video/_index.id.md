---
title: Bekerja dengan Objek Ole
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Objek Ole
linktitle: Bekerja dengan Objek Ole
description: "Buat dan modifikasi penyematan OLE di dokumen Anda menggunakan Java."
type: docs
weight: 360
url: /id/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE adalah singkatan dari "Penautan dan Penyematan Objek". Ini adalah teknologi di mana pengguna dapat bekerja dengan dokumen yang berisi "objek" yang dibuat atau diedit oleh aplikasi pihak ketiga. Artinya, OLE memungkinkan aplikasi mengekspor "objek" ini ke aplikasi lain untuk diedit, lalu mengimpornya kembali dengan beberapa konten tambahan.

Pada artikel ini, kita akan berbicara tentang menyisipkan objek OLE dan mengatur propertinya ke dalam dokumen.

## Sisipkan Objek Ole

Jika Anda menginginkan Objek OLE, panggil metode [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) dan berikan **ProgId** secara eksplisit dengan parameter lain.

Contoh kode berikut menunjukkan cara menyisipkan Objek OLE ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Setel Nama File dan Ekstensi saat Menyisipkan Objek OLE

Paket OLE adalah cara lama dan "tidak berdokumen" untuk menyimpan objek yang disematkan jika penangan OLE tidak diketahui.

Versi Windows awal seperti Windows 3.1, 95, dan 98 memiliki aplikasi Packager.exe yang dapat digunakan untuk menyematkan semua jenis data ke dalam dokumen. Aplikasi ini sekarang dikecualikan dari Windows, tetapi Microsoft Word dan aplikasi lain masih menggunakannya untuk menyematkan data jika penangan OLE hilang atau tidak diketahui. Kelas `OlePackage` memungkinkan pengguna untuk mengakses properti OLE Package.

Contoh kode berikut menunjukkan cara menyetel nama file, ekstensi, dan nama tampilan untuk OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Dapatkan Akses ke Data Mentah Objek OLE

Pengguna dapat mengakses data objek OLE menggunakan berbagai properti dan metode kelas `OleFormat`. Misalnya, dimungkinkan untuk mendapatkan data mentah objek `OLE` atau jalur dan nama file sumber untuk objek OLE yang ditautkan.

Contoh kode berikut menunjukkan cara mendapatkan data mentah Objek OLE menggunakan metode [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Sisipkan Objek OLE sebagai Ikon

OLE objek juga dapat disisipkan ke dalam dokumen sebagai gambar.

Contoh kode berikut menunjukkan cara menyisipkan Objek OLE sebagai ikon. Untuk tujuan ini, kelas **DocumentBuilder** mengekspos metode [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Contoh kode berikut menunjukkan cara menyisipkan objek OLE yang disematkan sebagai ikon dari aliran ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Sisipkan Video Daring

Video online dapat disisipkan ke dalam dokumen Word dari tab *"Insert" > "Online Video"*. Anda dapat menyisipkan video online ke dalam dokumen di lokasi saat ini dengan memanggil metode [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

Kelas [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) memperkenalkan empat kelebihan metode ini. Yang pertama berfungsi dengan sumber daya video paling populer dan mengambil `URL` video sebagai parameter. Misalnya, kelebihan beban pertama mendukung penyisipan sederhana video online dari [YouTube](https://www.youtube.com/) dan [Vimeo](https://vimeo.com/) sumber daya.

Contoh kode berikut menunjukkan cara menyisipkan video online dari *Vimeo* ke dalam dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Kelebihan beban kedua berfungsi dengan semua sumber daya video lainnya dan menggunakan kode HTML yang disematkan sebagai parameter. Kode HTML untuk menyematkan video dapat bervariasi tergantung pada penyedianya, jadi hubungi penyedia masing-masing untuk detailnya.

{{% alert color="primary" %}}

Harap dicatat bahwa dokumen akan dioptimalkan secara otomatis untuk MS Word 2013 untuk menampilkan video.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menyisipkan video online ke dalam dokumen menggunakan kode HTML tersebut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
