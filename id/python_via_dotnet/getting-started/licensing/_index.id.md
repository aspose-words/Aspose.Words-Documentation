---
title: Lisensi dan Langganan
second_title: Aspose.Words untuk Python via .NET
articleTitle: Lisensi dan Langganan
linktitle: Lisensi dan Langganan
description: "Aspose.Words untuk Python via .NET memberikan paket pembelian yang berbeda atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi menggunakan kebijakan Lisensi dan Berlangganan."
type: docs
weight: 40
url: /id/python-net/licensing/
timestamp: 2024-01-31-14-23-37
---

Terkadang, untuk mempelajari sistem dengan lebih baik, Anda ingin mendalami kodenya secepat mungkin. Untuk mempermudahnya, Aspose.Words menyediakan paket pembelian yang berbeda atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi.

{{% alert color="primary" %}}

Perhatikan bahwa ada sejumlah kebijakan dan praktik umum yang memandu Anda tentang cara mengevaluasi, memberi lisensi dengan benar, dan membeli produk kami. Anda dapat menemukannya di bagian [Kebijakan Pembelian dan FAQ](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Uji Coba Gratis atau Lisensi Sementara

Aspose.Words adalah perangkat lunak luar biasa yang dapat dicoba oleh pengembang sebelum membeli.

### Uji Coba Gratis

Versi evaluasi sama dengan versi yang dibeli – versi uji coba menjadi berlisensi ketika Anda menambahkan beberapa baris kode untuk menerapkan lisensi.

Versi Uji Coba Aspose.Words tanpa lisensi yang ditentukan menyediakan fungsionalitas produk penuh, tetapi menyisipkan tanda air evaluatif di bagian atas dokumen saat memuat dan menyimpan serta membatasi ukuran dokumen maksimum hingga beberapa ratus paragraf.

### Lisensi Sementara

Jika Anda ingin menguji Aspose.Words tanpa batasan versi Uji Coba, Anda juga dapat meminta Lisensi Sementara 30 hari. Untuk lebih jelasnya, lihat halaman [Dapatkan Lisensi Sementara](https://purchase.aspose.com/temporary-license/).

## Lisensi yang Dibeli

Setelah pembelian, Anda perlu menerapkan file lisensi atau streaming. Bagian ini menjelaskan opsi bagaimana hal ini dapat dilakukan, dan juga mengomentari beberapa pertanyaan umum.

{{% alert color="primary" %}}

Anda perlu mengatur lisensi:

* hanya sekali per domain aplikasi

* sebelum menggunakan kelas Aspose.Words lainnya

{{% /alert %}}

{{% alert color="primary" %}}

Anda dapat menemukan informasi harga di halaman [Informasi Harga](https://purchase.aspose.com/pricing/words/family/).

{{% /alert %}}

### Melindungi Lisensi yang Anda Beli

Setelah membeli lisensi, Anda perlu membaca informasi di halaman [Melindungi Lisensi yang Anda Beli](https://purchase.aspose.com/orders/protecting-your-license-file) dengan cermat untuk melindungi file lisensi Anda. Harap dicatat bahwa halaman ini hanya tersedia untuk dilihat jika Anda memiliki lisensi berbayar.

### Opsi Penerapan Lisensi

Lisensi dapat diterapkan dari berbagai lokasi:

* Jalur eksplisit
* Folder yang berisi skrip python yang memanggil Aspose.Words untuk Python via .NET
* Sungai kecil
* Sebagai Lisensi Bermeter – mekanisme perizinan baru

{{% alert color="primary" %}}

Gunakan metode [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) untuk melisensikan komponen.

Memanggil [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) berkali-kali tidak berbahaya, hanya membuang-buang waktu prosesor.

Memanggil [set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) berkali-kali juga tidak berbahaya, namun hanya membuang-buang waktu prosesor dan dapat mengakumulasi konsumsi secara tidak semestinya.

{{% /alert %}}

#### Terapkan Lisensi Menggunakan File atau Objek Aliran

Saat mengembangkan aplikasi Anda, panggil [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) dalam kode startup Anda sebelum menggunakan kelas Aspose.Words.

##### Muat Lisensi dari File

Dengan menggunakan metode [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/), Anda dapat mencoba menemukan file lisensi di sumber daya tertanam atau folder perakitan untuk digunakan lebih lanjut.

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari folder:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### Muat Lisensi dari Objek `Stream`

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari aliran menggunakan metode [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) lain:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### Terapkan Lisensi Terukur

Aspose.Words memungkinkan pengembang untuk menerapkan kunci terukur. Ini adalah mekanisme perizinan baru.

Mekanisme perizinan yang baru akan digunakan bersama dengan metode perizinan yang sudah ada. Pelanggan yang ingin ditagih berdasarkan penggunaan fitur API dapat menggunakan Metered Licensing.

Setelah menyelesaikan semua langkah yang diperlukan untuk mendapatkan lisensi jenis ini, Anda akan menerima kuncinya, bukan file lisensinya. Kunci terukur ini dapat diterapkan menggunakan kelas [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) yang khusus diperkenalkan untuk tujuan ini.

Jangan sering-sering memanggil metode **SetMeteredKey** agar metode perizinan ini mengakumulasi konsumsi dengan baik dan melaporkannya kepada kami. Cukup buat instance pustaka Aspose.Words, panggil **SetMeteredKey** satu kali, lalu biarkan pustaka tersebut dipakai kembali dan gunakan kembali.

Contoh kode berikut menunjukkan cara menyetel kunci publik dan privat terukur:

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

Harap dicatat bahwa Anda harus memiliki koneksi Internet yang stabil untuk menggunakan lisensi Metered dengan benar, karena mekanisme Metered memerlukan interaksi terus-menerus dengan layanan kami untuk perhitungan yang benar. Untuk lebih jelasnya, lihat bagian [FAQ Lisensi Terukur](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Mengubah Nama File Lisensi

Nama file lisensi tidak harus "Aspose.Words.Python.NET.lic". Anda dapat mengganti namanya sesuai keinginan Anda dan menggunakan nama tersebut saat mengatur lisensi di aplikasi Anda.

### Pengecualian "Tidak dapat menemukan nama file lisensi"

Saat Anda membeli dan mengunduh lisensi, situs web Aspose memberi nama file lisensi tersebut *"Aspose.Words.Python.NET.lic"*. Anda mengunduh file lisensi menggunakan browser Anda. Dalam hal ini, beberapa browser mengenali file lisensi sebagai XML dan menambahkan ekstensi .xml ke dalamnya, sehingga nama lengkap file di komputer Anda menjadi *"Aspose.Words.Python.NET.lic.XML"*.

Ketika Microsoft Windows dikonfigurasi untuk menyembunyikan ekstensi untuk jenis file yang dikenal (sayangnya, ini adalah default di sebagian besar instalasi Windows), file lisensi akan muncul sebagai *"Aspose.Words.Python.NET.lic"* di Windows Explorer. Anda mungkin akan berpikir bahwa ini adalah nama file sebenarnya dan memanggil [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) dengan meneruskannya *"Aspose.Words.Python.NET.lic"*, tetapi tidak ada file seperti itu, oleh karena itu pengecualian.

Untuk mengatasi masalah ini, ganti nama file untuk menghapus ekstensi .xml yang tidak terlihat. Kami juga menyarankan Anda menonaktifkan opsi "sembunyikan ekstensi" di Microsoft Windows.

## Menggunakan Beberapa Produk Aspose

Jika Anda menggunakan beberapa produk Aspose dalam aplikasi Anda, seperti Aspose.Words dan `Aspose.Cells`, berikut beberapa tips berguna:

* Tetapkan Lisensi untuk setiap produk Aspose secara terpisah. Meskipun Anda memiliki satu file lisensi untuk semua komponen, misalnya, "Aspose.Total.lic", Anda masih perlu memanggil [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) secara terpisah untuk setiap produk Aspose yang Anda gunakan dalam aplikasi Anda.
* Gunakan Nama Kelas Lisensi yang Sepenuhnya Memenuhi Syarat. Setiap produk Aspose memiliki kelas **License** di namespacenya sendiri. Misalnya Aspose.Words memiliki [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) dan `Aspose.Cells` memiliki kelas **aspose.cells.Lisensi**. Menggunakan nama kelas yang sepenuhnya memenuhi syarat memungkinkan Anda menghindari kebingungan mengenai lisensi mana yang berlaku untuk produk tertentu.
