---
title: Mode FIPS
second_title: Aspose.Words Sitemap Java
articleTitle: Mode FIPS
linktitle: Mode FIPS
description: "Aspose.Words Sitemap Java menggunakan beberapa algoritma kriptografi dan hash saat memproses dokumen sesuai dengan standar FIPS."
type: docs
weight: 80
url: /id/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words menggunakan beberapa algoritma kriptografi dan hash ketika memproses dokumen dan artikel ini menjelaskan bagaimana hal ini terkait dengan standar FIPS.

Standar Pengolahan Informasi Federal (FIPS) adalah seperangkat standar yang dipublikasikan secara terbuka yang dikembangkan oleh pemerintah federal Amerika Serikat untuk menetapkan persyaratan untuk berbagai tujuan, seperti memastikan keamanan komputer dan interoperabilitas.

## BouncyCastle untuk Penyelamatan

Aspose.Words Sitemap Java Login Aspose.Words Sitemap Android menggunakan Bouncy Castle FIPS JAR untuk enkripsi, dekripsi dan menandatangani dokumen. Login JAR telah dirancang dan diterapkan untuk memenuhi persyaratan FIPS 140-2, Tingkat 1.

FIPS 140-2 adalah standar keamanan komputer pemerintah AS yang digunakan untuk menyetujui modul kriptografi. Standar ini menentukan persyaratan keamanan yang akan dipenuhi oleh modul kriptografi dan memberikan tingkat keamanan tinggi yang dimaksudkan untuk mencakup berbagai aplikasi dan lingkungan potensial. Untuk detail lebih lanjut tentang FIPS 140-2, lihat [Database](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003)Sitemap

Aspose.Words Sitemap .NET menggunakan versi Bouncy Castle umum tanpa dukungan untuk FIPS.

## Aktivasi Mode FIPS

Mulai dari versi 18.10 Aspose.Words memungkinkan untuk bekerja dalam dua mode: Umum dan FIPS.

Sitemap Aspose.Words bekerja dalam mode Umum, sehingga tidak ada batasan penggunaan algoritma dan kunci dalam kasus ini.

Anda dapat beralih Aspose.Words dari mode Umum ke mode FIPS menggunakan metode berikut:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Untuk alasan keamanan Anda tidak dapat mengubah mode kembali ke General pada runtime.

Login Aspose.Words tidak dapat secara otomatis mengenali apakah sistem operasi Anda dalam mode FIPS, oleh karena itu Anda harus beralih Aspose.Words untuk mode FIPS secara eksplisit

Gunakan metode berikut untuk memastikan Aspose.Words Sitemap Java dalam mode FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Ketika mode FIPS ada di, Aspose Words akan mencegah Anda menggunakan beberapa algoritma kriptografi dan kunci dengan panjang yang tidak disetujui.

Misalnya, ketika mencoba membuka dokumen terenkripsi ODT saat mode FIPS aktif, Anda dapat melihat pengecualian berikut:

{{% alert color="primary" %}}

Keamanan yang tidak disetujui Kecuali: Upaya membuka file ODT yang menggunakan algoritma Blowfish. Algoritma ini bukan pada daftar algoritma FIPS-approved.

{{% /alert %}}

Ini terjadi karena algoritma Blowfish tidak pada daftar algoritma yang disetujui FIPS.

Pengecualian serupa dapat terjadi jika kunci panjang yang tidak pantas digunakan:

Keamanan yang tidak disetujui Kecuali: Anda tidak dapat menggunakan kunci dengan ukuran 1024 untuk RSA dalam mode FIPS.

Untuk detail lebih lanjut tentang daftar algoritma yang disetujui, lihat [Login](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms"


