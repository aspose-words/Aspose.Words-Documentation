---
title: Fitur Mail Merge Lanjutan dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Fitur Mail Merge Tingkat lanjut
linktitle: Fitur Mail Merge Tingkat lanjut
type: docs
description: "Aspose.Words untuk C++ menyediakan beberapa fitur Mail Merge lanjutan yang memungkinkan Anda melakukan penyesuaian Mail Merge lebih lanjut. Misalnya, memperoleh informasi tentang struktur templat, menetapkan aturan, membersihkan setelah operasi mail merge, dan lainnya."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /id/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words menyediakan beberapa properti dan metode Mail Merge tambahan yang memungkinkan Anda melakukan penyesuaian lebih lanjut dari proses Mail Merge baik dalam Mail Merge sederhana atau Mail Merge dengan wilayah.

Fitur Mail Merge lanjutan termasuk, namun tidak terbatas pada, memperoleh informasi tentang struktur templat sebelum melakukan operasi mail merge, menetapkan aturan untuk operasi mail merge, dan membersihkan selama operasi mail merge. Artikel ini hanya akan membahas beberapa properti dan contoh untuk menunjukkan cara menggunakan fitur lanjutan.

## Tetapkan Aturan untuk Operasi Mail Merge

Menambahkan aturan ke templat memungkinkan Anda membuat proses alur kerja lebih efektif dan fleksibel. Dengan menggunakan aturan mail merge, Anda dapat menyiapkan konten yang dapat diubah dengan cepat dan menghindari kebutuhan untuk membuat banyak dokumen.

Aspose.Words memungkinkan Anda untuk menyesuaikan Mail Merge berdasarkan aturan yang dijalankan saat Anda melakukan operasi Mail Merge dan mengontrol penggabungan informasi. Misalnya, saat Anda membuat email atau surat untuk dikirim ke semua pelanggan Anda. Anda dapat mengatur aturan sehingga surat tersebut dapat berisi berbagai data berdasarkan nilai yang berbeda di bidang tertentu dari sumber data Anda.

Lihatlah beberapa aturan Mail Merge yang dapat Anda terapkan.

### Terapkan bidang Berikutnya untuk Menggabungkan Catatan Data dalam Dokumen Saat Ini

Anda dapat menerapkan bidang [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) untuk menggabungkan catatan data berikutnya ke dalam dokumen gabungan yang dihasilkan saat ini, alih-alih memulai dokumen gabungan baru. Ini digunakan untuk menampilkan banyak catatan dalam satu dokumen.

### Terapkan Bidang NextIf dan SkipIf untuk Membandingkan Dua Ekspresi

Anda dapat menggunakan bidang [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) atau bidang [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) jika Anda ingin membandingkan dua ekspresi (ekspresi[right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/)) dengan beberapa [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words akan menggabungkan catatan data berikutnya ke dalam dokumen penggabungan saat ini, dan semua bidang penggabungan dalam templat yang ada setelah bidang *NextIf* akan diganti dengan nilai dari catatan data berikutnya, bukan catatan data saat ini. | Aspose.Words akan menggabungkan catatan data berikutnya ke dalam dokumen penggabungan baru. |
| `SkipIf` | Aspose.Words akan membatalkan dokumen penggabungan saat ini, pindah ke catatan data berikutnya di sumber data, dan memulai dokumen penggabungan baru. | Aspose.Words akan melanjutkan dokumen penggabungan saat ini. |

## Dapatkan informasi tentang struktur templat

Aspose.Words memungkinkan Anda mengumpulkan berbagai informasi dalam templat Anda melalui banyak metode. Misalnya, Anda mungkin perlu mendapatkan nama beberapa bidang gabungan atau hierarki wilayah di templat Anda. Sekarang kami akan menjelaskan varian yang memungkinkan untuk mendapatkan beberapa informasi spesifik dari templat Anda.

### Dapatkan Nama Bidang Gabungan

Anda dapat menemukan skenario di mana Anda ingin menggabungkan data dengan bidang gabungan yang dibuat oleh orang lain, dan dalam hal ini, Anda tidak akan yakin tentang nama pasti bidang gabungan. Jadi, untuk mencapai tujuan mail merge, pertama-tama, Anda perlu membaca dan menampilkan nama semua bidang gabungan. Aspose.Words memungkinkan Anda mendapatkan kumpulan nama bidang gabungan menggunakan metode [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

Contoh kode berikut menunjukkan cara mendapatkan nama semua bidang gabungan di templat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### Dapatkan informasi tentang Wilayah Gabungan

Anda mungkin memiliki skenario di mana Anda ingin memahami bagaimana template Anda disusun melalui wilayah penggabungan yang ditentukan. Anda dapat menggunakan beberapa metode untuk mengumpulkan semua informasi yang diperlukan tentang wilayah gabungan atau untuk mendapatkan hierarki wilayah gabungan di templat Anda, seperti metode [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Anda dapat menggunakan properti dan metode dari kelas [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).Contoh kode berikut menunjukkan cara mendapatkan hierarki wilayah gabungan:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Tambahkan Bidang yang Dipetakan

Aspose.Words memungkinkan Anda memetakan nama bidang secara otomatis di sumber data Anda dan nama bidang Mail Merge di templat menggunakan properti [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/). Misalnya, jika Anda memiliki nama bidang yang disebut" Nama Belakang " di templat Anda, dan di sumber data Anda memiliki nama bidang "Nama Belakang" atau variasi lain seperti "Last_Name" atau " LastName", maka bidang di sumber data akan secara otomatis memetakan ke bidang yang dipetakan terkait. Jika templat gabungan akan digabungkan dengan banyak sumber data, bidang yang dipetakan membuatnya tidak perlu memasukkan kembali bidang ke dalam templat agar sesuai dengan nama bidang dalam database.

Contoh kode berikut menunjukkan cara menambahkan bidang yang dipetakan menggunakan metode [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) ketika bidang gabungan dalam templat dan bidang data dalam sumber data memiliki nama yang berbeda:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
