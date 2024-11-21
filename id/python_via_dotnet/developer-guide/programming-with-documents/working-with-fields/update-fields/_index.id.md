---
title: Memperbarui Bidang Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Perbarui Bidang
linktitle: Perbarui Bidang
description: "Perbarui bidang dalam dokumen dengan cara berbeda dan menggunakan opsi berbeda di Python."
type: docs
weight: 30
url: /id/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Biasanya, bidang yang dimasukkan ke dalam Microsoft Word sudah berisi nilai terkini. Misalnya, jika bidangnya berupa rumus atau nomor halaman, bidang tersebut akan berisi nilai terhitung yang benar untuk versi dokumen tertentu. Namun jika Anda memiliki aplikasi yang membuat atau memodifikasi dokumen dengan kolom seperti menggabungkan dua dokumen atau mengisinya dengan data, maka idealnya semua kolom harus diperbarui agar dokumen tersebut berguna.

## Cara Memperbarui Bidang

Saat dokumen dimuat, Aspose.Words meniru perilaku Microsoft Word dengan opsi untuk memperbarui kolom secara otomatis dimatikan. Perilaku tersebut dapat diringkas sebagai berikut:

- saat Anda membuka/menyimpan dokumen, kolomnya tetap utuh
- Anda dapat secara eksplisit memperbarui semua bidang dalam dokumen (misalnya membangun kembali TOC) bila diperlukan
- ketika Anda mencetak/merender ke PDF atau XPS, bidang yang terkait dengan penomoran halaman di header/footer diperbarui
- saat Anda menjalankan mail merge, semua kolom diperbarui secara otomatis

### Perbarui Bidang Secara Terprogram

Untuk memperbarui kolom di seluruh dokumen secara eksplisit, cukup panggil [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Untuk memperbarui bidang yang terdapat di bagian dokumen, dapatkan objek [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) dan panggil metode [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). Di Aspose.Words, Anda bisa mendapatkan **Range** untuk node mana pun di pohon dokumen, seperti [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), dll. menggunakan properti [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Anda dapat memperbarui hasil dari satu bidang dengan memanggil metode [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Pembaruan Otomatis Bidang Terkait Halaman Selama Rendering

Saat Anda melakukan konversi dokumen ke format halaman tetap misalnya ke PDF atau XPS, maka Aspose.Words akan secara otomatis memperbarui bidang terkait tata letak halaman `PAGE`, `PAGEREF` yang terdapat di header/footer dokumen. Perilaku ini meniru perilaku Microsoft Word saat mencetak dokumen.

Jika Anda ingin memperbarui semua bidang lain dalam dokumen, Anda perlu memanggil [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) sebelum merender dokumen.

Contoh kode berikut menunjukkan cara memperbarui semua bidang sebelum merender dokumen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Pembaruan Bidang Otomatis Selama Mail Merge

Saat Anda menjalankan mail merge, semua kolom dalam dokumen akan diperbarui secara otomatis. Hal ini karena mail merge merupakan kasus pembaruan lapangan. Program ini menemukan bidang mail merge dan perlu memperbarui hasilnya, yang melibatkan pengambilan nilai dari sumber data dan memasukkannya ke dalam bidang. Logikanya tentu saja lebih rumit, misalnya ketika akhir wilayah dokumen/mail merge telah tercapai tetapi masih ada data lebih lanjut yang harus digabungkan, maka wilayah tersebut perlu diduplikasi dan kumpulan kolom baru diperbarui.

## Perbarui Bidang yang Memiliki Atribut Kotor

w:dirty adalah atribut tingkat bidang yang hanya akan menyegarkan bidang yang Anda tentukan saat dokumen dibuka. Ini memberitahu MS Word untuk hanya me-refresh bidang ini saat dokumen dibuka lagi. Anda dapat menggunakan properti [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) untuk menentukan apakah akan memperbarui bidang dengan atribut kotor. Ketika nilai **perbarui_kotor_bidang** diatur ke `True`, semua bidang yang memiliki nilai `True` untuk properti [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) atau [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) diperbarui saat dokumen dimuat.

Contoh kode berikut menunjukkan cara memperbarui kolom yang memiliki atribut dirty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Perbarui Properti LastSavedTime Sebelum Menyimpan

Anda dapat menggunakan properti [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) apakah akan memperbarui properti dokumen bawaan [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) yang sesuai saat menyimpan dokumen.

Contoh kode berikut menunjukkan cara memperbarui properti ini:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

