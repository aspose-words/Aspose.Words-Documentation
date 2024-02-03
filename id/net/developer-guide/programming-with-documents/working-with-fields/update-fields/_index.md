---
title: Perbarui Bidang C#
second_title: Aspose.Words untuk .NET
articleTitle: Perbarui Bidang
linktitle: Perbarui Bidang
description: "Pelajari cara memperbarui kolom di C#. Perbarui bidang secara terprogram atau gunakan pembaruan bidang otomatis menggunakan .NET API."
type: docs
weight: 30
url: /id/net/update-fields/
---

Biasanya, bidang yang dimasukkan ke dalam Microsoft Word sudah berisi nilai terkini. Misalnya, jika bidangnya berupa rumus atau nomor halaman, bidang tersebut akan berisi nilai terhitung yang benar untuk versi dokumen tertentu. Namun jika Anda memiliki aplikasi yang membuat atau memodifikasi dokumen dengan kolom seperti menggabungkan dua dokumen atau mengisinya dengan data, maka idealnya semua kolom harus diperbarui agar dokumen tersebut berguna.

## Cara Memperbarui Bidang

Saat dokumen dimuat, Aspose.Words meniru perilaku Microsoft Word dengan opsi untuk memperbarui kolom secara otomatis dimatikan. Perilaku tersebut dapat diringkas sebagai berikut:

- saat Anda membuka/menyimpan dokumen, kolomnya tetap utuh
- Anda dapat secara eksplisit memperbarui semua bidang dalam dokumen, misalnya, membangun kembali `TOC`, bila diperlukan
- ketika Anda mencetak/merender ke PDF atau XPS, bidang yang terkait dengan penomoran halaman di header/footer diperbarui
- saat Anda menjalankan mail merge, semua kolom diperbarui secara otomatis

### Perbarui Bidang Secara Terprogram

Untuk memperbarui kolom di seluruh dokumen secara eksplisit, cukup panggil metode [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). Untuk memperbarui bidang yang terdapat di bagian dokumen, dapatkan objek [Range](https://reference.aspose.com/words/net/aspose.words/range/) dan panggil metode [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). Di Aspose.Words, Anda bisa mendapatkan **Range** untuk node mana pun di pohon dokumen, seperti [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), dll. menggunakan properti [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). Anda dapat memperbarui hasil dari satu bidang dengan memanggil metode [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### Pembaruan Otomatis Bidang Terkait Halaman Selama Rendering

Saat Anda melakukan konversi dokumen ke format halaman tetap misalnya ke PDF atau XPS, maka Aspose.Words akan secara otomatis memperbarui bidang terkait tata letak halaman `PAGE`, `PAGEREF` yang terdapat di header/footer dokumen. Perilaku ini meniru perilaku Microsoft Word saat mencetak dokumen.

Jika Anda ingin memperbarui semua bidang lain dalam dokumen, Anda perlu memanggil [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) sebelum merender dokumen.

Contoh kode berikut menunjukkan cara memperbarui semua bidang sebelum merender dokumen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Pembaruan Bidang Otomatis Selama Mail Merge

Saat Anda menjalankan mail merge, semua kolom dalam dokumen akan diperbarui secara otomatis. Hal ini karena mail merge merupakan kasus pembaruan lapangan. Program ini menemukan bidang mail merge dan perlu memperbarui hasilnya, yang melibatkan pengambilan nilai dari sumber data dan memasukkannya ke dalam bidang. Logikanya tentu saja lebih rumit, misalnya ketika akhir wilayah dokumen/mail merge telah tercapai tetapi masih ada data lebih lanjut yang harus digabungkan, maka wilayah tersebut perlu diduplikasi dan kumpulan kolom baru diperbarui.

## Perbarui Bidang yang Memiliki Atribut Kotor

w:dirty adalah atribut tingkat bidang yang hanya akan menyegarkan bidang yang Anda tentukan saat dokumen dibuka. Ini memberitahu MS Word untuk hanya me-refresh bidang ini saat dokumen dibuka lagi. Anda dapat menggunakan properti [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) untuk menentukan apakah akan memperbarui bidang dengan atribut kotor. Ketika nilai **UpdateDirtyFields** diatur ke *true*, semua bidang yang memiliki nilai *true* untuk properti [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) atau [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) diperbarui saat dokumen dimuat.

Contoh kode berikut menunjukkan cara memperbarui kolom yang memiliki atribut dirty:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Perbarui Properti LastSavedTime Sebelum Menyimpan

Anda dapat menggunakan properti [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) apakah akan memperbarui properti dokumen bawaan [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) yang sesuai saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara memperbarui properti ini:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
