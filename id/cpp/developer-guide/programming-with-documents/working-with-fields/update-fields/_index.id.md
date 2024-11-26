---
title: Perbarui Bidang dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Perbarui Bidang
linktitle: Perbarui Bidang
description: "Pelajari cara memperbarui bidang di C++. Perbarui bidang secara terprogram atau gunakan pembaruan bidang otomatis menggunakan C++ API."
type: docs
weight: 30
url: /id/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Biasanya, bidang yang disisipkan ke Microsoft Word sudah berisi nilai terbaru. Misalnya, jika bidangnya adalah rumus atau nomor halaman, bidang tersebut akan berisi nilai terhitung yang benar untuk versi dokumen yang diberikan. Tetapi jika Anda memiliki aplikasi yang membuat atau memodifikasi dokumen dengan bidang seperti menggabungkan dua dokumen atau mengisinya dengan data, maka idealnya semua bidang harus diperbarui agar dokumen tersebut berguna.

## Cara Memperbarui Bidang

Saat dokumen dimuat, Aspose.Words meniru perilaku Microsoft Word dengan opsi untuk memperbarui bidang secara otomatis dimatikan. Perilaku tersebut dapat diringkas sebagai berikut:

- saat Anda membuka / menyimpan dokumen, bidang tetap utuh
- anda dapat memperbarui semua bidang dalam dokumen secara eksplisit, misalnya, membangun kembali `TOC`, saat Anda perlu
- saat Anda merender ke PDF atau XPS, bidang yang terkait dengan penomoran halaman di header / footer diperbarui
- saat Anda menjalankan Mail Merge semua bidang diperbarui secara otomatis

### Perbarui Bidang secara Terprogram

Untuk memperbarui bidang secara eksplisit di seluruh dokumen, cukup panggil metode [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Untuk memperbarui bidang yang terdapat di bagian dokumen, dapatkan objek [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) dan panggil metode [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). Di Aspose.Words, Anda dapat memperoleh **Range** untuk simpul apa pun di pohon dokumen, seperti [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), dll. menggunakan properti [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Anda dapat memperbarui hasil dari satu bidang dengan memanggil metode [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Pembaruan Otomatis Bidang Terkait Halaman Selama Rendering

Saat Anda menjalankan konversi dokumen ke format halaman tetap, mis. ke PDF atau XPS, maka Aspose.Words akan secara otomatis memperbarui bidang terkait tata letak halaman `PAGE`, `PAGEREF` yang terdapat di header / footer dokumen. Perilaku ini meniru perilaku Microsoft Word saat mencetak dokumen.

Jika Anda ingin memperbarui semua bidang lain dalam dokumen, maka Anda perlu memanggil [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) sebelum merender dokumen.

Contoh kode berikut menunjukkan cara memperbarui semua bidang sebelum merender dokumen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Pembaruan Bidang Otomatis selama Mail Merge

Saat Anda menjalankan mail merge, semua bidang dalam dokumen akan diperbarui secara otomatis. Ini karena Mail Merge adalah kasus pembaruan bidang. Program menemukan bidang Mail Merge dan perlu memperbarui hasilnya, yang melibatkan pengambilan nilai dari sumber data dan memasukkannya ke dalam bidang. Logikanya tentu saja lebih rumit, misalnya ketika akhir wilayah document / Mail Merge tercapai tetapi masih ada data lebih lanjut yang akan digabungkan, maka wilayah tersebut perlu diduplikasi dan kumpulan bidang baru diperbarui.

## Perbarui properti LastSavedTime sebelum menyimpan

Anda dapat menggunakan properti [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) apakah akan memperbarui properti dokumen bawaan yang sesuai [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara memperbarui properti ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


