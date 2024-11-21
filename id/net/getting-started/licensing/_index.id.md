---
title: Lisensi dan Langganan
second_title: Aspose.Words untuk .NET
articleTitle: Lisensi dan Langganan
linktitle: Lisensi dan Langganan
description: "Aspose.Words untuk .NET memberikan paket pembelian yang berbeda atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi menggunakan kebijakan Lisensi dan Berlangganan dalam C#."
type: docs
weight: 55
url: /id/net/licensing/
timestamp: 2024-10-24-11-44-28
---

Terkadang, untuk mempelajari sistem dengan lebih baik, Anda ingin mendalami kodenya secepat mungkin. Untuk mempermudahnya, Aspose.Words menyediakan paket pembelian yang berbeda atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi.

{{% alert color="primary" %}}

Perhatikan bahwa ada sejumlah kebijakan dan praktik umum yang memandu Anda tentang cara mengevaluasi, memberi lisensi dengan benar, dan membeli produk kami. Anda dapat menemukannya di bagian [Kebijakan Pembelian dan FAQ](https://purchase.aspose.com/policies/).

{{% /alert %}}

## Uji Coba Gratis atau Lisensi Sementara

Aspose.Words adalah perangkat lunak luar biasa yang dapat dicoba oleh pengembang sebelum membeli.

### Uji Coba Gratis

Versi evaluasinya sama dengan versi yang dibeli – [Versi percobaan](https://releases.aspose.com/words/) menjadi berlisensi ketika Anda menambahkan beberapa baris kode untuk menerapkan lisensi.

Versi Uji Coba Aspose.Words tanpa lisensi yang ditentukan menyediakan fungsionalitas produk penuh, tetapi menyisipkan tanda air evaluatif di bagian atas dokumen saat memuat dan menyimpan serta membatasi ukuran maksimum dokumen hingga beberapa ratus paragraf.

### Lisensi Sementara

Jika Anda ingin menguji Aspose.Words tanpa batasan versi Uji Coba, Anda juga dapat meminta Lisensi Sementara 30 hari. Untuk lebih jelasnya, lihat halaman [Dapatkan Lisensi Sementara](https://purchase.aspose.com/temporary-license/).

## Lisensi yang Dibeli

Setelah pembelian, Anda perlu menerapkan file lisensi atau menyertakan file lisensi sebagai sumber daya yang disematkan. Bagian ini menjelaskan opsi bagaimana hal ini dapat dilakukan, dan juga mengomentari beberapa pertanyaan umum.

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
* Folder yang berisi file *Aspose.Words.dll*
* Folder yang berisi perakitan yang disebut *Aspose.Words.dll*
* Folder yang berisi rakitan entri (*.exe* Anda)
* Sumber daya yang tertanam dalam rakitan disebut *Aspose.Words.dll*
* Sebagai Lisensi Bermeter – mekanisme perizinan baru

Saat Anda mereferensikan *Aspose.Words.dll* dalam aplikasi, pustaka akan disalin ke direktori keluaran Anda (kecuali *Salin Lokal* di properti entri tersebut disetel ke false). Seringkali cara termudah untuk menetapkan lisensi adalah dengan menempatkan file lisensi di folder yang sama dengan *Aspose.Words.dll* dan hanya menentukan nama file tanpa jalurnya.

{{% alert color="primary" %}}

Gunakan metode [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) untuk melisensikan komponen.

Memanggil **SetLicense** berkali-kali tidak berbahaya, hanya membuang-buang waktu prosesor.

Memanggil [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) berkali-kali juga tidak berbahaya, tetapi hanya membuang-buang waktu prosesor dan dapat mengakumulasi konsumsi secara tidak semestinya.

{{% /alert %}}

#### Terapkan Lisensi Menggunakan File atau Objek Aliran

Saat mengembangkan aplikasi Anda, panggil **SetLicense** dalam kode startup Anda sebelum menggunakan kelas Aspose.Words.

##### Muat Lisensi dari File

Dengan menggunakan metode [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/), Anda dapat mencoba menemukan file lisensi di sumber daya tertanam atau folder perakitan untuk digunakan lebih lanjut.

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari folder:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Muat Lisensi dari Objek Aliran

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari aliran menggunakan metode [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) lain:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Sertakan File Lisensi sebagai Sumber Daya Tersemat

Cara yang tepat untuk mengemas lisensi dengan aplikasi Anda dan memastikan lisensi tersebut tidak hilang adalah dengan memasukkannya sebagai sumber daya yang tertanam ke dalam salah satu rakitan yang memanggil Aspose.Words. Untuk menyertakan file sebagai sumber daya tertanam, ikuti langkah-langkah berikut:

1. Di Visual Studio, sertakan file .lic ke dalam proyek menggunakan menu "**Berkas | Tambahkan Item yang Ada…**".
2. Pilih file di Solution Explorer dan atur "**Bangun Tindakan pada Sumber Daya Tertanam"** di jendela Properties.
3. Dalam kode Anda, aktifkan **SetLicense** yang hanya meneruskan nama pendek file sumber daya.

#### Terapkan Lisensi Terukur

Aspose.Words memungkinkan pengembang untuk menerapkan kunci terukur. Ini adalah mekanisme perizinan baru.

Mekanisme perizinan yang baru akan digunakan bersama dengan metode perizinan yang sudah ada. Pelanggan yang ingin ditagih berdasarkan penggunaan fitur API dapat menggunakan Metered Licensing.

Setelah menyelesaikan semua langkah yang diperlukan untuk mendapatkan lisensi jenis ini, Anda akan menerima kuncinya, bukan file lisensinya. Kunci terukur ini dapat diterapkan menggunakan kelas [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) yang khusus diperkenalkan untuk tujuan ini.

Jangan sering-sering memanggil metode **SetMeteredKey** agar metode perizinan ini mengakumulasi konsumsi dengan baik dan melaporkannya kepada kami. Cukup buat instance perpustakaan Aspose.Words, panggil **SetMeteredKey** sekali, lalu biarkan perpustakaan dipakai kembali dan gunakan kembali.

Contoh kode berikut menunjukkan cara menyetel kunci publik dan privat terbatas:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Biasanya cukup menerapkan lisensi terukur satu kali pada saat aplikasi dimulai. Namun, jika mekanisme lisensi terukur gagal berkomunikasi dengan server Aspose selama 24 jam, Aspose.Words akan keluar dari mode berlisensi dan beralih ke mode evaluasi. Untuk menghindari hal tersebut, Anda harus memeriksa status lisensi secara berkala – jika Aspose.Words berubah menjadi mode evaluasi, harap terapkan kembali lisensi terukur.

{{% alert color="primary" %}}

Harap dicatat bahwa Anda harus memiliki koneksi Internet yang stabil untuk menggunakan lisensi Metered dengan benar, karena mekanisme Metered memerlukan interaksi terus-menerus dengan layanan kami untuk perhitungan yang benar. Untuk lebih jelasnya, lihat bagian [FAQ Lisensi Terukur](https://purchase.aspose.com/faqs/licensing/metered/).

{{% /alert %}}

### Mengubah Nama File Lisensi

Nama file lisensi tidak harus "Aspose.Words.LIC". Anda dapat mengganti namanya sesuai keinginan Anda dan menggunakan nama tersebut saat mengatur lisensi di aplikasi Anda.

### Pengecualian "Tidak dapat menemukan nama file lisensi"

Saat Anda membeli dan mengunduh lisensi, situs web Aspose memberi nama file lisensi *"Aspose.Words.LIC"*. Anda mengunduh file lisensi menggunakan browser Anda. Dalam hal ini, beberapa browser mengenali file lisensi sebagai XML dan menambahkan ekstensi .xml ke dalamnya, sehingga nama lengkap file di komputer Anda menjadi *"Aspose.Words.lic.XML"*.

Ketika Microsoft Windows dikonfigurasi untuk menyembunyikan ekstensi untuk jenis file yang dikenal (sayangnya, ini adalah default di sebagian besar instalasi Windows), file lisensi akan muncul sebagai *"Aspose.Words.LIC"* di Windows Explorer. Anda mungkin akan berpikir bahwa ini adalah nama file sebenarnya dan memanggil **SetLicense** dengan meneruskannya *"Aspose.Words.LIC"*, tetapi tidak ada file seperti itu, oleh karena itu merupakan pengecualian.

Untuk mengatasi masalah ini, ganti nama file untuk menghapus ekstensi .xml yang tidak terlihat. Kami juga menyarankan Anda menonaktifkan opsi "sembunyikan ekstensi" di Microsoft Windows.

## Menggunakan Beberapa Produk Aspose

Jika Anda menggunakan beberapa produk Aspose dalam aplikasi Anda, seperti Aspose.Words dan `Aspose.Cells`, berikut beberapa tips berguna:

* Tetapkan Lisensi untuk setiap produk Aspose secara terpisah. Meskipun Anda memiliki satu file lisensi untuk semua komponen, misalnya, "Aspose.Total.lic", Anda masih perlu memanggil **SetLicense** secara terpisah untuk setiap produk Aspose yang Anda gunakan dalam aplikasi Anda.
* Gunakan Nama Kelas Lisensi yang Sepenuhnya Memenuhi Syarat. Setiap produk Aspose memiliki kelas **License** di namespacenya sendiri. Misalnya, Aspose.Words memiliki [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) dan `Aspose.Cells` memiliki kelas `Aspose.Cells`.License. Menggunakan nama kelas yang sepenuhnya memenuhi syarat memungkinkan Anda menghindari kebingungan mengenai lisensi mana yang berlaku untuk produk tertentu.
