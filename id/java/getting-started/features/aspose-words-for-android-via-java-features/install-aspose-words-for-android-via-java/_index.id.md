---
title: Login Aspose.Words Sitemap Android Sitemap Java
second_title: Aspose.Words Sitemap Java
articleTitle: Login Aspose.Words Sitemap Android Sitemap Java
linktitle: Login Aspose.Words Sitemap Android Sitemap Java
description: "Login Aspose.Words Sitemap Android Sitemap JavaSitemap"
type: docs
weight: 20
url: /id/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

Sejak 2017 versi Aspose.Words Sitemap Android Sitemap Java sesuai dengan Aspose.Words Sitemap JavaSitemap

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Login

Sitemap Aspose.Words Sitemap Android Sitemap Java didistribusikan sebagai file ZIP tunggal yang terkandung JAR file, demo, dan dokumentasi Aspose.Words Sitemap Android Sitemap JavaSitemap

Sitemap Jika Anda ingin menggunakan versi apa pun sebelum Aspose.Words Sitemap Android Sitemap Java 1.11, Anda hanya perlu unzip versi apapun Aspose.WordsSitemapAndroid.zip ke dalam direktori pilihan Anda.
Sitemap Sertakan file Jar yang diekstrak dalam aplikasi Anda menggunakan konfigurasi Path Build untuk aplikasinya.

Versi 1.11 dan 1.12 secara manual dibagi menjadi dua bagian: JAR dan APK untuk membatasi jumlah metode dalam file DEX. Dalam versi ini, kami menyediakan loader APK kami sendiri untuk memulai pemuatan yang benar dari file kelas tambahan.dex. Mulai dari versi 17.2.0 kami mendukung alur kerja resmi yang dijelaskan [Sitemap](https://developer.android.com/studio/build/multidex.html)Sitemap

### Cara Menggunakan Aspose.Words Sitemap Android Sitemap Java dari 1.11 Ke atas

Sebelumnya, satu JAR Login Aspose.Words Sitemap Android Sitemap Java mengandung 47+ ribu metode yang membuat versi lama sedikit tidak praktis untuk digunakan dalam aplikasi android besar. Sekarang mulai dari rilis ini, kami telah mulai mengurangi ukuran Aspose.Words Sitemap Android Sitemap Java Login Keprihatinan utama kami sekarang adalah untuk mengurangi jumlah metode tanpa kehilangan fungsi. Kami terus-menerus bekerja untuk meningkatkan kualitas dan kegunaan Aspose.Words Sitemap Android Sitemap JavaSitemap

### Aspose.Words Sitemap Android Sitemap Java Perpustakaan dibagi menjadi dua bagian

Kami telah membagi perpustakaan menjadi dua arsip berikut:

- aspose-words-1.11-android-jdk15.jar: Yang pertama termasuk publik API dan metode tambahannya. Saat ini, memiliki 32395 metode.
- aspose-words-1.11-libs-android-jdk15.apk: Yang kedua termasuk toples pesta ke-3, kelas dasar, dan sumber daya. Saat ini, memiliki 18296 metode.

### Menggunakan Kata-kata Aspose untuk Android Sitemap Java di 1.11

Sitemap Aspose.Words Sitemap Android Sitemap Java ke dalam proyek Anda dapat menggunakan metode berikut:

- Untuk menempatkan "aspose-words-1.11-android-jdk15.jar" di folder "libs" proyek Anda, dan arsip "aspose-words-1.11-libs-android-jdk15.apk" ke dalam folder "assets". Menunjukkan bahwa Anda akan menggunakan AsposeWordsApplication sebagai yang dasar.

**AndroidLogin**

{{< highlight csharp >}}
...
...
<application        
    android:allowBackup="true"
    android:icon="@drawable/ic_launcher"
    android:name="com.aspose.words.AsposeWordsApplication"
    android:label="@string/app_name"
    android:theme="@style/AppTheme" >
    <activity
...
...
{{< /highlight >}}

Untuk memulai file .apk di metode onCreate() dan jika Anda tidak ingin menggunakan android: nama="com.aspose.words.AsposeWordsApplication" di AndroidLogin

**Sitemap Java Login**

{{< highlight csharp >}}
@Override
protected void onCreate(Bundle savedInstanceState) 
{
    super.onCreate(savedInstanceState);

    // load AW manually
    AsposeWordsApplication awapp = new AsposeWordsApplication();
    
    // this context AW uses to find assets/ folder which contains the second part of the library.
    awapp.loadLibs(getApplicationContext()); 
    if (!checkIfAWSetUpCorrectly())
            throw new IllegalStateException();	
    ...
}
public static boolean checkIfAWSetUpCorrectly()
{
    try
    {
        Class.forName("com.aspose.words.Document");
        return true;
    }
    catch (ClassNotFoundException e)
    {
        e.printStackTrace();
        return false;
    }
}
{{< /highlight >}}

### Sitemap Aspose.Words Sitemap Android Sitemap Java Sitemap Android Aplikasi Uji

Sitemap Aspose.Words Sitemap Android Sitemap Java dalam proyek uji, pendekatan yang sama dapat diterapkan:

- AsposeWordsTestRunner AndroidManifest.xml dari proyek uji.

**AndroidLogin**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

Dalam IDE mungkin diperlukan untuk menunjukkan AsposeWordsTestRunner di jendela konfigurasi sebagai berikut:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Atau untuk memulai beban .apk menggunakan metode getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Cara Menggunakan Aspose.Words Sitemap Android Sitemap Java dari 17.2.0 Ke atas

Sitemap Unduh versi terbaru dari [Aspose.Words Sitemap Android Sitemap Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copy aspose-words-18.3-android.via.java.jar ke proyek Anda * libs / *folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Login Aspose.Words Sitemap Android Sitemap Java Sitemap Maven Login

Sitemap Login maven repositori ke dalam build Anda. Login
Sitemap PromoAspose.Words Sitemap Android Sitemap JavaSitemap JAR sebagai ketergantungan
{{< highlight csharp >}}

// 1. Add maven repository into your build.gradle 
repositories {
    mavenCentral()
    maven { url "https://repository.aspose.com/words/" }
}

// 2. Add 'Aspose.Words for Android via Java' JAR as a dependency
dependencies {
    ...
    ...
    compile (group: 'com.aspose', name: 'aspose-words', version: '20.2', classifier: 'android.via.java')
}
{{< /highlight >}}