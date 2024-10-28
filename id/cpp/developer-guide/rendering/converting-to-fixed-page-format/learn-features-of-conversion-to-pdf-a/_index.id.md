---
title: Konversi ke PDF/A dan PDF/UA
second_title: Aspose.Words untuk C++
articleTitle: Pelajari Fitur Konversi ke PDF/A dan PDF/UA
linktitle: Pelajari Fitur Konversi ke PDF/A dan PDF/UA
description: "Konversikan ke PDF/A-1, PDF/A-2, PDF/A-4 dan PDF/UA menggunakan C++. Pilih standar PDF terbaik untuk mengonversi dokumen menggunakan С."
type: docs
weight: 35
url: /id/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF adalah format halaman tetap yang sangat populer di kalangan pengguna dan didukung secara luas oleh berbagai aplikasi, karena dokumen PDF terlihat sama di perangkat apa pun. Untuk alasan ini, mengonversi ke PDF merupakan fitur penting dari Aspose.Words.

PDF adalah format yang kompleks dengan sendirinya, karena memiliki struktur file tertentu, model grafis, penyematan font, dan beberapa fungsionalitas keluaran yang kompleks seperti tag struktur dokumen, enkripsi, tanda tangan digital, dan formulir yang dapat diedit. Selain itu, mengonversi dokumen menjadi PDF memerlukan beberapa tahapan penghitungan, yang rumit dan memakan waktu.

Pada bagian ini, kami akan mempertimbangkan masalah utama yang mungkin muncul saat bekerja dengan dokumen dalam berbagai standar PDF dan menjelaskan opsi untuk menyelesaikannya.

## Standar PDF Aspose.Words Mana yang Didukung

Aspose.Words sekarang memungkinkan pengguna untuk bekerja dengan format PDF/A-1, PDF/A-2 dan PDF/A-4, serta PDF/UA-1:

* PDF/A-1 memiliki batasan serius seperti transparansi dan beberapa opsi kompresi dilarang
* PDF/A-2 menghilangkan beberapa batasan PDF/A-1, seperti dukungan transparansi dan efek lapisan atau penyematan font OpenType
* PDF/A-4 mengasumsikan tingkat kesesuaian yang direvisi: kesesuaian PDF/A-4 reguler setara dengan kesesuaian level U versi sebelumnya, dan kesesuaian level A dihapus
* PDF/UA-1 konten harus diberi tag dan distandarisasi menurut ISO 32000-1: 2008

PDF/A adalah ISO-versi standar dari PDF yang dimaksudkan untuk digunakan dalam pengarsipan dan penyimpanan dokumen elektronik jangka panjang. Pada saat yang sama, PDF/UA adalah versi standar ISO lainnya dari PDF yang dirancang untuk memastikan aksesibilitas bagi penyandang disabilitas yang menggunakan teknologi bantu. Untuk menentukan tingkat kepatuhan terhadap standar PDF, gunakan properti [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Karena kondisi penyimpanan, dokumen PDF/A harus menyematkan semua font dan menonaktifkan enkripsi, sedangkan PDF/UA hanya boleh menyematkan semua font.

Di bagian ini, kita akan melihat lebih dekat bekerja dengan dokumen PDF/A atau PDF/UA-1.

## Relevan ISO untuk Standar PDF

Untuk mempelajari lebih lanjut tentang standar PDF yang berbeda, periksa ISOs berikut:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Lihat Juga

* [Cara mengedit tag struktur dokumen di Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cara memeriksa atau mengedit bahasa teks di Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Cara mengubah bahasa teks dalam Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cara menambahkan teks alternatif ke bentuk, gambar, bagan, grafik SmartArt, atau objek lain di Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cara menambahkan teks alternatif dan informasi tambahan ke tag](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (atau baca informasi yang sama di [Adobe Acrobat Panduan Pengguna](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cara menyiapkan entri ActualText untuk teks](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), bagian "Tambahkan Teks Aktual untuk Istilah yang Disingkat, Rumus, atau Simbol Non-Unicode"
* [Pemetaan Unicode untuk font simbolik Windows yang umum](http://www.alanwood.net/demos/webdings.html)

