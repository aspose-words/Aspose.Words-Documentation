---
title: Menginstal Benar Jenis Font pada Linux Sitemap Java
second_title: Aspose.Words Sitemap Java
articleTitle: Menginstal Benar Jenis Font pada Linux
linktitle: Menginstal Benar Jenis Font pada Linux
description: "Aspose.Words Sitemap Java memungkinkan rendering dokumen yang dibuat menggunakan Microsoft Word Sitemap Linux mesin dengan akurasi terbaik."
type: docs
weight: 20
url: /id/java/install-truetype-fonts-on-linux/
---

Paling sering, Anda akan menggunakan Aspose.Words untuk mengonversi dokumen DOC atau DOCX ke format PDF. Jika Anda perlu melakukan ini pada Meme it Linux mesin, topik ini akan membantu Anda untuk mempelajari cara memastikan Aspose.Words membuat dokumen Anda dengan akurasi terbaik.

Paling sering, dokumen DOC dan DOCX, yang perlu dikonversi dibuat Microsoft Word, Sitemap Windows atau sistem operasi Mac OS. Oleh karena itu, sebagian besar font yang digunakan dalam dokumen DOC dan DOCX adalah "Windows fonts" atau "font Office", yang merupakan font yang dipasang dengan Microsoft Windows Sitemap Microsoft Login Font ini termasuk Arial, Kalibri, Cambria, Century Gothic, Kourier Baru, Garamond, Tahoma, Verdana, Wingdings, dan banyak lainnya.

Masalahnya adalah bahwa `TrueType` font yang tercantum di atas tidak diinstal secara default Linux Sitemap Jika Anda mengambil dokumen DOCX khas yang diformat dengan font Cambria dan mencoba mengubahnya ke format PDF pada LinuxLogin Aspose.Words akan menggunakan font yang berbeda karena Cambria tidak tersedia. Sebagai hasilnya, dokumen PDF akan terlihat berbeda, dibandingkan dengan dokumen DOCX asli. Untuk memastikan bahwa dokumen yang dikonversi dengan Aspose.Words muncul sedekat mungkin dengan aslinya, Anda perlu menginstal "Windows fonts" pada Anda Linux sistem.

Ada dua cara utama untuk mendapatkan font TrueType di sebuah Linux sistem:

- Salin .TTF dan. TTC file dari Windows mesin ke Anda Linux mesin
- Login `TrueType` paket font, seperti *msttcorefonts*

## Menyalin Font dari Windows Login

Cara mudah dan cepat untuk mendapatkan font TrueType di sebuah Linux sistem adalah untuk menyalin. Login TTC file dari `C:\Windows\Fonts` katalog Windows mesin ke beberapa direktori pada Anda Linux mesin. Anda tidak perlu menginstal atau mendaftarkan font ini di Meme it Linux dengan cara apapun; Anda hanya perlu menentukan lokasi font menggunakan [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) kelas Aspose.WordsSitemap

{{% alert color="primary" %}}

Verifikasi apakah lisensi font diperlukan, dan membaca EULA dengan hati-hati sebelum menginstal MS Fonts pada setiap Linux sistem operasi.

{{% /alert %}}

## Login `TrueType` Paket Font

Ada sejumlah Linux paket, mengandung Microsoft Font TrueType, yang dapat Anda unduh dan instal ke Anda Linux mesin. Langkah yang tepat mungkin berbeda pada berbagai Linux Sitemap

- Sitemap Ubuntu, menggunakan Synaptic Package Manager untuk menemukan dan menginstal *ttf-mscorefonts-installer * paket.
- Pada openSUSE, gunakan Yast2 → Manajemen Perangkat Lunak untuk menemukan dan menginstal *fetchmsttfonts* Paket
- Gunakan Font Liberation berlisensi di bawah OFL, sebagai alternatif untuk standar Windows fonts: Arial, Kali Roma Baru, dan Kururier Baru.
- Untuk paket font yang cocok untuk lainnya Linux distribusi, mencari dokumentasi yang tersedia di internet.

Setelah menginstal paket, Aspose.Words akan menemukan font ini di folder pada sistem Anda dan menggunakannya ketika bekerja dengan dokumen.

## Lihat Juga

- Login [Login](https://github.com/liberationfonts) sebagai alternatif standar Windows Login
