---
title: Lisensi dan Langganan
second_title: Aspose.Words untuk C++
articleTitle: Lisensi dan Langganan
linktitle: Lisensi dan Langganan
description: "Aspose.Words for С++ menyediakan paket berbeda untuk pembelian atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi menggunakan kebijakan Lisensi dan Langganan."
type: docs
weight: 60
url: /id/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

Terkadang, untuk mempelajari sistem dengan lebih baik, Anda ingin mempelajari kodenya secepat mungkin. Untuk mempermudah ini, Aspose.Words menyediakan paket berbeda untuk pembelian atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi.

{{% alert color="primary" %}}

Perhatikan bahwa ada sejumlah kebijakan dan praktik umum yang memandu Anda tentang cara mengevaluasi, melisensikan, dan membeli produk kami dengan benar. Anda dapat menemukannya di [Kebijakan Pembelian dan FAQ](https://purchase.aspose.com/policies/) bagian.

{{% /alert %}}

## Uji Coba Gratis atau Lisensi Sementara

Aspose.Words adalah perangkat lunak luar biasa yang dapat dicoba oleh pengembang sebelum membeli.

### Uji Coba Gratis

Versi evaluasi sama dengan yang dibeli – versi [Versi uji coba](https://releases.aspose.com/words/) cukup menjadi berlisensi saat Anda menambahkan beberapa baris kode untuk menerapkan lisensi.

Versi uji coba Aspose.Words tanpa lisensi yang ditentukan menyediakan fungsionalitas produk lengkap, tetapi menyisipkan tanda air evaluatif di bagian atas dokumen saat memuat dan menyimpan dan membatasi ukuran dokumen maksimum hingga beberapa ratus paragraf.

### Lisensi Sementara

Jika Anda ingin menguji Aspose.Words tanpa batasan versi Uji Coba, Anda juga dapat meminta Lisensi Sementara selama 30 hari. Untuk lebih jelasnya, lihat [Dapatkan Lisensi Sementara](https://purchase.aspose.com/temporary-license/) halaman.

## Lisensi yang Dibeli

Setelah pembelian, Anda perlu menerapkan file lisensi atau menyertakan file lisensi sebagai sumber daya tersemat. Bagian ini menjelaskan opsi tentang bagaimana hal ini dapat dilakukan, dan juga mengomentari beberapa pertanyaan umum.

{{% alert color="primary" %}}

Anda perlu mengatur lisensi:

* hanya sekali per domain aplikasi
* sebelum menggunakan kelas Aspose.Words lainnya

{{% /alert %}}

{{% alert color="primary" %}}

Anda dapat menemukan informasi harga di [Informasi Harga](https://purchase.aspose.com/pricing/words/family/) halaman.

{{% /alert %}}

### Melindungi Lisensi yang Anda Beli

Setelah membeli lisensi, Anda perlu membaca informasi di halaman dengan cermat [Melindungi Lisensi yang Anda Beli](https://purchase.aspose.com/orders/protecting-your-license-file) untuk melindungi file lisensi Anda. Harap dicatat bahwa halaman ini hanya tersedia untuk dilihat jika Anda memiliki lisensi berbayar.

### Opsi Penerapan Lisensi

Lisensi dapat diterapkan dari berbagai lokasi:

* Jalur eksplisit
* Folder yang berisi file `Aspose.Words_\*.dll`
* Folder yang berisi rakitan yang disebut `Aspose.Words_\*.dll`
* Folder yang berisi rakitan entri (`.exe` Anda)
* Sumber daya yang disematkan dalam rakitan disebut `Aspose.Words_\*.dll`

Seringkali cara termudah untuk menetapkan lisensi adalah dengan menempatkan file lisensi di folder yang sama dengan `Aspose.Words_\*.dll` dan hanya menentukan nama file tanpa jalur.

{{% alert color="primary" %}}

Gunakan metode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) untuk melisensikan komponen.

Memanggil **SetLicense** beberapa kali tidak berbahaya, hanya membuang waktu prosesor.

{{% /alert %}}

#### Menerapkan Lisensi Menggunakan Objek File atau Aliran

Saat mengembangkan aplikasi Anda, panggil **SetLicense** dalam kode startup Anda sebelum menggunakan kelas Aspose.Words.

##### Muat Lisensi dari File

Dengan menggunakan metode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/), Anda dapat mencoba menemukan file lisensi di folder sumber daya tersemat atau perakitan untuk digunakan lebih lanjut.

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari folder:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Muat Lisensi dari Objek Aliran

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari aliran menggunakan metode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) lain:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### Sertakan File Lisensi sebagai Sumber Daya yang Disematkan

Cara yang rapi untuk mengemas lisensi dengan aplikasi Anda dan memastikannya tidak hilang adalah dengan memasukkannya sebagai sumber daya yang disematkan. Cara menyematkan dan menggunakan sumber daya bergantung pada platform target Anda.

##### Windows

Misalkan Anda telah menambahkan lisensi sebagai sumber daya seperti yang ditunjukkan di bawah ini.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

Anda dapat membaca tentang cara bekerja dengan file sumber daya di situs [Bekerja dengan File Sumber Daya](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) halaman.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari sumber daya tersemat menggunakan metode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Ada cara serupa untuk menyematkan sumber daya pada Linux dalam file yang dapat dieksekusi.

{{% alert color="primary" %}}

Untuk informasi lebih lanjut, lihat [Menyematkan sumber daya dalam executable menggunakan GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

Contoh kode kode berikut menunjukkan cara menginisialisasi lisensi dari sumber daya yang disematkan menggunakan metode [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/):

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### Mengubah Nama File Lisensi

Nama file lisensi tidak harus "Aspose.Words.LIC". Anda dapat mengganti namanya sesuai keinginan Anda dan menggunakan nama tersebut saat menyetel lisensi di aplikasi Anda.

### Pengecualian" Tidak dapat menemukan nama file lisensi"

Saat Anda membeli dan mengunduh lisensi, situs web Aspose memberi nama file lisensi *"Aspose.Words.LIC"*. Anda mengunduh file lisensi menggunakan browser Anda. Dalam hal ini, beberapa browser mengenali file lisensi sebagai XML dan menambahkan .ekstensi xml untuk itu, sehingga nama file lengkap di komputer Anda menjadi *"Aspose.Words.lic.XML"*.

Saat Microsoft Windows dikonfigurasi untuk menyembunyikan ekstensi untuk jenis file yang diketahui (sayangnya, ini adalah default di sebagian besar penginstalan Windows), file lisensi akan muncul sebagai *"Aspose.Words. LIC"* di Windows Explorer. Anda mungkin akan berpikir bahwa ini adalah nama file asli dan memanggil **SetLicense** meneruskannya *"Aspose.Words.LIC"*, tetapi tidak ada file seperti itu, maka pengecualiannya.

Untuk mengatasi masalah tersebut, ganti nama file menjadi hapus yang tidak terlihat .ekstensi xml. Kami juga menyarankan Anda menonaktifkan opsi "sembunyikan ekstensi" di Microsoft Windows.

## Menggunakan Beberapa Produk Aspose

Jika Anda menggunakan beberapa produk Aspose dalam aplikasi Anda, seperti Aspose.Words dan `Aspose.Cells`, berikut adalah beberapa tip berguna:

* Tetapkan Lisensi untuk setiap produk Aspose secara terpisah. Meskipun Anda memiliki satu file lisensi untuk semua komponen, misalnya, "Aspose.Total.lic", Anda tetap perlu memanggil **SetLicense** secara terpisah untuk setiap produk Aspose yang Anda gunakan dalam aplikasi Anda.
* Gunakan Nama Kelas Lisensi yang Sepenuhnya Memenuhi Syarat. Setiap produk Aspose memiliki kelas **License** di ruang namanya sendiri. Misalnya, Aspose.Words memiliki [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) dan `Aspose.Cells` memiliki `Aspose.Cells`.Kelas lisensi. Menggunakan nama kelas yang sepenuhnya memenuhi syarat memungkinkan Anda menghindari kebingungan tentang lisensi mana yang berlaku untuk produk mana.
