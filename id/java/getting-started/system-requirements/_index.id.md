---
title: Persyaratan Sistem
second_title: Aspose.Words untuk Java
articleTitle: Persyaratan Sistem
linktitle: Persyaratan Sistem
description: "Sebelum Anda mulai bekerja dengan Aspose.Words untuk Java, pastikan Anda memenuhi persyaratan sistem operasi, platform, kerangka kerja, dan lingkungan sehingga aktivitas di perangkat Anda diperhitungkan dengan benar."
type: docs
weight: 80
url: /id/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words untuk Java tidak memerlukan produk pihak ketiga seperti Microsoft Word untuk diinstal. Aspose.Words sendiri merupakan mesin untuk membuat, memodifikasi, mengonversi, dan merender dokumen dalam berbagai format, termasuk format dokumen Microsoft Word.

## Sistem Operasi yang Didukung

Sistem Operasi apa pun yang dapat menjalankan Lingkungan Runtime Java (JRE) dapat menjalankan Aspose.Words untuk Java. Tabel berikut mencantumkan sebagian besar, tetapi tidak semua, Sistem Operasi yang didukung.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistem Operasi</td>
			<td style="font-weight: bold; width:400px">Versi</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>dan lainnya</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS versi 10.9 (Mavericks) dan yang lebih baru</li></ul></td>
		</tr>
  <tr>
			<td>Mobil</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Platform Cloud yang Didukung

Aspose.Words untuk Java mendukung platform cloud apa pun yang dapat menjalankan aplikasi Java.

## Versi Java yang Didukung

Aspose.Words untuk Java mendukung Java 7 dan yang lebih baru. Jika Anda terpaksa menggunakan Java 6, kami masih merilis JAR terpisah untuk Java 6.


## Dependensi Opsional

Seperti yang kami nyatakan di atas, Aspose.Words untuk Java memerlukan *only* Lingkungan Runtime Java, dan Anda tidak perlu menginstal pustaka tambahan apa pun.

Namun, terkadang ada situasi di mana Anda mungkin perlu menambahkan pustaka pihak ketiga:

- Pustaka JogAmp JOGL untuk rendering OpenGL yang dipercepat perangkat keras. Pustaka disertakan dalam file aspose-words POM sebagai ketergantungan eksternal. Anda dapat mengedit file POM untuk menyimpan stoples JOGL yang hanya diperlukan untuk platform Anda. Atau Anda dapat menghapus ketergantungan jika Anda tidak memerlukan rendering OpenGL yang dipercepat perangkat keras.
- HarfBuzz mesin fonta. Ini sudah termasuk dalam JRE 9 dan yang lebih baru. Jika Anda menggunakan JRE 8 atau lebih lama, Anda dapat menggunakan ketergantungan shaping-harfbuzz-plugin di file POM kami. Jika tidak, Anda dapat menghapus ketergantungan.
- Java Pencitraan Lanjutan (JAI) untuk mendukung gambar TIFF. TIFF gambar tidak didukung oleh Java 8 dan yang lebih lama. Untuk dukungan TIFF di lingkungan Java lama, Aspose.Words untuk Java bergantung pada [Java Paket Pencitraan Lanjutan (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) dari Oracle. Kami akan menjelaskan cara menginstal JAI di bawah ini.

### Cara Memasang JAI di Windows

Ikuti langkah-langkah berikut untuk menginstal JAI dan ImageIO asli di Windows:

1. Unduh **JAI 1.1.3**.
   Pada saat penulisan, hanya penginstal versi 32-bit yang tersedia, jadi jika Anda menggunakan JDK, Anda perlu mengunduh [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) dan jika Anda menggunakan JRE, Anda perlu mengunduh [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Jalankan penginstal dan arahkan ke direktori tempatJDK/JRE diinstal.
1. Unduh **JAI Image I/O 1.1**.
   Pada saat penulisan, hanya penginstal versi 32-bit yang tersedia, jadi jika Anda menggunakan JDK, Anda perlu mengunduh [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) dan jika Anda menggunakan JRE, Anda perlu mengunduh [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Jalankan penginstal dan arahkan ke direktori tempatJDK/JRE diinstal.

### Cara Memasang JAI di Linux

Ikuti langkah-langkah berikut untuk menginstal JAI dan ImageIO asli di Linux:

1. Unduh **JAI 1.1.3** memilih arsitektur yang sesuai:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) untuk sistem 32-bit
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) untuk yang 64-bit (meskipun menggunakan prosesor Intel)
1. Ekstrak file ke direktori sementara.
1. Pindahkan berkas JAR ke JDK/JRE **lib/ext** map.
1. Pindahkan berkas SO ke JDK/JRE **lib/amd64** map.<br>

   Misalnya, pada sistem Ubuntu 64-bit, langkah 1-4 akan terlihat seperti ini:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Unduh **JAI Image I/O 1.1**, pilih arsitektur yang sesuai:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) untuk sistem 32-bit
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) untuk yang 64-bit (meskipun menggunakan prosesor Intel)
1. Ekstrak file ke direktori sementara.
1. Pindahkan berkas JAR ke JDK/JRE **lib/ext** map.
1. Pindahkan berkas SO ke JDK/JRE **lib/amd64** map.<br>

   Misalnya, pada sistem Ubuntu 64-bit, langkah 5-8 akan terlihat seperti ini:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Folder untuk File Sementara

Aspose.Words untuk Java menggunakan direktori sementara di komputer Anda, yang ditentukan melalui properti sistem `java.io.tmpdir`. Aspose.Words untuk Java menulis file sementara dan kemudian menghapus file tersebut segera setelah rendering selesai.

`java.io.tmpdir` adalah properti sistem Java standar yang juga digunakan oleh kebijakan penyimpanan berbasis disk. Ini menentukan di mana JVM menulis file sementara.
