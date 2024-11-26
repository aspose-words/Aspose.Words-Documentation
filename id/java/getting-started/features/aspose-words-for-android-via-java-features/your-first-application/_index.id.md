---
title: Permohonan Pertama Anda untuk Android melalui Java
second_title: Aspose.Words untuk Java
articleTitle: Aplikasi Pertama Anda
linktitle: Aplikasi Pertama Anda
description: "Menginstal Aspose.Words untuk Android melalui Java."
type: docs
weight: 30
url: /id/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Artikel ini memberi Anda gambaran tentang memulai dengan Aspose.Words untuk Android melalui Java. Ini akan mendemonstrasikan cara menyiapkan proyek Android baru dari awal, menambahkan referensi ke Aspose.Words JAR dan membuat dokumen baru yang disimpan ke disk dalam format DOCX. Contoh ini menggunakan [Android Studio](https://developer.android.com/studio/index.html) untuk pengembangan dan aplikasi dijalankan pada Emulator Android. Untuk memulai dengan Aspose.Words untuk Android melalui Java, ikuti tutorial langkah demi langkah ini untuk membuat aplikasi yang menggunakan Aspose.Words untuk Android melalui Java:

1. Download dan [Android Studio](https://developer.android.com/studio/index.html) dan instal ke lokasi mana pun.
1. Jalankan Studio Android.
1. Buat Proyek Aplikasi Android baru.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Salin aspose-words-17.5-android.via.java.jar ke dalam folder libs / proyek Anda<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Pilih Bagian Proyek (dari menu file dan klik tab Dependensi.
   1. Klik tombol "+", pilih opsi ketergantungan file.
   1. Pilih pustaka Aspose.Words dari folder libs dan klik OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sinkronkan proyek dengan file Gradle jika diperlukan<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Untuk mengakses SDcard izin khusus harus ditambahkan. Klik pada file AndroidManifest.xml dan pilih tampilan XML. Tambahkan baris berikut ke file <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Navigasikan kembali ke bagian kode aplikasi dan tambahkan impor berikut:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Dan kemudian masukkan kode berikut di badan metode onCreate untuk membuat dokumen baru dari awal menggunakan Aspose.Words,
sisipkan beberapa teks dan simpan ke SDCard dalam format DOCX.<br>
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
{{< /highlight >}}<br>
Kode lengkapnya akan terlihat seperti ini:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Sekarang jalankan aplikasi lagi. Kali ini kode Aspose.Words akan berjalan di latar belakang dan menghasilkan dokumen yang disimpan ke SDcard.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Untuk melihat dokumen yang dibuat navigasikan ke menu Alat lalu pilih Android dan pilih Android Monitor Perangkat<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Gunakan penampil default untuk membuka dokumen. Output yang dihasilkan oleh aplikasi hanya dengan beberapa baris kode terlihat seperti ini:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
