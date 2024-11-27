---
title: Fitur Mail Merge Lanjutan dalam C#
second_title: Aspose.Words untuk .NET
articleTitle: Fitur Mail Merge Tingkat lanjut
linktitle: Fitur Mail Merge Tingkat lanjut
type: docs
description: "Aspose.Words untuk .NET menyediakan beberapa fitur Mail Merge lanjutan yang memungkinkan Anda melakukan penyesuaian Mail Merge lebih lanjut menggunakan C#. Misalnya, memperoleh informasi tentang struktur templat, menetapkan aturan, membersihkan setelah operasi Mail Merge, dan lainnya."
keywords: "use advanced Mail Merge features c#"
weight: 50
url: /id/net/advanced-mail-merge-features/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words menyediakan beberapa properti dan metode Mail Merge tambahan yang memungkinkan Anda melakukan penyesuaian lebih lanjut dari proses Mail Merge baik dalam Mail Merge sederhana atau Mail Merge dengan wilayah.

Fitur Mail Merge lanjutan termasuk, namun tidak terbatas pada, memperoleh informasi tentang struktur templat sebelum melakukan operasi Mail Merge, menetapkan aturan untuk operasi Mail Merge, dan membersihkan selama operasi Mail Merge. Artikel ini hanya akan membahas beberapa properti dan contoh untuk menunjukkan cara menggunakan fitur lanjutan.

## Tetapkan Aturan untuk Operasi Mail Merge

Menambahkan aturan ke templat memungkinkan Anda membuat proses alur kerja lebih efektif dan fleksibel. Dengan menggunakan aturan Mail Merge, Anda dapat menyiapkan konten yang dapat diubah dengan cepat dan menghindari kebutuhan untuk membuat banyak dokumen.

Aspose.Words memungkinkan Anda untuk menyesuaikan Mail Merge berdasarkan aturan yang dijalankan saat Anda melakukan operasi Mail Merge dan mengontrol penggabungan informasi. Misalnya, saat Anda membuat email atau surat untuk dikirim ke semua pelanggan Anda. Anda dapat mengatur aturan sehingga surat tersebut dapat berisi berbagai data berdasarkan nilai yang berbeda di bidang tertentu dari sumber data Anda.

Lihatlah beberapa aturan Mail Merge yang dapat Anda terapkan.

### Terapkan bidang Berikutnya untuk Menggabungkan Catatan Data dalam Dokumen Saat Ini

Anda dapat menerapkan bidang [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) untuk menggabungkan catatan data berikutnya ke dalam dokumen gabungan yang dihasilkan saat ini, alih-alih memulai dokumen gabungan baru. Ini digunakan untuk menampilkan banyak catatan dalam satu dokumen.

### Terapkan Bidang NextIf dan SkipIf untuk Membandingkan Dua Ekspresi

Anda dapat menggunakan bidang [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) atau bidang [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) jika Anda ingin membandingkan dua ekspresi (ekspresi[right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) dan [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/)) dengan beberapa [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words akan menggabungkan catatan data berikutnya ke dalam dokumen penggabungan saat ini, dan semua bidang penggabungan dalam templat yang ada setelah bidang *NextIf* akan diganti dengan nilai dari catatan data berikutnya, bukan catatan data saat ini. | Aspose.Words akan menggabungkan catatan data berikutnya ke dalam dokumen penggabungan baru. |
| `SkipIf` | Aspose.Words akan membatalkan dokumen penggabungan saat ini, pindah ke catatan data berikutnya di sumber data, dan memulai dokumen penggabungan baru. | Aspose.Words akan melanjutkan dokumen penggabungan saat ini. |

Contoh kode berikut menunjukkan cara membandingkan dua ekspresi dengan **NextIf** atau **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Dapatkan informasi tentang struktur templat

Aspose.Words memungkinkan Anda mengumpulkan berbagai informasi dalam templat Anda melalui banyak metode. Misalnya, Anda mungkin perlu mendapatkan nama beberapa bidang gabungan atau hierarki wilayah di templat Anda. Sekarang kami akan menjelaskan varian yang memungkinkan untuk mendapatkan beberapa informasi spesifik dari templat Anda.

### Dapatkan Nama Bidang Gabungan

Anda dapat menemukan skenario di mana Anda ingin menggabungkan data dengan bidang gabungan yang dibuat oleh orang lain, dan dalam hal ini, Anda tidak akan yakin tentang nama pasti bidang gabungan. Jadi, untuk mencapai tujuan Mail Merge, pertama-tama, Anda perlu membaca dan menampilkan nama semua bidang gabungan. Aspose.Words memungkinkan Anda mendapatkan kumpulan nama bidang gabungan menggunakan metode [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

Contoh kode berikut menunjukkan cara mendapatkan nama semua bidang gabungan di templat:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Dapatkan informasi tentang Wilayah Gabungan

Anda mungkin memiliki skenario di mana Anda ingin memahami bagaimana template Anda disusun melalui wilayah penggabungan yang ditentukan. Anda dapat menggunakan beberapa metode untuk mengumpulkan semua informasi yang diperlukan tentang wilayah gabungan atau untuk mendapatkan hierarki wilayah gabungan di templat Anda, seperti metode [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/). Anda dapat menggunakan properti dan metode dari kelas [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).Contoh kode berikut menunjukkan cara mendapatkan hierarki wilayah gabungan:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

Contoh kode berikut menunjukkan cara mendapatkan wilayah gabungan tertentu di dalam templat Anda berdasarkan namanya:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Tambahkan Bidang yang Dipetakan

Aspose.Words memungkinkan Anda memetakan nama bidang secara otomatis di sumber data Anda dan nama bidang Mail Merge di templat menggunakan properti [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/). Misalnya, jika Anda memiliki nama bidang yang disebut" Nama Belakang " di templat Anda, dan di sumber data Anda memiliki nama bidang "Nama Belakang" atau variasi lain seperti "Last_Name "atau" LastName", maka bidang di sumber data akan secara otomatis dipetakan ke bidang yang dipetakan terkait. Jika templat gabungan akan digabungkan dengan banyak sumber data, bidang yang dipetakan membuatnya tidak perlu memasukkan kembali bidang ke dalam templat agar sesuai dengan nama bidang dalam database.

Contoh kode berikut menunjukkan cara menambahkan bidang yang dipetakan menggunakan metode [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) ketika bidang gabungan dalam templat dan bidang data dalam sumber data memiliki nama yang berbeda:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}
