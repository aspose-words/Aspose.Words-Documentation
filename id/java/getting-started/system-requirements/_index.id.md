---
title: Persyaratan Sistem
second_title: Aspose.Words Sitemap Java
articleTitle: Persyaratan Sistem
linktitle: Persyaratan Sistem
description: "Sebelum Anda mulai bekerja dengan Aspose.Words Sitemap Java, memastikan bahwa Anda memenuhi sistem operasi, platform, kerangka, dan persyaratan lingkungan sehingga aktivitas di perangkat Anda di akuntansi dengan benar."
type: docs
weight: 80
url: /id/java/system-requirements/
---

Aspose.Words Sitemap Java tidak memerlukan produk pihak ketiga seperti Meme it Microsoft Word dipasang. Aspose.Words sendiri adalah mesin untuk membuat, memodifikasi, mengkonversi, dan rendering dokumen dalam berbagai format, termasuk Microsoft Word format dokumen.

## Sistem Operasi yang Didukung

Setiap Sistem Operasi yang dapat menjalankan Java Lingkungan Runtime (JRE) dapat berjalan Aspose.Words Sitemap JavaSitemap Daftar tabel berikut paling, tetapi tidak semua, didukung Sistem Operasi.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Sistem Operasi</td>
			<td style="font-weight: bold; width:400px">Sitemap</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows Sitemap Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows Sitemap Server (x64, x86)</li><li>Windows Sitemap R2 Server (x64, x86)</li><li>Windows Sitemap Server (x64, x86)</li><li>Windows Sitemap Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>Login</li><li>CentOS</li><li>dan lain-lain</li></ul></td>
		</tr>
  <tr>
			<td>Login</td>
			<td><ul><li>versi macOS 10.9 (Mavericks) dan kemudian</li></ul></td>
		</tr>
  <tr>
			<td>Mobil</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Platform Cloud yang Didukung

Aspose.Words Sitemap Java mendukung platform cloud yang dapat dijalankan Java Sitemap

## Sitemap Java Sitemap

Aspose.Words Sitemap Java Login Java 7 dan lebih baru. Jika Anda dipaksa untuk digunakan Java 6, kita masih melepaskan terpisah JAR Sitemap Java 6. Juni


## Ketergantungan opsional

Seperti yang disebutkan di atas, Aspose.Words Sitemap Java Login *only* Login Java Lingkungan Runtime, dan Anda tidak perlu menginstal perpustakaan tambahan.

Namun, kadang-kadang ada situasi di mana Anda mungkin perlu menambahkan perpustakaan pihak ketiga:

- Login JogAmp JOGL perpustakaan untuk perangkat keras mempercepat rendering OpenGL. Perpustakaan disertakan dalam pedang POM file sebagai ketergantungan eksternal. Anda dapat mengedit POM file untuk melestarikan jar JOGL yang diperlukan untuk platform Anda saja. Atau Anda dapat menghapus ketergantungan jika Anda tidak perlu hardware mempercepat rendering OpenGL.
- Login HarfBuzz mesin font. Sudah dimasukkan ke dalam JRE 9 dan lebih baru. Jika Anda menggunakan JRE 8 atau lebih tua, Anda dapat menggunakan ketergantungan shaping-harfbuzz-plugin di kami POM Login Jika tidak, Anda dapat menghapus ketergantungan.
- Login Java Advanced Imaging (JAI) untuk mendukung gambar TIFF. Gambar TIFF tidak didukung oleh Java 8 dan lebih tua. Untuk dukungan TIFF lama Java lingkungan, Aspose.Words Sitemap Java tergantung pada [Java Advanced Imaging (JAI) Login](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) Sitemap OracleSitemap Kami akan menjelaskan cara menginstal JAI di bawah ini.

### Cara Menginstal JAI di Windows

Ikuti langkah-langkah ini untuk menginstal JAI asli dan ImageIO Sitemap WindowsSitemap

1. Unduh **JAI 1.1.3**Sitemap
   Pada saat penulisan, hanya versi 32-bit dari installer tersedia, jadi jika Anda menggunakan JDK Anda perlu mengunduh [WordPress.org](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) dan jika Anda menggunakan JRE Anda perlu mengunduh [WordPress.org](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe)Sitemap
Sitemap Jalankan installer dan arahkan ke direktori di mana JDK/JRE dipasang.
1. Unduh **Gambar JAI I / O 1.1**Sitemap
   Pada saat penulisan, hanya versi 32-bit dari installer tersedia, jadi jika Anda menggunakan JDK Anda perlu mengunduh [WordPress.org](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) dan jika Anda menggunakan JRE Anda perlu mengunduh [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
Sitemap Jalankan installer dan arahkan ke direktori di mana JDK/JRE dipasang.

### Cara Menginstal JAI di Linux

Ikuti langkah-langkah ini untuk menginstal JAI asli dan ImageIO Sitemap LinuxSitemap

1. Unduh **JAI 1.1.3** memilih arsitektur yang tepat:
   Sitemap [g](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) untuk sistem 32-bit
   Sitemap [Login](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) untuk prosesor Intel 64-bit (bahkan jika menggunakan prosesor Intel)
Sitemap Ekstrak file ke direktori sementara.
Sitemap Login JAR file ke JDK/JRE **lib/ext** folder.
Sitemap Pindahkan file SO ke JDK / JRE **lib/amd64** folder.<br/>

   Misalnya, pada 64-bit Ubuntu sistem, langkah 1-4 akan terlihat seperti ini:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Unduh **Gambar JAI I / O 1.1**, memilih arsitektur yang tepat:
   Sitemap [g](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) untuk sistem 32-bit
   Sitemap [Login](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) untuk yang 64-bit (bahkan jika menggunakan prosesor Intel)
Sitemap Ekstrak file ke direktori sementara.
Sitemap Login JAR file ke JDK/JRE **lib/ext** folder.
Sitemap Pindahkan file SO ke JDK / JRE **lib/amd64** folder.<br/>

   Misalnya, pada 64-bit Ubuntu sistem, langkah 5-8 akan terlihat seperti ini:<br/>
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

Aspose.Words Sitemap Java menggunakan direktori sementara di komputer Anda, yang ditentukan melalui `java.io.tmpdir` properti sistem. Aspose.Words Sitemap Java menulis file sementara dan kemudian menghapus file ini segera setelah rendering selesai.

`java.io.tmpdir` adalah standar Java properti sistem yang juga digunakan oleh kebijakan penyimpanan berbasis disk. Itu menentukan di mana JVM menulis file sementara.
