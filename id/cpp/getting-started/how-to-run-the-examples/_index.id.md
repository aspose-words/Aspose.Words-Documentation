---
title: Cara Menjalankan Contoh
second_title: Aspose.Words untuk C++
articleTitle: Cara Menjalankan Contoh
linktitle: Cara Menjalankan Contoh
description: "Unduh Aspose.Words untuk C++ contoh dari repositori GitHub kami dan pelajari cara menjalankannya agar lebih terbiasa dengan kemungkinan dan fitur Aspose.Words."
type: docs
weight: 110
url: /id/cpp/how-to-run-the-examples/
timestamp: 2024-07-11-16-13-28
---

Untuk lebih mengenal kemungkinan dan fitur Aspose.Words, kami memberikan contoh yang dapat diunduh dari repositori GitHub kami, dijalankan, dan dipelajari secara mendetail.

Dalam artikel ini, Anda dapat menemukan persyaratan sistem, serta informasi tentang cara menjalankan contoh.

## Windows dengan Paket Nuget

### Persyaratan dan Prasyarat Perangkat Lunak

Pastikan Anda memenuhi persyaratan berikut sebelum mengunduh dan menjalankan contoh:

1. Visual Studio Kode, Visual Studio 2022.
2. Manajer Paket NuGet yang diinstal dan versi NuGet API terbaru untuk Visual Studio. (opsional)
3. Opsi **nuget.org** yang dipilih di kotak dialog "Alat → Opsi" di bawah " Manajer PaketNuGet →.
4. Koneksi Internet aktif untuk menggunakan fitur Pemulihan Paket Otomatis `NuGet` dalam proyek Contoh. Jika Anda tidak memiliki koneksi Internet aktif pada mesin tempat contoh akan dieksekusi, ikuti petunjuk dari Paket Windows with Cmake.

### Unduh dan Jalankan Contohnya

Semua Aspose.Words untuk C++ contohnya dihosting di [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Anda dapat mengkloning repositori menggunakan klien GitHub favorit Anda atau mengunduh [berkas ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Setelah mendapatkan salinan repositori, Anda mungkin menemukan bahwa:

- Semua contoh berada di folder **Examples**.
- Ada Visual Studio file solusi untuk C++ yang dibuat di Visual Studio 2022.

Untuk menjalankan contoh, buka file solusi di Visual Studio dan buat proyek:

- Untuk contoh **API Reference**, strukturnya didasarkan pada nama kelas, untuk contoh **Docs** sebagian besar didasarkan pada [Pengembang Guiled](/words/cpp/developer-guide/) bagian dokumentasi.
- Pada proses pertama, dependensi akan diunduh secara otomatis melalui NuGet.
- Folder **Data** di folder root **Examples** berisi file input yang digunakan dalam contoh.
- Semua contoh dapat dijalankan sebagai pengujian unit.

## Windows dengan Paket CMake

### Persyaratan dan Prasyarat Perangkat Lunak

Pastikan Anda memenuhi persyaratan berikut sebelum mengunduh dan menjalankan contoh:

1. Visual Studio Kode, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Unduh Paket CMake terbaru dari https://downloads.aspose.com/words/cpp

### Unduh dan Jalankan Contohnya

Semua Aspose.Words untuk C++ contohnya dihosting di [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Anda dapat mengkloning repositori menggunakan klien GitHub favorit Anda atau mengunduh [berkas ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Tempatkan folder `Aspose.Words.Cpp` dan `CodePorting.Native.Cs2Cpp_*` di root salinan repositori.

Semua contoh berada di folder **Examples**.

Untuk menjalankan contoh jalankan perintah berikut dari root salinan repositori:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

Solusi untuk Visual Studio akan dihasilkan dalam `Examples\DocsExamples\build`

Untuk menjalankan contoh, buka file solusi di Visual Studio dan buat proyek:

- Untuk contoh **API Reference**, strukturnya didasarkan pada nama kelas, untuk contoh **Docs** sebagian besar didasarkan pada [Pengembang Guiled](/words/cpp/developer-guide/) bagian dokumentasi.
- Folder **Data** di folder root **Examples** berisi file input yang digunakan dalam contoh.
- Semua contoh dapat dijalankan sebagai pengujian unit.

## Linux

### Persyaratan dan Prasyarat Perangkat Lunak

Pastikan Anda memenuhi persyaratan berikut sebelum mengunduh dan menjalankan contoh:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Unduh Paket CMake terbaru dari https://downloads.aspose.com/words/cpp

### Unduh dan Jalankan Contohnya

Semua Aspose.Words untuk C++ contohnya dihosting di [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Anda dapat mengkloning repositori menggunakan klien GitHub favorit Anda atau mengunduh [berkas ZIP ](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Tempatkan folder `Aspose.Words.Cpp` dan `CodePorting.Native.Cs2Cpp_*` di root salinan repositori.

Semua contoh berada di folder **Examples**.

Untuk menjalankan contoh jalankan perintah berikut dari root salinan repositori:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Untuk contoh **API Reference**, strukturnya didasarkan pada nama kelas, untuk contoh **Docs** sebagian besar didasarkan pada [Pengembang Guiled](/words/cpp/developer-guide/) bagian dokumentasi.
- Folder **Data** di folder root **Examples** berisi file input yang digunakan dalam contoh.
- Semua contoh dapat dijalankan sebagai pengujian unit.

{{% alert color="primary" %}}

Jangan ragu untuk menghubungi kami menggunakan layanan kami [Aspose.Words Forum Keluarga Produk](https://forum.aspose.com/c/words/8) jika Anda memiliki masalah dalam menyiapkan atau menjalankan contoh.

{{% /alert %}}

## Berkontribusi untuk Meningkatkan Contoh

Jika Anda ingin menambahkan atau meningkatkan contoh, kami mendorong Anda untuk berkontribusi pada proyek tersebut. Semua contoh dan proyek showcase di repositori ini adalah open source dan dapat digunakan secara bebas di aplikasi Anda.

Anda dapat melakukan fork repositori, mengedit kode sumber, dan membuat permintaan tarik untuk berkontribusi. Kami akan meninjau perubahan tersebut dan memasukkannya ke dalam repositori jika dirasa bermanfaat.

## Lihat Juga

- [Detail tentang cara menginstal Manajer Paket NuGet ](https://docs.microsoft.com/nuget/guides/install-nuget)
