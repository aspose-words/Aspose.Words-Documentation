---
title: Jenis Operasi Mail Merge dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Jenis Operasi Mail Merge
linktitle: Jenis Operasi Mail Merge
type: docs
description: "Lakukan dua jenis operasi mail merge yang berbeda: mail merge sederhana dan mail merge dengan wilayah menggunakan C++. mail merge sederhana mengulangi seluruh dokumen per setiap catatan sumber data, sedangkan mail merge dengan wilayah hanya mengulangi wilayah yang ditentukan per catatan."
keywords: "how to execute mail merge c++"
weight: 20
url: /id/cpp/types-of-mail-merge-operations/
---

Gagasan utama mail merge adalah membuat dokumen atau beberapa dokumen secara otomatis berdasarkan templat Anda dan data yang diambil dari sumber data Anda. Aspose.Words memungkinkan Anda melakukan dua jenis operasi mail merge yang berbeda: mail merge sederhana dan mail merge dengan wilayah.

Contoh paling umum menggunakan mail merge sederhana adalah saat Anda ingin mengirim dokumen untuk klien yang berbeda dengan mencantumkan nama mereka di awal dokumen. Untuk melakukannya, Anda perlu membuat bidang gabungan seperti *First Name* dan *Last Name* di templat Anda, lalu mengisinya dengan data dari sumber data Anda. Sedangkan contoh paling umum menggunakan mail merge dengan wilayah adalah saat Anda ingin mengirim dokumen yang menyertakan pesanan tertentu dengan daftar semua item dalam setiap pesanan. Untuk melakukan ini, Anda perlu membuat wilayah gabungan di dalam wilayah templat Anda sendiri untuk setiap pesanan, untuk mengisinya dengan semua data yang diperlukan untuk item tersebut.

Perbedaan utama antara kedua operasi penggabungan adalah bahwa mail merge sederhana (tanpa wilayah) mengulangi seluruh dokumen per setiap catatan sumber data, sedangkan mail merge dengan wilayah hanya mengulangi wilayah yang ditentukan per catatan. Anda dapat menganggap operasi mail merge sederhana sebagai kasus penggabungan tertentu dengan wilayah di mana satu-satunya wilayah adalah keseluruhan dokumen.

{{% alert color="primary" %}}

Kelas [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) mewakili fungsionalitas mail merge. Dengan propertinya, Anda dapat menyesuaikan perilaku yang diperlukan sebelum menjalankan operasi mail merge.

{{% /alert %}}

