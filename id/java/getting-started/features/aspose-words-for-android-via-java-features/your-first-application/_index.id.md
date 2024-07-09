---
title: Aplikasi Pertama Anda untuk Android Sitemap Java
second_title: Aspose.Words Sitemap Java
articleTitle: Aplikasi Pertama Anda
linktitle: Aplikasi Pertama Anda
description: "Login Aspose.Words Sitemap Android Sitemap JavaSitemap"
type: docs
weight: 30
url: /id/java/your-first-application/
---

Artikel ini memberi Anda ide untuk memulai dengan Aspose.Words Sitemap Android Sitemap JavaSitemap Ini akan menunjukkan cara mengatur baru Android proyek dari awal, tambahkan referensi ke Aspose.Words JAR dan membuat dokumen baru yang disimpan untuk disk dalam format DOCX. Contoh ini menggunakan [Android Login](https://developer.android.com/studio/index.html) untuk pengembangan dan aplikasi dijalankan pada Android Login Untuk memulai Aspose.Words Sitemap Android Sitemap Java, ikuti tutorial langkah demi langkah ini untuk membuat aplikasi yang menggunakan Aspose.Words Sitemap Android Sitemap JavaSitemap

Sitemap Unduh dan [Android Login](https://developer.android.com/studio/index.html) dan instal ke lokasi apa pun.
Sitemap Login Android Login
Sitemap Buat baru Android Proyek Aplikasi.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copy aspose-words-17.5-android.via.java.jar ke dalam libs/folder proyek Anda<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
Sitemap Pilih Bagian Proyek (dari menu file dan klik pada tab Dependencies.
   1. Klik pada tombol "+", pilih opsi ketergantungan file.
   1. Pilih Aspose.Words perpustakaan dari folder libs dan klik OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
Sitemap Sinkronkan proyek dengan file Gradle jika diperlukan<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
Sitemap Untuk mengakses izin khusus SDcard harus ditambahkan. Klik pada Androidfile Manifest.xml dan pilih tampilan XML. Tambahkan baris berikut ke file <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
Sitemap Navigasi kembali ke bagian kode aplikasi dan tambahkan impor berikut:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
Dan kemudian masukkan kode berikut dalam tubuh metode onCreate untuk membuat dokumen baru dari awal menggunakan Aspose.Words,
masukkan beberapa teks dan simpan ke SDCard dalam format DOCX.<br/>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br/>
Kode penuh harus terlihat seperti ini:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
Sitemap Sekarang menjalankan aplikasi lagi. Kali ini Aspose.Words kode akan berjalan di latar belakang dan menghasilkan dokumen yang disimpan ke SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
Sitemap Untuk melihat dokumen yang dibuat menavigasi ke menu Alat kemudian pilih Android dan pilih Android Monitor Perangkat<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
Sitemap Gunakan pemirsa default untuk membuka dokumen. Output yang dihasilkan oleh aplikasi hanya dengan beberapa baris kode terlihat seperti ini:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)