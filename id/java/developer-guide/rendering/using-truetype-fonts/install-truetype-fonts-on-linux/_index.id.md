---
title: Instal Font TrueType pada Linux dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Instal Font TrueTypepada Linux
linktitle: Instal Font TrueTypepada Linux
description: "Aspose.Words untuk Java memungkinkan rendering dokumen yang dibuat menggunakan Microsoft Word pada mesin Linux dengan akurasi terbaik."
type: docs
weight: 20
url: /id/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Paling sering, Anda akan menggunakan Aspose.Words untuk mengonversi dokumen DOC atau DOCX ke format PDF. Jika Anda perlu melakukan ini pada mesin Linux, topik ini akan membantu Anda mempelajari cara memastikan Aspose.Words merender dokumen Anda dengan akurasi terbaik.

Paling sering, dokumen DOC dan DOCX, yang perlu dikonversi dibuat menggunakan Microsoft Word, pada sistem operasi Windows atau Mac OS. Oleh karena itu, sebagian besar font yang digunakan dalam dokumen DOC dan DOCX adalah "fontWindows "atau" Font Office", yaitu font yang diinstal dengan Microsoft Windows atau Microsoft Office. Font-font ini termasuk Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings, dan banyak lainnya.

Masalahnya adalah font `TrueType` yang tercantum di atas tidak diinstal secara default pada distribusi Linux. Jika Anda mengambil dokumen tipikal DOCX yang diformat dengan font Cambria dan mencoba mengonversinya ke format PDF pada Linux, Aspose.Words akan menggunakan font yang berbeda karena Cambria tidak tersedia. Hasilnya, dokumen PDF akan terlihat berbeda, dibandingkan dengan dokumen DOCX asli. Untuk memastikan bahwa dokumen yang dikonversi oleh Aspose.Words tampak sedekat mungkin dengan aslinya, Anda perlu menginstal "Windows fonts " pada sistem Linux Anda.

Ada dua cara utama untuk mendapatkan font TrueType pada sistem Linux:

- Dimengerti .TTF dan .TTC file dari mesin Windows ke mesin Linux Anda
- Instal paket font `TrueType`, seperti *msttcorefonts*

## Menyalin Font dari Mesin Windows

Cara mudah dan cepat untuk mendapatkan TrueType font pada sistem Linux adalah dengan menyalin .TTF dan .TTC file dari direktori `C:\Windows\Fonts` di mesin Windows ke beberapa direktori di mesin Linux Anda. Anda tidak perlu menginstal atau mendaftarkan font ini di Linux dengan cara apa pun; Anda hanya perlu menentukan lokasi font menggunakan kelas [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) di Aspose.Words.

{{% alert color="primary" %}}

Verifikasi apakah lisensi font diperlukan, dan baca EULA dengan cermat sebelum menginstal MS Font pada sistem operasi Linux apa pun.

{{% /alert %}}

## Instal Paket Font `TrueType`

Ada sejumlah paket Linux, yang berisi font Microsoft TrueType, yang dapat Anda unduh dan instal ke mesin Linux Anda. Langkah-langkah yang tepat mungkin berbeda pada berbagai distribusi Linux.

- Pada Ubuntu, gunakan Manajer Paket Synaptic untuk menemukan dan menginstal paket *ttf-mscorefonts-installer*.
- Pada openSUSE, gunakan Manajemen Perangkat Lunak Yast2 → untuk menemukan dan menginstal paket *fetchmsttfonts*.
- Gunakan Font Liberation yang dilisensikan di bawah OFL, sebagai alternatif font Windows standar: Arial, Times New Roman, dan Courier New.
- Untuk paket font yang sesuai dengan distribusi Linux lainnya, cari dokumentasi yang tersedia di internet.

Setelah menginstal paket, Aspose.Words akan menemukan font ini di folder di sistem Anda dan menggunakannya saat bekerja dengan dokumen.

## Lihat Juga

- [Font Penyebasan](https://github.com/liberationfonts) sebagai alternatif dari font Windows standar
