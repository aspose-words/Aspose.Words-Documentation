---
title: Memperbarui Bidang di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Memperbarui Bidang
linktitle: Memperbarui Bidang
description: "Pelajari cara memperbarui bidang di JavaSitemap Memperbarui bidang programmatically atau menggunakan pembaruan lapangan otomatis menggunakan Java API"
type: docs
weight: 30
url: /id/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Biasanya, lapangan dimasukkan ke dalam Microsoft Word sudah berisi nilai up to date. Misalnya, jika field adalah formula atau nomor halaman, itu akan berisi nilai dihitung yang benar untuk versi dokumen yang diberikan. Tetapi jika Anda memiliki aplikasi yang menghasilkan atau memodifikasi dokumen dengan bidang seperti menggabungkan dua dokumen atau mengisinya dengan data, maka idealnya semua bidang harus diperbarui untuk dokumen yang berguna.

## Cara Memperbarui Bidang

Ketika dokumen dimuat, Aspose.Words meniru perilaku Microsoft Word dengan opsi untuk secara otomatis memperbarui bidang dimatikan. Perilaku dapat dirangkum sebagai berikut:

- ketika Anda membuka / menyimpan dokumen kolom tetap utuh
- Anda dapat secara eksplisit memperbarui semua bidang dalam dokumen, misalnya, membangun kembali `TOC` ketika Anda perlu
- ketika Anda mencetak / render ke PDF atau XPS bidang yang terkait dengan jumlah halaman di header/footer diperbarui
- ketika Anda menjalankan mail merge semua bidang diperbarui secara otomatis

### Memperbarui Bidang Programmatically

Untuk secara eksplisit memperbarui bidang di seluruh dokumen, cukup sebutkan [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) Login Untuk memperbarui bidang yang terkandung dalam bagian dokumen, mendapatkan [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objek dan panggilan [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) Login Sitemap Aspose.Words, Anda dapat memperoleh **Range** untuk setiap node di pohon dokumen, seperti [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), dll. menggunakan [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) Login Anda dapat memperbarui hasil lapangan tunggal dengan memanggil Meme it [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) Login

### Pembaruan Otomatis Bidang Bertemu Halaman selama Pengirim

Ketika Anda mengeksekusi konversi dokumen ke format halaman tetap misalnya ke PDF atau XPS, Sitemap Aspose.Words akan secara otomatis memperbarui bidang terkait tata letak halaman `PAGE`, `PAGEREF` ditemukan di header / footer dokumen. Perilaku ini meniru perilaku Microsoft Word saat mencetak dokumen.

Jika Anda ingin memperbarui semua bidang lain dalam dokumen, maka Anda perlu memanggil [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) sebelum membuat dokumen.

Contoh berikut menunjukkan bagaimana untuk memperbarui semua bidang sebelum membuat dokumen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Pembaruan Lapangan Otomatis selama Mail Merge

Ketika Anda mengeksekusi <span notrans="<span notrans=" mail merge"=""></span>Sitemap semua bidang dalam dokumen akan diperbarui secara otomatis. Ini karena mail merge adalah kasus pembaruan lapangan. Program ini menemukan program mail merge lapangan dan perlu untuk memperbarui hasilnya, yang melibatkan mengambil nilai dari sumber data dan memasukkannya ke dalam bidang. Logika adalah, tentu saja, lebih rumit, misalnya, ketika akhir dokumen/mail merge daerah tercapai tetapi masih ada data lebih lanjut untuk digabungkan, maka wilayah perlu digali dan set baru bidang yang diperbarui.

## Update lapangan setelah kotor attribute

W:dirty adalah atribut tingkat lapangan yang akan menyegarkan hanya bidang yang Anda tentukan ketika dokumen dibuka. Ini memberi tahu MS Word hanya menyegarkan bidang ini dokumen berikutnya dibuka. Anda dapat menggunakan properti LoadOptions.setUpdateDirtyFields() untuk menentukan apakah untuk memperbarui bidang dengan atribut kotor. Ketika nilai LoadOptions.setUpdateDirtyFields() diatur untuk <span notrans="<span notrans=" *true*"=""></span>Sitemap semua bidang yang memiliki *true* nilai untuk `Field.IsDirty` Sitemap `FieldChar.IsDirty` properti diperbarui pada beban dokumen

Contoh kode berikut menunjukkan bagaimana untuk memperbarui bidang memiliki atribut kotor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Memperbarui Properti LastSavedTime Sebelum Hemat

Anda dapat menggunakan [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) properti apakah untuk memperbarui properti dokumen bawaan yang sesuai [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara memperbarui properti ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
