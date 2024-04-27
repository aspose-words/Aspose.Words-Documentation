---
title: Lacak Perubahan dalam Dokumen dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Perubahan Track dalam Dokumen
linktitle: Perubahan Track dalam Dokumen
description: "Melacak perubahan konten dan format yang dibuat oleh Anda atau orang lain. Akses revisi individu dalam dokumen dan menerapkan berbagai properti untuk mereka menggunakan JavaSitemap"
type: docs
weight: 270
url: /id/java/track-changes-in-a-document/
---

Fungsi dari perubahan trek, juga dikenal sebagai peninjauan, memungkinkan Anda untuk melacak perubahan konten dan format yang dibuat oleh Anda atau pengguna lain. Fitur perubahan trek ini dengan Aspose.Words mendukung perubahan trek Microsoft WordSitemap Dengan fungsi ini, Anda dapat mengakses revisi individu dalam dokumen Anda dan menerapkan sifat yang berbeda kepada mereka.

Ketika Anda mengaktifkan fitur perubahan track, semua elemen yang dimasukkan, dihapus, dan dimodifikasi dokumen akan disorot secara visual dengan informasi tentang siapa, ketika, dan apa yang diubah. Objek yang membawa informasi tentang apa yang diubah disebut "perubahan pelacakan". Misalnya, asumsikan bahwa Anda ingin meninjau dokumen dan membuat perubahan penting - ini mungkin berarti bahwa Anda perlu membuat revisi. Juga, Anda mungkin perlu memasukkan komentar untuk membahas beberapa perubahan. Itu di mana pelacakan perubahan dokumen datang. Meme it

Artikel ini menjelaskan cara mengelola dan melacak perubahan yang dibuat oleh banyak peninjauan pada dokumen yang sama, serta sifat untuk melacak perubahan.

{{% alert color="primary" %}}

Perhatikan bahwa fitur komentar di Aspose.Words, dan Microsoft Word, dapat dikaitkan dengan perubahan pelacakan. Namun, ingatlah bahwa komentar benar-benar independen dari perubahan pelacakan.

{{% /alert %}}

## Apa itu Revisi

Sebelum menyelam ke revisi, mari kita menjelaskan makna revisi. Login [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) adalah perubahan yang terjadi dalam satu node dokumen sementara kelompok revisi, diwakili oleh [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) kelas, adalah kelompok revisi sequential yang terjadi pada banyak node dokumen. Revisi adalah alat untuk melacak perubahan.

Revisi digunakan dalam fitur perubahan pelacakan dan dalam fitur dokumen membandingkan, di mana revisi muncul akibat perbandingan. Jadi, revisi dalam fitur perubahan pelacakan yang ditunjukkan oleh siapa dan apa yang berubah.

{{% alert color="primary" %}}

Login Microsoft Word tidak memungkinkan Anda untuk melihat revisi individu, hanya memungkinkan Anda untuk melihat revisi sequential sebagai satu entitas. Login Aspose.Words memecahkan batasan ini dengan **RevisionGroup** Sitemap

{{% /alert %}}

Aspose.Words mendukung berbagai jenis revisi, serta Microsoft Word, seperti Penyisipan, Penghapusan, Format Perubahan, StyleDefinition Perubahan, dan Pindahkan. Semua jenis revisi diwakili dengan [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) Sitemap

{{% alert color="primary" %}}

Perhatikan bahwa revisi memiliki hasil yang mirip dengan Microsoft Word Login Aspose.Words tidak mendeteksi format selama perubahan pelacakan.

{{% /alert %}}

## Mulai dan Berhenti Perubahan Pelacakan

Mengedit dokumen biasanya tidak dihitung sebagai revisi sampai Anda mulai melacaknya. Aspose.Words memungkinkan Anda untuk secara otomatis melacak semua perubahan dalam dokumen Anda dengan langkah-langkah sederhana. Anda dapat dengan mudah memulai proses perubahan pelacakan dengan menggunakan [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) Login Jika Anda perlu menghentikan proses perubahan pelacakan sehingga setiap perubahan masa depan tidak dianggap revisi, Anda perlu menggunakan [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) Login

{{% alert color="primary" %}}

Login `StartTrackingRevisions` metode tidak mengubah status [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) properti dan tidak menggunakan nilainya untuk tujuan pelacakan revisi. Selain itu, jika node dipindahkan dari satu lokasi ke dalam dokumen yang dilacak, kemudian memindahkan revisi akan dibuat, termasuk bergerak-dari dan bergerak-to range.

{{% /alert %}}

Pada akhir proses perubahan pelacakan dalam dokumen Anda, Anda akan memiliki kemampuan untuk bahkan menerima semua revisi atau menolak mereka untuk mengalihkan dokumen ke bentuk aslinya. Ini dapat dicapai dengan menggunakan [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) Sitemap [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) Login Selain itu, Anda dapat menerima atau menolak setiap revisi secara terpisah dengan menggunakan [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) Sitemap [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) Login

Semua perubahan akan dilacak untuk satu iterasi dari saat Anda memulai proses ke saat Anda menghentikannya. Koneksi antara iterasi yang berbeda diwakili sebagai skenario berikut: Anda menyelesaikan proses pelacakan, kemudian membuat beberapa perubahan, dan mulai melacak perubahan lagi. Dengan skenario ini, semua perubahan yang tidak Anda terima atau menolak akan ditampilkan lagi.

{{% alert color="primary" %}}

Login `AcceptAllRevisions` metode mirip dengan "Accept All Changes" di Microsoft WordSitemap

{{% /alert %}}

Contoh kode berikut menunjukkan cara bekerja dengan perubahan pelacakan:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

Contoh kode berikut menunjukkan bagaimana revisi dihasilkan ketika node dipindahkan dalam dokumen yang dilacak:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Mengelola dan Simpan Perubahan sebagai Revisi

Dengan fitur perubahan pelacakan sebelumnya, Anda dapat memahami perubahan yang dilakukan dalam dokumen Anda dan yang membuat perubahan tersebut. Sitemap [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) fitur, Anda memaksa perubahan dalam dokumen Anda disimpan sebagai revisi.

Aspose.Words memungkinkan Anda untuk memeriksa apakah dokumen memiliki revisi atau tidak dengan menggunakan [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) Login Jika Anda tidak perlu secara otomatis melacak perubahan dokumen Anda melalui metode StartTrackRevisions dan StopTrackRevisions, maka Anda dapat menggunakan `TrackRevisions` properti untuk memeriksa apakah perubahan dilacak sementara mengedit dokumen dalam Microsoft Word dan disimpan sebagai revisi.

Login `TrackRevisions` fitur membuat revisi bukan DOM Sitemap Tapi revisi itu sendiri terpisah. Meme it Sitemap Jika Anda menghapus paragraf, Aspose.Words membuatnya sebagai revisi, menandainya sebagai penghapusan, bukan menghapusnya.

Selain itu, Aspose.Words memungkinkan Anda untuk memeriksa apakah objek dimasukkan, dihapus, atau mengubah format menggunakan [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), Login [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) Sitemap

{{% alert color="primary" %}}

Perhatikan bahwa tidak ada hubungan antara revisi itu sendiri dan `TrackRevisions` Login Selain itu, Anda dapat menerima/mengaktifkan revisi terlepas dari fitur perubahan pelacakan.

{{% /alert %}}

Contoh kode berikut menunjukkan bagaimana menerapkan sifat yang berbeda dengan revisi:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
