---
title: Apa itu Tata Letak Halaman di C++
second_title: Aspose.Words untuk C++
articleTitle: Apa itu Tata Letak Halaman
linktitle: Apa itu Tata Letak Halaman
description: "Mari kita cari tahu apa itu tata letak halaman. Tata letak halaman menjelaskan geometri konten yang terkandung dalam dokumen."
type: docs
weight: 5
url: /id/cpp/what-is-a-page-layout/
---

A **document page layout** adalah struktur data, yang menjelaskan di mana objek tertentu berada di halaman untuk semua objek dokumen. Selain itu, karena objek memiliki properti yang memengaruhi penampilannya, seperti ukuran font, bayangan, atau efek gambar, Anda tidak hanya perlu mengetahui di mana objek tersebut berada, tetapi juga area halaman yang ditempatinya, dan apakah itu akan berlaku untuk beberapa halaman sehingga objek lain tidak tumpang tindih dengan area yang sama.

## Untuk Apa Tata Letak Halaman?

Aspose.Words mengimplementasikan fungsionalitas tata letak halaman secara internal yang memungkinkannya menghasilkan semua format halaman tetap, seperti PDF, XPS, dan berbagai format gambar. Tanpa tata letak halaman, informasi yang disimpan dalam file dokumen halaman tetap tidak akan tersedia dan semua format ini tidak akan didukung.

Hubungan antara dokumen dan tata letak halaman cukup sederhana. Sementara dokumen menjelaskan konten, tata letak halaman yang sesuai menjelaskan geometri konten tersebut. Perhatikan, bahwa tata letak halaman tidak dapat ada tanpa dokumen karena tidak akan ada konten untuk menghitung geometri, tetapi dokumen dapat ada tanpa tata letak halaman. Misalnya, ketika dokumen DOCX diubah menjadi dokumen RTF, biasanya tidak perlu mengetahui geometrinya, karena tidak ada format yang menyimpannya.

## Lihat Juga

* [Membuat Tata Letak Halaman](/words/cpp/creating-a-page-layout/)
* [Menyimpan Dokumen ke Format halaman Tetap](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Tentukan Opsi Tata Letak](/words/cpp/specify-layout-options/)