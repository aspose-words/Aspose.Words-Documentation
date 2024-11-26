---
title: Cara Menerapkan Logika Khusus ke Wilayah yang Tidak Digabungkan
second_title: Aspose.Words untuk Java
articleTitle: Cara Menerapkan Logika Khusus ke Wilayah yang Tidak Digabungkan
linktitle: Cara Menerapkan Logika Khusus ke Wilayah yang Tidak Digabungkan
type: docs
description: "Terapkan logika khusus ke wilayah yang tidak digabungkan selama operasi Mail Merge menggunakan Java."
weight: 70
url: /id/java/how-to-apply-custom-logic-to-unmerged-regions/
timestamp: 2024-01-27-14-07-04
---

Ada beberapa situasi di mana menghapus wilayah yang tidak digabungkan sepenuhnya dari dokumen selama Mail Merge tidak diinginkan atau mengakibatkan dokumen terlihat tidak lengkap. Hal ini dapat terjadi ketika ketiadaan data masukan harus ditampilkan kepada pengguna dalam bentuk pesan alih-alih wilayah yang dihapus seluruhnya.

Ada juga saat-saat ketika penghapusan wilayah yang tidak digunakan itu sendiri tidak cukup, misalnya, jika wilayah tersebut didahului dengan judul atau wilayah tersebut dimuat dalam sebuah tabel. Jika wilayah ini tidak digunakan maka judul dan tabel akan tetap ada setelah wilayah tersebut dihapus yang akan terlihat tidak pada tempatnya di dokumen.

Artikel ini memberikan solusi untuk menentukan secara manual bagaimana wilayah yang tidak digunakan dalam dokumen ditangani. Kode dasar untuk fungsi ini disediakan dan dapat dengan mudah digunakan kembali di proyek lain.

Logika yang akan diterapkan ke setiap wilayah didefinisikan di dalam kelas yang mengimplementasikan antarmuka [IFieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/). Dengan cara yang sama, penangan Mail Merge dapat diatur untuk mengontrol bagaimana setiap bidang digabungkan, penangan ini dapat diatur untuk melakukan tindakan pada setiap bidang di wilayah yang tidak digunakan atau di wilayah secara keseluruhan. Di dalam penangan ini, Anda dapat mengatur kode untuk mengubah teks suatu wilayah, menghapus simpul atau baris dan sel kosong, dll.

Dalam contoh ini, kita akan menggunakan dokumen yang ditampilkan di bawah ini. Ini berisi wilayah bersarang dan wilayah yang terkandung dalam tabel.

![apply-custom-logic-to-unmerged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-1.png)

Sebagai demonstrasi cepat, kita dapat menjalankan database sampel pada dokumen sampel dengan flag [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) diaktifkan. Properti ini akan secara otomatis menghapus wilayah yang tidak digabungkan dari dokumen selama mail merge.

Sumber data menyertakan dua catatan untuk wilayah **StoreDetails** tetapi sengaja memiliki data apa pun untuk wilayah turunan **ContactDetails** untuk salah satu catatan. Selanjutnya, wilayah **Suppliers** juga tidak memiliki baris data apa pun. Ini akan menyebabkan wilayah yang tidak digunakan tetap ada dalam dokumen. Hasil setelah menggabungkan dokumen dengan sumber data ini ada di bawah.

![merged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-2.png)

Seperti yang ditunjukkan pada gambar, Anda dapat melihat bahwa wilayah **ContactDetails** untuk rekaman kedua dan wilayah **Suppliers** telah dihapus secara otomatis oleh mesin Mail Merge karena tidak memiliki data. Namun, ada beberapa masalah yang membuat dokumen keluaran ini terlihat tidak lengkap:

- Wilayah **ContactDetails** masih menyisakan paragraf dengan teks "Detail Kontak".
- Dalam kasus yang sama tidak ada indikasi bahwa tidak ada nomor telepon, hanya ruang kosong yang dapat menimbulkan kebingungan.
- Tabel dan judul yang terkait dengan wilayah **Suppliers** juga tetap ada setelah wilayah di dalam tabel dihapus.

Teknik yang disediakan dalam artikel ini mendemonstrasikan cara menerapkan logika khusus ke setiap wilayah yang tidak digabungkan untuk menghindari masalah ini.

**Solusinya**

Untuk menerapkan logika secara manual ke setiap wilayah yang tidak digunakan dalam dokumen, kami memanfaatkan fitur yang sudah tersedia di Aspose.Words.

Mesin Mail Merge menyediakan properti untuk menghapus wilayah yang tidak digunakan melalui flag **MailMergeCleanupOptions.RemoveUnusedRegions**. Ini dapat dinonaktifkan sehingga wilayah tersebut tidak tersentuh selama mail merge. Ini memungkinkan kita untuk membiarkan wilayah yang tidak digabungkan dalam dokumen dan menanganinya sendiri secara manual.

Kita kemudian dapat memanfaatkan properti **MailMerge.FieldMergingCallback** sebagai sarana untuk menerapkan logika kustom kita sendiri ke wilayah yang tidak digabungkan ini selama Mail Merge melalui penggunaan kelas handler yang mengimplementasikan antarmuka **IFieldMergingCallback**.

Kode dalam kelas handler ini adalah satu-satunya kelas yang perlu Anda modifikasi untuk mengontrol logika yang diterapkan ke wilayah yang tidak digabungkan. Kode lain dalam sampel ini dapat digunakan kembali tanpa modifikasi dalam proyek apa pun.

Proyek sampel ini mendemonstrasikan teknik ini. Ini melibatkan langkah-langkah berikut:

1. Jalankan Mail Merge pada dokumen menggunakan sumber data Anda. Bendera **MailMergeCleanupOptions.RemoveUnusedRegions** dinonaktifkan untuk saat ini kami ingin wilayah tetap ada sehingga kami dapat menanganinya secara manual. Wilayah mana pun tanpa data akan dibiarkan tidak digabungkan dalam dokumen.
1. Panggil metode **ExecuteCustomLogicOnEmptyRegions**. Metode ini disediakan dalam sampel ini. Ini melakukan tindakan yang memungkinkan penangan yang ditentukan dipanggil untuk setiap wilayah yang tidak digabungkan. Metode ini dapat digunakan kembali dan dapat disalin tanpa diubah ke proyek apa pun yang memerlukannya (bersama dengan metode dependen apa pun).Metode ini menjalankan langkah-langkah berikut:
   1. Menyetel penangan yang ditentukan oleh pengguna ke properti **MailMerge.FieldMergingCallback**.
   1. Memanggil metode **CreateDataSourceFromDocumentRegions** yang menerima **Document** dan **ArrayList** pengguna yang berisi nama wilayah. Metode ini akan membuat sumber data tiruan yang berisi tabel untuk setiap wilayah yang tidak digabungkan dalam dokumen.
   1. Mengeksekusi Mail Merge pada dokumen menggunakan sumber data dummy. Ketika Mail Merge dijalankan dengan sumber data ini, penangan yang ditentukan pengguna akan dipanggil untuk setiap wilayah yang tidak digabungkan dan logika khusus diterapkan

**Kodenya**

Implementasi untuk metode **ExecuteCustomLogicOnEmptyRegions** dapat ditemukan di bawah ini. Metode ini menerima beberapa parameter:

1. Objek [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) yang berisi wilayah yang tidak digabung yang akan ditangani oleh penangan yang diteruskan.
1. Kelas handler yang mendefinisikan logika untuk diterapkan ke wilayah yang tidak digabungkan. Penangan ini harus mengimplementasikan [IFieldMergingCallback](https://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) antarmuka.
1. Melalui penggunaan kelebihan beban yang sesuai, metode ini juga dapat menerima parameter ketiga-daftar nama wilayah sebagai string. Jika ini ditentukan maka hanya nama wilayah yang tersisa dari dokumen yang ditentukan dalam daftar yang akan ditangani secara manual. Wilayah lain yang ditemui tidak akan dipanggil oleh penangan dan dihapus secara otomatis. Ketika kelebihan beban dengan hanya dua parameter ditentukan, setiap wilayah yang tersisa dalam dokumen disertakan dengan metode yang akan ditangani secara manual.

**Contoh**

Menunjukkan cara menjalankan logika khusus pada wilayah yang tidak digunakan menggunakan penangan yang ditentukan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ExecuteCustomLogicOnUnusedRegions.java" >}}

{{% alert color="primary" %}}

Jika Anda mempertimbangkan untuk menjalankan metode **ExecuteCustomLogicOnEmptyRegions** secara berurutan dengan penangan yang berbeda (misalnya setiap penangan menerapkan logika ke bidang tertentu), maka Anda perlu menonaktifkan penghapusan wilayah yang tidak digunakan sehingga wilayah tersebut tidak dihapus di antara panggilan ini.

{{% /alert %}}

**Contoh**

Mendefinisikan metode yang digunakan untuk menangani wilayah yang tidak digabungkan secara manual.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ManuallyHandleUnmergedRegions.java" >}}

Metode ini melibatkan pencarian semua wilayah yang tidak digabungkan dalam dokumen. Ini dilakukan dengan menggunakan metode **MailMerge.GetFieldNames**. Metode ini mengembalikan semua bidang gabungan dalam dokumen, termasuk penanda awal dan akhir wilayah (diwakili oleh bidang gabungan dengan awalan *TableStart* atau *TableEnd*).

Saat bidang penggabungan `TableStart` ditemukan, bidang ini ditambahkan sebagai **DataTable** baru ke **DataSet**. Karena suatu wilayah mungkin muncul lebih dari satu kali (misalnya karena merupakan wilayah bersarang di mana wilayah induk telah digabungkan dengan beberapa catatan), tabel hanya dibuat dan ditambahkan jika belum ada di **DataSet**.

Ketika awal wilayah yang sesuai telah ditemukan dan ditambahkan ke database, bidang berikutnya (yang sesuai dengan bidang pertama di wilayah tersebut) ditambahkan ke **DataTable**. Hanya bidang pertama yang harus ditambahkan untuk setiap bidang di wilayah yang akan digabungkan dan diteruskan ke penangan.

Kami juga menetapkan nilai bidang dari bidang pertama menjadi "FirstField " untuk memudahkan penerapan logika ke bidang pertama atau bidang lain di wilayah tersebut. Dengan menyertakan ini berarti tidak perlu melakukan hard-code pada nama field pertama atau mengimplementasikan kode tambahan untuk memeriksa apakah field saat ini adalah yang pertama dalam kode handler.

Kode di bawah ini menunjukkan cara kerja sistem ini. Dokumen yang ditampilkan di awal artikel ini digabungkan kembali dengan sumber data yang sama tetapi kali ini, wilayah yang tidak digunakan ditangani oleh kode khusus.

**Contoh**

Menunjukkan cara menangani wilayah yang tidak digabungkan setelah Mail Merge dengan kode yang ditentukan pengguna.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleUnmergedRegionsAfterMailMerge.java" >}}


Kode melakukan operasi yang berbeda berdasarkan nama wilayah yang diambil menggunakan properti **FieldMergingArgs.TableName**. Perhatikan bahwa bergantung pada dokumen dan wilayah Anda, Anda dapat mengkodekan penangan untuk menjalankan logika yang bergantung pada setiap wilayah atau kode yang berlaku untuk setiap wilayah yang tidak digabungkan dalam dokumen atau kombinasi keduanya.

Logika untuk wilayah **ContactDetails** melibatkan perubahan teks setiap bidang di wilayah **ContactDetails** dengan pesan yang sesuai yang menyatakan bahwa tidak ada data. Nama setiap bidang dicocokkan di dalam handler menggunakan properti **FieldMergingArgs.FieldName**.

Proses serupa diterapkan ke wilayah **Suppliers** dengan penambahan kode tambahan untuk menangani tabel yang berisi wilayah tersebut. Kode akan memeriksa apakah wilayah tersebut terdapat dalam tabel (karena mungkin sudah dihapus). Jika ya, itu akan menghapus seluruh tabel dari dokumen serta paragraf yang mendahuluinya selama diformat dengan gaya heading misalnya "Heading 1".

**Contoh**

Menunjukkan cara mendefinisikan logika kustom dalam penangan yang mengimplementasikan IFieldMergingCallback yang dijalankan untuk wilayah yang tidak digabungkan dalam dokumen.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-EmptyRegionsHandler.java" >}}

Hasil dari kode di atas ditunjukkan di bawah ini. Bidang yang tidak digabungkan dalam wilayah pertama diganti dengan teks informatif dan penghapusan tabel dan judul memungkinkan dokumen terlihat lengkap.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-2](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-3.png)


Kode yang menghapus tabel induk juga dapat dibuat untuk dijalankan di setiap wilayah yang tidak digunakan, bukan hanya wilayah tertentu dengan menghapus centang untuk nama tabel. Dalam hal ini, jika wilayah mana pun di dalam tabel tidak digabungkan dengan data apa pun, wilayah dan tabel penampung juga akan dihapus secara otomatis.

Kita dapat menyisipkan kode yang berbeda di penangan untuk mengontrol bagaimana wilayah yang tidak digabungkan ditangani. Menggunakan kode di bawah ini di penangan sebagai gantinya akan mengubah teks di paragraf pertama wilayah menjadi pesan yang bermanfaat sementara paragraf berikutnya di wilayah tersebut dihapus. Paragraf lain ini dihapus karena akan tetap berada di wilayah tersebut setelah menggabungkan pesan kami.

Teks pengganti digabungkan ke dalam bidang pertama dengan menyetel teks yang ditentukan ke dalam properti **FieldMergingArgs.Text**. Teks dari properti ini digabungkan ke dalam bidang oleh mesin Mail Merge.

Kode menerapkan ini hanya untuk bidang pertama di wilayah tersebut dengan memeriksa properti **FieldMergingArgs.FieldValue**. Nilai bidang dari bidang pertama di wilayah tersebut ditandai dengan "FirstField". Ini membuat jenis logika ini lebih mudah diterapkan di banyak wilayah karena tidak diperlukan kode tambahan.

**Contoh**

Menunjukkan cara mengganti wilayah yang tidak digunakan dengan pesan dan menghapus paragraf tambahan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ReplaceAnUnusedRegionWithAMessage.java" >}}

Dokumen yang dihasilkan setelah kode di atas dijalankan ditunjukkan di bawah ini. Wilayah yang tidak digunakan diganti dengan pesan yang menyatakan bahwa tidak ada catatan yang akan ditampilkan.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-3](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-4.png)


Sebagai contoh lain, kita dapat menyisipkan kode di bawah ini sebagai pengganti kode yang awalnya menangani **SuppliersRegion**. Ini akan menampilkan pesan di dalam tabel dan menggabungkan sel alih-alih menghapus tabel dari dokumen. Karena wilayah berada di dalam tabel dengan banyak sel, terlihat lebih bagus jika sel-sel tabel digabungkan menjadi satu dan pesan dipusatkan.

**Contoh**

Menunjukkan cara menggabungkan semua sel induk dari wilayah yang tidak digunakan dan menampilkan pesan di dalam tabel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-MergeAllTheParentCellsOfAnUnusedRegion.java" >}}

Dokumen yang dihasilkan setelah kode di atas dijalankan ditunjukkan di bawah ini.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-4](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-5.png)


Terakhir, kita dapat memanggil metode **ExecuteCustomLogicOnEmptyRegions** dan menentukan nama tabel yang harus ditangani dalam metode handler kita, sambil menentukan yang lain untuk dihapus secara otomatis.

**Contoh**

Menunjukkan cara menentukan hanya wilayah `ContactDetails` yang akan ditangani melalui kelas handler.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleTheContactDetailsRegion.java" >}}

Memanggil kelebihan ini dengan ArrayList yang ditentukan akan membuat sumber data yang hanya berisi baris data untuk wilayah yang ditentukan. Wilayah selain wilayah `ContactDetails` tidak akan ditangani dan akan dihapus secara otomatis oleh mesin Mail Merge. Hasil panggilan di atas menggunakan kode di penangan asli kami ditunjukkan di bawah ini.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-5](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-6.png)
