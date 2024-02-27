---
title: Konversi ke PDF/A dan PDF/UA
second_title: Aspose.Words untuk Python via .NET
articleTitle: Pelajari Fitur Konversi ke PDF/A dan PDF/UA
linktitle: Pelajari Fitur Konversi ke PDF/A dan PDF/UA
description: "Konversikan ke PDF/A-1, PDF/A-2, PDF/A-4 dan PDF/UA menggunakan Python. Pilih standar PDF terbaik untuk mengonversi dokumen menggunakan Python via .NET."
type: docs
weight: 25
url: /id/python-net/learn-features-of-conversion-to-pdf-a/
---

PDF adalah format halaman tetap yang sangat populer di kalangan pengguna dan didukung secara luas oleh berbagai aplikasi, karena dokumen PDF terlihat sama di perangkat apa pun. Oleh karena itu, mengonversi ke PDF adalah fitur penting Aspose.Words.

PDF sendiri merupakan format yang kompleks, karena memiliki struktur file tertentu, model grafis, penyematan font, dan beberapa fungsi keluaran yang kompleks seperti tag struktur dokumen, enkripsi, tanda tangan digital, dan formulir yang dapat diedit. Selain itu, mengonversi dokumen ke PDF memerlukan beberapa tahapan perhitungan yang rumit dan memakan waktu.

Di bagian ini, kami akan mempertimbangkan masalah utama yang mungkin timbul saat bekerja dengan dokumen dalam berbagai standar PDF dan menjelaskan opsi untuk menyelesaikannya.

## Yang Mendukung Aspose.Words Standar PDF

Aspose.Words sekarang memungkinkan pengguna untuk bekerja dengan format PDF/A-1, PDF/A-2 dan PDF/A-4, serta PDF/UA-1:

- PDF/A-1 memiliki batasan serius seperti transparansi dan beberapa opsi kompresi dilarang
- PDF/A-2 menghilangkan beberapa keterbatasan PDF/A-1, seperti dukungan transparansi dan efek lapisan atau penyematan font OpenType
- PDF/A-4 mengasumsikan tingkat kesesuaian yang direvisi: kesesuaian PDF/A-4 reguler setara dengan kesesuaian tingkat U versi sebelumnya, dan kesesuaian tingkat A dihapus
- Konten PDF/UA-1 harus diberi tag dan distandarisasi menurut ISO 32000-1: 2008

PDF/A adalah versi PDF berstandar ISO yang dimaksudkan untuk digunakan dalam pengarsipan dan penyimpanan dokumen elektronik jangka panjang. Pada saat yang sama, PDF/UA adalah versi PDF standar ISO lainnya yang dirancang untuk memastikan aksesibilitas bagi penyandang disabilitas yang menggunakan teknologi bantu. Untuk menentukan tingkat kepatuhan terhadap standar PDF, gunakan properti [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/). Karena kondisi penyimpanan, dokumen PDF/A harus menyematkan semua font dan menonaktifkan enkripsi, sedangkan PDF/UA hanya boleh menyematkan semua font.

Di bagian ini, kita akan melihat lebih dekat cara bekerja dengan dokumen PDF/A atau PDF/UA-1.

## ISO yang Relevan untuk Standar PDF

Untuk mempelajari lebih lanjut tentang berbagai standar PDF, periksa ISO berikut:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Lihat juga

* [Cara mengedit tag struktur dokumen di Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cara memeriksa atau mengedit bahasa teks di Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Bagaimana mengubah bahasa teks di Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cara menambahkan teks alternatif ke bentuk, gambar, bagan, grafik SmartArt, atau objek lain di Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cara menambahkan teks alternatif dan informasi tambahan ke tag](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (atau baca informasi yang sama di [Panduan Pengguna Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cara mengatur entri ActualText untuk teks](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), bagian "Tambahkan Teks Aktual untuk Istilah Singkatan, Rumus, atau Simbol Non-Unicode"
* [Pemetaan unicode untuk font simbolik Windows umum](http://www.alanwood.net/demos/webdings.html)