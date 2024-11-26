---
title: FIPS Modus
second_title: Aspose.Words untuk Java
articleTitle: FIPS Modus
linktitle: FIPS Modus
description: "Aspose.Words untuk Java menggunakan beberapa algoritma kriptografi dan hash saat memproses dokumen untuk memenuhi standar FIPS."
type: docs
weight: 80
url: /id/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words menggunakan beberapa algoritma kriptografi dan hash saat memproses dokumen dan artikel ini menjelaskan bagaimana hal itu terkait dengan standar FIPS.

Standar Pemrosesan Informasi Federal (FIPS) adalah seperangkat standar yang diterbitkan secara terbuka yang dikembangkan oleh pemerintah federal Amerika Serikat untuk menetapkan persyaratan untuk berbagai tujuan, seperti memastikan keamanan komputer dan interoperabilitas.

## BouncyCastle untuk Menyelamatkan

Aspose.Words untuk Java dan Aspose.Words untuk Android gunakan Kastil Goyang FIPS JAR untuk enkripsi, dekripsi, dan penandatanganan dokumen. JAR telah dirancang dan diimplementasikan untuk memenuhi persyaratan FIPS 140-2, Level 1.

FIPS 140-2 adalah standar keamanan komputer pemerintah AS yang digunakan untuk menyetujui modul kriptografi. Standar ini menetapkan persyaratan keamanan yang akan dipenuhi oleh modul kriptografi dan memberikan tingkat keamanan tinggi yang dimaksudkan untuk mencakup berbagai aplikasi dan lingkungan potensial. Untuk detail lebih lanjut tentang FIPS 140-2, lihat [NIST publikasi](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words untuk .NET menggunakan versi Kastil Goyang umum tanpa dukungan untuk FIPS.

## FIPS Aktivasi Mode

Mulai dari versi 18.10 Aspose.Words memungkinkan untuk bekerja dalam dua mode: Umum dan FIPS.

Secara default Aspose.Words berfungsi dalam mode Umum, jadi tidak ada batasan penggunaan algoritme dan kunci dalam kasus ini.

Anda dapat mengalihkan Aspose.Words dari mode Umum ke mode FIPS menggunakan metode berikut:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Untuk alasan keamanan, Anda tidak dapat mengubah mode kembali ke Umum saat runtime.

Perhatikan juga bahwa Aspose.Words tidak dapat secara otomatis mengenali apakah sistem operasi Anda dalam mode FIPS, oleh karena itu Anda harus mengganti mode Aspose.Words ke FIPS secara eksplisit.

Gunakan metode berikut untuk memastikan Aspose.Words untuk Java berada dalam mode FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Saat mode FIPS aktif, Aspose Words akan mencegah Anda menggunakan beberapa algoritme kriptografi dan kunci dengan panjang yang tidak disetujui.

Misalnya, saat mencoba membuka dokumen terenkripsi ODT saat mode FIPS aktif, Anda mungkin melihat pengecualian berikut:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: Upaya untuk membuka file ODT yang menggunakan algoritma Blowfish. Algoritme ini tidak ada dalam daftar algoritme yang disetujui FIPS.

{{% /alert %}}

Ini terjadi karena algoritme Blowfish tidak ada dalam daftar algoritme yang disetujui FIPS.

Pengecualian serupa dapat terjadi jika kunci dengan panjang yang tidak sesuai digunakan:

UnapprovedSecurityOperationException: Anda tidak dapat menggunakan kunci dengan ukuran 1024 untuk RSA dalam mode FIPS.

Untuk detail selengkapnya tentang daftar algoritme yang disetujui, lihat [BouncyCastle Panduan Pengguna](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Algoritma Sandi (Simetris)".


