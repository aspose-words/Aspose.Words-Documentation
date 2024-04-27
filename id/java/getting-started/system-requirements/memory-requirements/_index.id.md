---
title: Persyaratan Memori
second_title: Aspose.Words Sitemap Java
articleTitle: Persyaratan Memori
linktitle: Persyaratan Memori
description: "Berapa banyak memori Aspose.Words Sitemap Java perlu bekerja dengan dokumen? Pelajari detailnya."
type: docs
weight: 10
url: /id/java/memory-requirements/
---

Aspose.Words menyediakan berbagai fitur untuk bekerja dengan dokumen dalam berbagai format. Penting untuk dicatat bahwa tidak ada batasan pada ukuran file dokumen maksimum Aspose.Words dapat memproses atau membuat. Satu-satunya batasan adalah jumlah RAM yang tersedia di sisi Anda.

## Berapa Banyak Memori Aspose.Words Login

Sitemap Aspose.Words membutuhkan beberapa kali lebih banyak memori daripada ukuran dokumen untuk membangun model dokumen dalam memori. Misalnya, jika ukuran dokumen Anda adalah 1 MB, Aspose.Words membutuhkan 10-20 MB RAM untuk membangun Document Object Model SitemapDOM) dalam memori. Multiplier tergantung pada format karena beberapa format lebih kompak daripada yang lain. Misalnya, DOCX lebih kompak daripada DOC dan RTF, dan DOC lebih kompak daripada RTF.

Tidak ada cara yang tepat untuk memperkirakan berapa banyak memori Aspose.Words sebenarnya mengkonsumsi selama memproses file dokumen tertentu. Seperti yang Anda ketahui Java menyimpan data dalam kelas, setiap instance kelas menggunakan beberapa memori untuk JVM SitemapJava mesin virtual) tujuan internal. Jadi setiap paragraf atau teks yang diformat (bahas terdiri dari satu karakter) mengambil beberapa memori tambahan setelah memuat ke DOMSitemap Sitemap Java mesin kolektor sampah menggunakan algoritma kompleks untuk menentukan waktu terbaik untuk melakukan pengumpulan memori, membuatnya sulit untuk menentukan konsumsi memori nyata.

## Cara Menghitung Jumlah Memori

Mari kita mempertimbangkan dua dokumen:

1. dokumen DOCX "A" - ukuran 0.35 MB (2 ribu halaman), teks hanya
2. dokumen DOCX "B" - ukuran 0.35 MB (hanya 1 halaman), dengan gambar PNG di dalam

Seperti yang Anda tahu, banyak format modern seperti DOCX, ODT, dll. arsip ZIP sederhana. Jadi, kita mendapatkan algoritma perhitungan berikut:
1. Unzipping. Unzipped dokumen "A" memiliki ukuran 20 MB, dokumen "B" memiliki ukuran 0.4 MB
2. di Memuat dokumen ke dalam model (membinanya Document Object Model Sitemap DOMSitemap
* Sitemap DOM dokumen pertama "A" membutuhkan ukuran 49 MB
* Sitemap DOM dokumen kedua "B" hanya membutuhkan ukuran 2 MB.
3. Juni Mengukur jumlah memori yang diperlukan untuk membuat dokumen ini ke PDF. Untuk operasi ini, Aspose.Words Sitemap
  * 294 MB untuk dokumen "A"
  * 7 MB untuk dokumen "B"

Jadi, seperti yang dapat Anda lihat, tidak ada ketergantungan linier pada ukuran dokumen input. Ada banyak faktor yang dapat mempengaruhi ukuran RAM yang diperlukan - format dokumen, kompleksitas dan strukturnya, jumlah gambar dan format mereka, dan banyak faktor lainnya.

## Cara Menghitung Memori Multiplier Kebanyakan Akurat

Percobaan dengan ribuan dokumen nyata menunjukkan bahwa biasanya Aspose.Words membutuhkan beberapa kali lebih banyak memori daripada ukuran dokumen rata-rata untuk membangun model dokumen dalam memori dan melakukan operasi sederhana seperti konversi antara format aliran, mail merge, parse, ganti, dan sebagainya. Kadang-kadang kita berbicara tentang pengganda 2, dan kadang-kadang 20.

Operasi yang lebih kompleks seperti rendering (konverting ke format halaman tetap), memperbarui bidang, membagi halaman, dan lain-lain, untuk beberapa dokumen memerlukan 20 kali lebih banyak sumber daya daripada memori yang dialokasikan oleh dokumen yang dimuat dalam Aspose.Words DOMSitemap

Jika hasil profil Anda menunjukkan masalah memori yang mungkin dalam Aspose.Words, Hubungi kami [Login](/words/id/java/technical-support/) dan mencakup semua informasi diagnostik.

## Lihat Juga

* [Login](/words/id/java/rendering/)
* [Mail Merge Login](https://docs.aspose.com/words/java/mail-merge-and-reporting/)
* [Sitemap](/words/id/java/working-with-fields/)