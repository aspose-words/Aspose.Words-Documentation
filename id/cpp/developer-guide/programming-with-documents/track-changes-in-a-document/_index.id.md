---
title: Lacak Perubahan dalam Dokumen di C++
second_title: Aspose.Words untuk C++
articleTitle: Melacak Perubahan dalam Dokumen
linktitle: Melacak Perubahan dalam Dokumen
description: "Lacak perubahan pada konten dan pemformatan yang dibuat oleh Anda atau orang lain menggunakan C++. Akses revisi individual dalam dokumen dan terapkan berbagai properti padanya."
type: docs
weight: 270
url: /id/cpp/track-changes-in-a-document/
---

Fungsionalitas lacak perubahan, juga dikenal sebagai meninjau, memungkinkan Anda melacak perubahan pada konten dan pemformatan yang dibuat oleh Anda atau pengguna lain. Fitur perubahan trek ini dengan Aspose.Words mendukung perubahan trek dalam Microsoft Word. Dengan fungsi ini, Anda dapat mengakses revisi individual dalam dokumen Anda dan menerapkan properti yang berbeda padanya.

Saat Anda mengaktifkan fitur lacak perubahan, semua elemen dokumen yang disisipkan, dihapus, dan dimodifikasi akan disorot secara visual dengan informasi tentang oleh siapa, kapan, dan apa yang diubah. Objek yang membawa informasi tentang apa yang diubah disebut "melacak perubahan". Misalnya, asumsikan bahwa Anda ingin meninjau dokumen dan membuat perubahan penting-ini mungkin berarti Anda perlu membuat revisi. Selain itu, Anda mungkin perlu menyisipkan komentar untuk membahas beberapa perubahan. Di situlah pelacakan perubahan dokumen masuk.

Artikel ini menjelaskan cara mengelola dan melacak perubahan yang dibuat oleh banyak pengulas pada dokumen yang sama, serta properti untuk melacak perubahan.

{{% alert color="primary" %}}

Perhatikan bahwa fitur komentar di Aspose.Words, serta di Microsoft Word, dapat dikaitkan dengan perubahan pelacakan. Namun, ingatlah bahwa komentar sepenuhnya tidak bergantung pada pelacakan perubahan.

{{% /alert %}}

## Apa itu Revisi

Sebelum menyelami revisi, mari kita jelaskan arti dari revisi. A [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) adalah perubahan yang terjadi di satu simpul dokumen sedangkan grup revisi, yang diwakili oleh kelas [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), adalah grup revisi berurutan yang terjadi di banyak simpul dokumen. Pada dasarnya, revisi adalah alat untuk melacak perubahan.

Revisi digunakan dalam fitur pelacakan perubahan dan dalam fitur bandingkan dokumen, di mana revisi muncul sebagai hasil perbandingan. Jadi, revisi dalam fitur perubahan pelacakan menunjukkan oleh siapa dan apa yang diubah.

{{% alert color="primary" %}}

Perhatikan bahwa Microsoft Word tidak memungkinkan Anda untuk melihat revisi individual, ini hanya memungkinkan Anda untuk melihat revisi berurutan sebagai satu kesatuan. Tetapi Aspose.Words menyelesaikan batasan ini dengan kelas **RevisionGroup**.

{{% /alert %}}

Aspose.Words mendukung berbagai jenis revisi, serta dalam Microsoft Word, seperti Penyisipan, Penghapusan, FormatChange, StyleDefinitionChange, dan Pemindahan. Semua jenis revisi diwakili dengan pencacahan [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Perhatikan bahwa revisi memiliki hasil yang mirip dengan Microsoft Word tetapi Aspose.Words tidak mendeteksi pemformatan selama melacak perubahan.

{{% /alert %}}

## Memulai dan Menghentikan Perubahan Pelacakan

Mengedit dokumen biasanya tidak dihitung sebagai revisi hingga Anda mulai melacaknya. Aspose.Words memungkinkan Anda melacak semua perubahan dalam dokumen Anda secara otomatis dengan langkah-langkah sederhana. Anda dapat dengan mudah memulai proses pelacakan perubahan dengan menggunakan metode [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Jika Anda perlu menghentikan proses pelacakan perubahan sehingga pengeditan di masa mendatang tidak dianggap sebagai revisi, Anda harus menggunakan metode [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Perhatikan bahwa metode `StartTrackingRevisions` tidak mengubah status properti [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) dan tidak menggunakan nilainya untuk tujuan pelacakan revisi. Selain itu, jika sebuah simpul dipindahkan dari satu lokasi ke lokasi lain di dalam dokumen yang dilacak, maka revisi pemindahan akan dibuat, termasuk pemindahan dari dan pemindahan ke jangkauan.

{{% /alert %}}

Di akhir proses pelacakan perubahan dalam dokumen Anda, Anda bahkan dapat menerima semua revisi atau menolaknya untuk mengembalikan dokumen ke bentuk aslinya. Ini dapat dicapai dengan menggunakan metode [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) atau [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). Selain itu, Anda dapat menerima atau menolak setiap revisi secara terpisah dengan menggunakan metode [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) atau [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Semua perubahan akan dilacak untuk satu iterasi dari saat Anda memulai proses hingga saat Anda menghentikannya. Hubungan antara iterasi yang berbeda direpresentasikan sebagai skenario berikut: Anda menyelesaikan proses pelacakan, lalu membuat beberapa perubahan, dan mulai melacak perubahan lagi. Dengan skenario ini, semua perubahan yang tidak Anda terima atau tolak akan ditampilkan lagi.

{{% alert color="primary" %}}

Perhatikan bahwa metode `AcceptAllRevisions` mirip dengan "Terima Semua Perubahan" di Microsoft Word.

{{% /alert %}}

Contoh kode berikut menunjukkan cara bekerja dengan perubahan pelacakan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Contoh kode berikut menunjukkan bagaimana revisi dibuat saat sebuah simpul dipindahkan dalam dokumen yang dilacak:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Kelola dan Simpan Perubahan sebagai Revisi

Dengan fitur perubahan pelacakan sebelumnya, Anda dapat memahami perubahan mana yang dibuat di dokumen Anda dan siapa yang membuat perubahan tersebut. Sementara dengan fitur [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/), Anda memaksa setiap perubahan dalam dokumen Anda untuk disimpan sebagai revisi.

Aspose.Words memungkinkan Anda memeriksa apakah dokumen memiliki revisi atau tidak dengan menggunakan properti [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Jika Anda tidak perlu melacak perubahan dalam dokumen Anda secara otomatis melalui metode StartTrackRevisions dan StopTrackRevisions, maka Anda dapat menggunakan properti `TrackRevisions` untuk memeriksa apakah perubahan dilacak saat mengedit dokumen di Microsoft Word dan disimpan sebagai revisi.

Fitur `TrackRevisions` membuat revisi, bukan perubahan DOM yang sebenarnya. Tetapi revisi itu sendiri terpisah. Misalnya, Jika Anda menghapus paragraf apa pun, Aspose.Words menjadikannya sebagai revisi, menandainya sebagai penghapusan, alih-alih menghapusnya.

Selain itu, Aspose.Words memungkinkan Anda memeriksa apakah suatu objek telah disisipkan, dihapus, atau diubah formatnya menggunakan [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), dan properti [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/).

{{% alert color="primary" %}}

Perhatikan bahwa tidak ada hubungan antara revisi itu sendiri dan properti `TrackRevisions`. Selain itu, Anda dapat menerima/menolak revisi terlepas dari fitur perubahan pelacakan.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menerapkan properti yang berbeda dengan revisi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
