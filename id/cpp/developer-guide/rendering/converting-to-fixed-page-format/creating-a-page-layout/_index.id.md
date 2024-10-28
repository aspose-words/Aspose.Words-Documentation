---
title: Membuat Tata Letak Halaman di C++
second_title: Aspose.Words untuk C++
articleTitle: Membuat Tata Letak Halaman
linktitle: Membuat Tata Letak Halaman
description: "Membuat tata letak halaman bisa menjadi prosedur yang mahal. Aspose.Words akan membuat tata letak halaman hanya jika diperlukan: untuk merender halaman dokumen, untuk mendapatkan nilai bidang, untuk mengekspor dokumen ke HTML, dll."
type: docs
weight: 10
url: /id/cpp/creating-a-page-layout/
---

Membuat tata letak halaman bisa menjadi prosedur yang mahal, baik dari segi kecepatan maupun memori. Ini karena beberapa alasan:

- Dokumen tersebut mungkin memiliki konten dalam jumlah besar, yang mungkin perlu ditampilkan pada ribuan halaman. Geometri setiap objek di setiap halaman perlu dijelaskan, menghabiskan sumber daya memori.
- Dokumen tersebut mungkin memiliki banyak aturan, yang membatasi geometri. Waktu komputasi yang cukup besar dapat dihabiskan, memastikan setiap kendala terpenuhi.
- Beberapa fitur dokumen, misalnya, bidang `NUMPAGES`, membuat dependensi rekursif untuk nilai properti di masa mendatang, yang tidak tersedia pada saat komputasi. Hal ini menyebabkan perhitungan berulang dan menambah waktu perhitungan.

Karena alasan yang disebutkan di atas, Aspose.Words akan membuat tata letak halaman hanya jika diperlukan. Alasan umum untuk ini adalah permintaan untuk merender halaman dokumen atau untuk mendapatkan nilai bidang yang bergantung pada informasi yang tersedia di tata letak halaman. Alasan yang kurang jelas adalah mengekspor dokumen ke HTML. Meskipun HTML bukan format halaman tetap dan tidak menjelaskan geometri objek konten, ia tetap mendukung gambar. Gambar tersebut mungkin dalam bentuk bentuk yang dibuat dalam Microsoft Word dengan teks di dalamnya. Misalnya, bagan dengan label sumbu dapat diekspor ke HTML sebagai gambar, tetapi sebelum ini dapat dilakukan, Aspose.Words perlu merender gambar tersebut dan karenanya perlu mengetahui di mana menampilkan labelnya. Lihat contoh bagan di bawah ini:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Sifat Non-Geometris

Selain menangani informasi geometris, tata letak halaman juga bertanggung jawab untuk menghitung warna dan gaya batas. Dalam Microsoft Word, warna teks dapat ditentukan sebagai otomatis, menyiratkan bahwa pemilihan warna harus didasarkan pada warna bayangan sel atau paragraf, atau berdasarkan warna halaman, tempat teks muncul.

Tata letak halaman menghitung di mana teks akan muncul dan konten apa yang akan ditampilkan di belakangnya, memungkinkan penghitungan warna. Ada perhitungan khusus lainnya yang dilakukan oleh tata letak halaman. Misalnya, batas horizontal dalam tabel bergantung pada apakah baris tabel terakhir dalam kolom teks, dan apakah baris tersebut dipecah melintasi kolom. Jika baris dirender terakhir dalam kolom, batas bawah digunakan sebagai ganti horizontal.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

Di Aspose.Words, pengguna dapat meminta apakah akan membuat tata letak halaman baru, atau memperbarui yang sudah ada. Keduanya dapat dilakukan dengan metode [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), yang disediakan oleh kelas [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Jika tata letak halaman tidak ada, tetapi diperlukan (misalnya, saat dokumen diekspor ke format halaman tetap), Aspose.Words akan memanggil metode ini secara otomatis. Namun, jika tata letak halaman sudah ada, Aspose.Words akan menggunakan yang sudah ada, untuk menghindari penggunaan sumber daya yang diperlukan untuk memperbaruinya. Dalam hal ini, pengguna perlu memanggil metode `UpdatePageLayout`, untuk memastikan bahwa tata letak halaman mutakhir dengan model dokumen.

## Struktur Dinamis

Proses pembuatan tata letak halaman terdiri dari langkah-langkah berikut:

- *Conversion* - menghitung konten model dokumen dan menyiapkan objek tata letak yang sesuai.
- *Build* - mengatur objek tata letak untuk mewakili konten dokumen pada halaman.
- *Reflow* - memperbarui susunan objek untuk memenuhi batasan geometri.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - langkah yang diperlukan jika dokumen berisi bentuk dengan konten teks bersarang.

Perhatikan, bahwa tata letak halaman adalah struktur dinamis, yang dapat dibangun kembali sebagian. Ini terutama diperlukan ketika tidak mungkin menghitung nilai bidang tanpa membangun kembali struktur tata letak dokumen. Bidang dapat mereferensikan lokasi objek pada halaman, dan pada saat yang sama, nilai bidang itu sendiri juga dirender pada halaman, memengaruhi lokasi objek yang direferensikan. Tata letak halaman tidak dapat dibuat sekaligus, karena nilai bidang mungkin belum tersedia pada saat penentuan posisi pada halaman.

Pertimbangkan skenario tipikal saat bidang `NUMPAGES` muncul di footer halaman pertama dalam dokumen. Nilai bidang ini adalah jumlah total halaman. Untuk memposisikan bidang pada halaman, nilainya harus diketahui. Jika hanya halaman pertama yang sedang dibangun maka jumlah total halaman belum diketahui. Dalam hal ini, tata letak halaman harus menggunakan nilai default dan kemudian kembali ke bidang tersebut dan mengubah nilainya sesuai dengan perhitungan aktual. Namun, mengubah nilai bidang dapat memengaruhi konten dokumen lain pada halaman dan pada akhirnya menyebabkan halaman baru ditambahkan atau halaman yang sudah ada dihapus, sehingga membuat nilai yang dihitung menjadi usang. Masalah ini dapat diatasi dengan memungkinkan pembaruan tata letak halaman yang ada.

Saat membuat tata letak, Anda juga dapat mengatur properti [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) yang memengaruhi keluaran dokumen pada halaman.