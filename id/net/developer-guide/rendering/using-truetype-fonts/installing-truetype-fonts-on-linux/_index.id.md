---
title: Instal TrueType Font di Linux di C#
second_title: Aspose.Words untuk .NET
articleTitle: Instal Font TrueType di Linux
linktitle: Instal Font TrueType di Linux
description: "Aspose.Words untuk .NET memungkinkan rendering dokumen yang dibuat menggunakan Microsoft Word pada mesin Linux dengan akurasi terbaik menggunakan C#. Untuk mencapai hal ini, salin file font dari mesin Windows atau Instal paket font `TrueType` ke mesin Linux Anda di C#."
type: docs
weight: 20
url: /id/net/installing-truetype-fonts-on-linux/
---

Paling sering, Anda akan menggunakan Aspose.Words untuk mengonversi dokumen DOC atau DOCX ke format PDF. Jika Anda perlu melakukan ini pada mesin Linux, topik ini akan membantu Anda mempelajari cara memastikan Aspose.Words merender dokumen Anda dengan akurasi terbaik.

Paling sering, dokumen DOC dan DOCX, yang perlu dikonversi dibuat menggunakan Microsoft Word, pada sistem operasi Windows atau Mac OS. Oleh karena itu, sebagian besar font yang digunakan dalam dokumen DOC dan DOCX adalah "font Windows" atau "font Office", yaitu font yang diinstal dengan Microsoft Windows atau Microsoft Office. Font tersebut antara lain Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings, dan masih banyak lainnya.

Masalahnya adalah font `TrueType` yang tercantum di atas tidak diinstal secara default pada distribusi Linux. Jika Anda mengambil dokumen DOCX biasa yang diformat dengan font Cambria dan mencoba mengonversinya ke format PDF pada Linux, Aspose.Words akan menggunakan font yang berbeda karena Cambria tidak tersedia. Hasilnya, dokumen PDF akan terlihat berbeda dibandingkan dengan dokumen DOCX asli. Untuk memastikan dokumen yang dikonversi oleh Aspose.Words tampak sedekat mungkin dengan aslinya, Anda perlu menginstal "font Windows" pada sistem Linux Anda.

Ada dua cara utama untuk mendapatkan font TrueType pada sistem Linux:

- Salin file .TTF dan .TTC dari mesin Windows ke mesin Linux Anda
- Instal paket font `TrueType`, seperti *msttcorefonts*

## Menyalin Font dari Mesin Windows

Cara mudah dan cepat untuk mendapatkan font TrueType di sistem Linux adalah dengan menyalin file .TTF dan .TTC dari direktori `C:\Windows\Fonts` di mesin Windows ke beberapa direktori di mesin Linux Anda. Anda tidak perlu menginstal atau mendaftarkan font-font ini di Linux dengan cara apa pun; Anda hanya perlu menentukan lokasi font menggunakan kelas [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) di Aspose.Words.

{{% alert color="primary" %}}

Verifikasi apakah lisensi font diperlukan, dan baca EULA dengan cermat sebelum menginstal MS Fonts pada sistem operasi Linux apa pun.

{{% /alert %}}

## Instal Paket Font `TrueType`

Ada sejumlah paket Linux, yang berisi font Microsoft TrueType, yang dapat Anda unduh dan instal ke mesin Linux Anda. Langkah pastinya mungkin berbeda di berbagai distribusi Linux.

- Di Ubuntu, gunakan Synaptic Package Manager untuk menemukan dan menginstal paket *ttf-mscorefonts-installer*.
- Di openSUSE, gunakan Yast2 → Manajemen Perangkat Lunak untuk menemukan dan menginstal paket *fetchmsttfonts*.
- Gunakan Font Pembebasan yang dilisensikan di bawah OFL, sebagai alternatif font Windows standar: Arial, Times New Roman, dan Courier New.
- Untuk paket font yang sesuai dengan distribusi Linux lainnya, cari dokumentasi yang tersedia di internet.

Setelah menginstal paket, Aspose.Words akan menemukan font-font ini di folder di sistem Anda dan menggunakannya saat bekerja dengan dokumen.

## Lihat juga

- [Font Pembebasan](https://github.com/liberationfonts) sebagai alternatif font Windows standar
