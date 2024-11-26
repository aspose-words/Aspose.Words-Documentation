---
title: Instal Aspose.Words untuk Android melalui Java
second_title: Aspose.Words untuk Java
articleTitle: Instal Aspose.Words untuk Android melalui Java
linktitle: Instal Aspose.Words untuk Android melalui Java
description: "Menginstal Aspose.Words untuk Android melalui Java."
type: docs
weight: 20
url: /id/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Sejak 2017, versi Aspose.Words untuk Android melalui Java sesuai dengan Aspose.Words untuk Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalasi

Sebelumnya, Aspose.Words untuk Android melalui Java didistribusikan sebagai satu file ZIP yang berisi file JAR, demo, dan dokumentasi Aspose.Words untuk Android melalui Java.

1. Jika Anda ingin menggunakan versi apa pun sebelum Aspose.Words untuk Android melalui Java 1.11, Anda hanya perlu mengekstrak versi apa pun dari Aspose.Words.Android.zip ke dalam direktori pilihan Anda.
1. Sertakan file Jar yang diekstraksi dalam aplikasi Anda menggunakan konfigurasi Jalur Build untuk aplikasinya.

Versi 1.11 dan 1.12 secara manual dibagi menjadi dua bagian: JAR dan APK untuk membatasi jumlah metode dalam file DEX. Dalam versi ini, kami menyediakan pemuat APK kami sendiri untuk memulai pemuatan kelas tambahan yang benar.berkas dex. Mulai dari versi 17.2.0 kami mendukung alur kerja resmi yang dijelaskan [di sini](https://developer.android.com/studio/build/multidex.html).

### Cara Menggunakan Aspose.Words untuk Android melalui Java dari 1.11 Dan Seterusnya

Sebelumnya, satu JAR dari Aspose.Words untuk Android melalui Java berisi 47 + ribu metode yang membuat versi lama sedikit tidak praktis untuk digunakan dalam aplikasi android yang besar. Sekarang mulai dari rilis ini, kami telah mulai mengurangi ukuran Aspose.Words untuk Android melalui pustaka Java. Perhatian utama kami sekarang adalah mengurangi jumlah metode tanpa kehilangan fungsionalitas. Kami terus berupaya meningkatkan kualitas dan kegunaan Aspose.Words untuk Android melalui Java.

### Aspose.Words untuk Android melalui Perpustakaan Java Dibagi menjadi Dua Bagian

Kami telah membagi perpustakaan menjadi dua arsip berikut:

- aspose-words-1.11-android-jdk15.jar: Yang pertama menyertakan public API dan metode tambahannya. Saat ini, ia memiliki 32395 metode.
- aspose-words-1.11-libs-android-jdk15.apk: Yang kedua mencakup toples pihak ke-3, kelas dasar, dan sumber daya. Saat ini, ia memiliki 18296 metode.

### Menggunakan Kata Aspose untuk Android melalui Java sejak 1.11

Untuk memasukkan Aspose.Words untuk Android melalui Java ke dalam proyek, Anda dapat menggunakan salah satu metode berikut:

- Untuk menempatkan "aspose-words-1.11-android-jdk15.jar" di folder "libs" proyek Anda, dan arsip "aspose-words-1.11-libs-android-jdk15.apk "ke dalam folder "aset". Tunjukkan bahwa Anda akan menggunakan AsposeWordsApplication sebagai yang dasar.

**AndroidManifest.xml**

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

Untuk memulai beban .file apk dalam metode onCreate () dan jika Anda tidak ingin menggunakan android:name="com.aspose.kata-kata.AsposeWordsApplication" dalam AndroidManifest.xml

**Berkas aktivitas Java**

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

### Menggunakan Aspose.Words untuk Android melalui Java dalam Aplikasi Pengujian Android

Untuk menggunakan Aspose.Words untuk Android melalui Java dalam proyek pengujian, pendekatan yang sama dapat diterapkan:

- Tunjukkan AsposeWordsTestRunner dalam AndroidManifest.xml dari proyek pengujian.

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

Dalam IDE mungkin perlu untuk menunjukkan AsposeWordsTestRunner di jendela konfigurasi sebagai berikut:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Atau untuk memulai beban .apk menggunakan metode getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Cara Menggunakan Aspose.Words untuk Android melalui Java dari 17.2.0 Dan Seterusnya

1. Unduh versi terbaru dari [Aspose.Words untuk Androidmelalui Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Salin aspose-words-18.3-android.via.java.jar ke dalam folder *libs/*proyek Anda
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Instal Aspose.Words untuk Android melalui Java dari Repositori Maven

1. Tambahkan repositori maven ke dalam build Anda.gradle
1. Tambahkan 'Aspose.Words untuk Android melalui Java' JAR sebagai ketergantungan
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
