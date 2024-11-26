---
title: Lisensi dan Langganan
second_title: Aspose.Words untuk Java
articleTitle: Lisensi dan Langganan
linktitle: Lisensi dan Langganan
description: "Aspose.Words untuk Java menyediakan paket berbeda untuk pembelian atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi menggunakan kebijakan Lisensi dan Langganan."
type: docs
weight: 60
url: /id/java/licensing/
timestamp: 2024-01-31-14-23-37
---

Terkadang, untuk mempelajari sistem dengan lebih baik, Anda ingin mempelajari kodenya secepat mungkin. Untuk mempermudah ini, Aspose.Words menyediakan paket berbeda untuk pembelian atau menawarkan Uji Coba Gratis dan Lisensi Sementara 30 hari untuk evaluasi.

{{% alert color="primary" %}}

Perhatikan bahwa ada sejumlah kebijakan dan praktik umum yang memandu Anda tentang cara mengevaluasi, melisensikan, dan membeli produk kami dengan benar. Anda dapat menemukannya di [Menghilangkan Kesalahan dan FAQ](https://purchase.aspose.com/policies/) bagian.

{{% /alert %}}

## Uji Coba Gratis atau Lisensi Sementara

Aspose.Words adalah perangkat lunak luar biasa yang dapat dicoba oleh pengembang sebelum membeli. Anda dapat dengan mudah mengunduh / menginstal Aspose.Words untuk Java dan Aspose.Words untuk Android melalui Java [dari Maven](https://releases.aspose.com/words/java/) untuk evaluasi.

### Uji Coba Gratis

Versi evaluasi sama dengan yang dibeli-versi Uji Coba menjadi berlisensi saat Anda menambahkan beberapa baris kode untuk menerapkan lisensi.

Versi uji coba Aspose.Words untuk Java dan Aspose.Words untuk Android melalui Java tanpa lisensi yang ditentukan menyediakan fungsionalitas produk lengkap, tetapi menyisipkan tanda air evaluatif di bagian atas dokumen saat memuat dan menyimpan serta membatasi ukuran dokumen maksimum hingga beberapa ratus paragraf.

### Lisensi Sementara

Jika Anda ingin menguji Aspose.Words untuk Java dan Aspose.Words untuk Android melalui Java tanpa batasan versi Uji Coba, Anda juga dapat meminta Lisensi Sementara selama 30 hari. Untuk lebih jelasnya, lihat [Dapatkan Lisensi Sementara](https://purchase.aspose.com/temporary-license/) halaman.

## Lisensi yang Dibeli

Setelah pembelian, Anda perlu menerapkan file lisensi atau menyertakan file lisensi sebagai sumber daya tersemat. Bagian ini menjelaskan opsi tentang bagaimana hal ini dapat dilakukan, dan juga mengomentari beberapa pertanyaan umum.

{{% alert color="primary" %}}

Lisensi adalah file XML teks biasa yang berisi detail seperti nama produk, jumlah lisensi pengembang, tanggal kedaluwarsa langganan, dan sebagainya.

File ditandatangani secara digital, jadi jangan memodifikasi file. Bahkan penambahan jeda baris tambahan yang tidak disengaja ke dalam file akan membatalkannya.

{{% /alert %}}

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
* Folder yang berisi file *Aspose.Words JAR*
* Sumber daya yang disematkan di JAR disebut *Aspose.Words JAR*
* Sebagai Lisensi Terukur-mekanisme lisensi baru

Seringkali cara termudah untuk menetapkan lisensi adalah dengan menempatkan file lisensi di folder yang sama dengan *Aspose.Words JAR* dan hanya menentukan nama file tanpa jalur.

{{% alert color="primary" %}}

Gunakan metode [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) untuk melisensikan komponen.

Memanggil **SetLicense** beberapa kali tidak berbahaya, hanya membuang waktu prosesor.

Memanggil [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) beberapa kali juga tidak berbahaya, tetapi hanya membuang waktu prosesor dan dapat mengakumulasi konsumsi secara tidak semestinya.

{{% /alert %}}

#### Menerapkan Lisensi Menggunakan Objek File atau Aliran

{{% alert color="primary" %}}

Panggil **SetLicense** dalam kode startup Anda sebelum menggunakan kelas Aspose.Words.

{{% /alert %}}

Saat mengembangkan pustaka kelas, Anda dapat memanggil **SetLicense** dari konstruktor statis kelas Anda yang menggunakan Aspose.Words. Konstruktor statis akan dijalankan sebelum membuat instance kelas Anda untuk memastikan bahwa lisensi Aspose.Words telah diinstal dengan benar.

##### Muat Lisensi dari File

Dengan menggunakan metode [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String), Anda dapat mencoba menemukan file lisensi di sumber daya tersemat atau folder yang berisi JARs aplikasi Anda untuk digunakan lebih lanjut.

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari folder:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Muat Lisensi dari Objek `Stream`

Contoh kode berikut menunjukkan cara menginisialisasi lisensi dari aliran menggunakan metode [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) lain:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Sertakan File Lisensi sebagai Sumber Daya yang Disematkan

Cara yang rapi untuk mengemas lisensi dengan aplikasi Anda dan memastikannya tidak hilang adalah dengan memasukkannya sebagai sumber daya yang disematkan. Anda cukup menyalin file LIC ke folder sumber daya proyek Anda.

Membangun kembali proyek harus menyematkan .file lic ke dalam aplikasi .berkas jar. Setelah itu, Anda dapat mengajukan permohonan lisensi menggunakan kode berikut:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Terapkan Lisensi Terukur

Aspose.Words memungkinkan pengembang menerapkan kunci terukur. Ini adalah mekanisme perizinan baru.

Mekanisme perizinan baru akan digunakan bersama dengan metode perizinan yang ada. Pelanggan yang ingin ditagih berdasarkan penggunaan fitur API dapat menggunakan Lisensi Terukur.

Setelah menyelesaikan semua langkah yang diperlukan untuk mendapatkan lisensi jenis ini, Anda akan menerima kuncinya, bukan file lisensinya. Kunci terukur ini dapat diterapkan menggunakan kelas [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) yang diperkenalkan khusus untuk tujuan ini.

Jangan sering memanggil metode **SetMeteredKey** agar metode perizinan ini mengakumulasi konsumsi dengan benar dan melaporkannya kepada kami. Cukup buat instance perpustakaan Aspose.Words, panggil **SetMeteredKey** sekali, lalu biarkan perpustakaan dibuat instance dan gunakan kembali.

Contoh kode berikut menunjukkan cara menyetel kunci publik dan pribadi terukur:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Harap dicatat bahwa Anda harus memiliki koneksi Internet yang stabil untuk penggunaan lisensi Meteran yang benar, karena mekanisme Meteran memerlukan interaksi terus-menerus dengan layanan kami untuk perhitungan yang benar.

Untuk lebih jelasnya, lihat [Transformasi Terukur FAQ](https://purchase.aspose.com/faqs/licensing/metered/) bagian.

{{% /alert %}}

### Mengubah Nama File Lisensi

Nama file lisensi tidak harus "Aspose.Words.LIC". Anda dapat mengganti namanya sesuai keinginan Anda dan menggunakan nama tersebut saat menyetel lisensi di aplikasi Anda.

### Pengecualian" Tidak dapat menemukan nama file lisensi"

Saat Anda membeli dan mengunduh lisensi, situs web Aspose memberi nama file lisensi *"Aspose.Words.LIC"*. Anda mengunduh file lisensi menggunakan browser Anda. Dalam hal ini, beberapa browser mengenali file lisensi sebagai XML dan menambahkan .ekstensi xml untuk itu, sehingga nama file lengkap di komputer Anda menjadi *"Aspose.Words.lic.XML"*.

Saat Microsoft Windows dikonfigurasi untuk menyembunyikan ekstensi untuk jenis file yang diketahui (sayangnya, ini adalah default di sebagian besar penginstalan Windows), file lisensi akan muncul sebagai *"Aspose.Words. LIC"* di Windows Explorer. Anda mungkin akan berpikir bahwa ini adalah nama file asli dan memanggil **SetLicense** meneruskannya *"Aspose.Words.LIC"*, tetapi tidak ada file seperti itu, maka pengecualiannya.

Untuk mengatasi masalah tersebut, ganti nama file menjadi hapus yang tidak terlihat .ekstensi xml. Kami juga menyarankan Anda menonaktifkan opsi "sembunyikan ekstensi" di Microsoft Windows.

## Menggunakan Beberapa Produk Aspose

Jika Anda menggunakan beberapa produk Aspose dalam aplikasi Anda, seperti Aspose.Words dan `Aspose.Cells`, berikut adalah beberapa tip berguna:

* Tetapkan Lisensi untuk setiap produk Aspose secara terpisah. Meskipun Anda memiliki satu file lisensi untuk semua komponen, misalnya, "Aspose.Total.lic", Anda tetap perlu memanggil **SetLicense** secara terpisah untuk setiap produk Aspose yang Anda gunakan dalam aplikasi Anda.
* Gunakan Nama Kelas Lisensi yang Sepenuhnya Memenuhi Syarat. Setiap produk Aspose memiliki kelas `License` di ruang namanya sendiri. Misalnya, Aspose.Words memiliki **com.aspose.words.License** dan `Aspose.Cells` memiliki com.aspose.sel.Kelas lisensi. Menggunakan nama kelas yang sepenuhnya memenuhi syarat memungkinkan Anda menghindari kebingungan tentang lisensi mana yang berlaku untuk produk mana.
