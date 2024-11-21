---
title: Lacak Perubahan dalam Dokumen
second_title: Aspose.Words untuk Python via .NET
articleTitle: Lacak Perubahan dalam Dokumen
linktitle: Lacak Perubahan dalam Dokumen
description: "Lacak perubahan konten dan format yang Anda atau orang lain lakukan menggunakan Python. Akses setiap revisi dalam dokumen dan terapkan berbagai properti pada revisi tersebut."
type: docs
weight: 270
url: /id/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Fungsi lacak perubahan, juga dikenal sebagai peninjauan, memungkinkan Anda melacak perubahan pada konten dan format yang dibuat oleh Anda atau pengguna lain. Fitur perubahan trek dengan Aspose.Words ini mendukung perubahan trek di Microsoft Word. Dengan fungsi ini, Anda dapat mengakses revisi individual dalam dokumen Anda dan menerapkan properti berbeda pada revisi tersebut.

Saat Anda mengaktifkan fitur lacak perubahan, semua elemen dokumen yang disisipkan, dihapus, dan diubah akan disorot secara visual dengan informasi tentang oleh siapa, kapan, dan apa yang diubah. Objek yang membawa informasi tentang apa yang diubah disebut "pelacakan perubahan". Misalnya, asumsikan Anda ingin meninjau dokumen dan membuat perubahan penting – ini mungkin berarti Anda perlu melakukan revisi. Selain itu, Anda mungkin perlu memasukkan komentar untuk mendiskusikan beberapa perubahan. Di sinilah pelacakan perubahan dalam dokumen berperan.

Artikel ini menjelaskan cara mengelola dan melacak perubahan yang dibuat oleh banyak pengulas pada dokumen yang sama, serta properti untuk melacak perubahan.

{{% alert color="primary" %}}

Perhatikan bahwa fitur komentar di Aspose.Words, serta di Microsoft Word, dapat dikaitkan dengan pelacakan perubahan. Namun, ingatlah bahwa komentar tidak bergantung sepenuhnya pada pelacakan perubahan.

{{% /alert %}}

## Apa Itu Revisi

Sebelum mendalami revisi, mari kita jelaskan pengertian revisi. [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) adalah perubahan yang terjadi di satu node dokumen, sedangkan grup revisi, diwakili oleh kelas [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/), adalah grup revisi berurutan yang terjadi di banyak node dokumen. Pada dasarnya revisi adalah alat untuk melacak perubahan.

Revisi digunakan dalam fitur pelacakan perubahan dan dalam fitur perbandingan dokumen, di mana revisi muncul sebagai hasil perbandingan. Jadi, revisi dalam fitur pelacakan perubahan menunjukkan oleh siapa dan apa yang diubah.

{{% alert color="primary" %}}

Perhatikan bahwa Microsoft Word tidak mengizinkan Anda melihat revisi satu per satu, Microsoft Word hanya mengizinkan Anda melihat revisi berurutan sebagai satu kesatuan. Namun Aspose.Words mengatasi keterbatasan ini dengan kelas [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/).

{{% /alert %}}

Aspose.Words mendukung berbagai jenis revisi, seperti halnya di Microsoft Word, seperti Penyisipan, Penghapusan, FormatChange, StyleDefinitionChange, dan Pemindahan. Semua tipe revisi diwakili dengan enumerasi [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Perhatikan bahwa revisi memiliki hasil yang mirip dengan Microsoft Word tetapi Aspose.Words tidak mendeteksi pemformatan selama pelacakan perubahan.

{{% /alert %}}

## Mulai dan Hentikan Pelacakan Perubahan

Mengedit dokumen biasanya tidak dihitung sebagai revisi sampai Anda mulai melacaknya. Aspose.Words memungkinkan Anda melacak semua perubahan dalam dokumen Anda secara otomatis dengan langkah sederhana. Anda dapat dengan mudah memulai proses pelacakan perubahan dengan menggunakan metode [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/). Jika Anda perlu menghentikan proses pelacakan perubahan sehingga pengeditan di masa mendatang tidak dianggap sebagai revisi, Anda perlu menggunakan metode [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/).

{{% alert color="primary" %}}

Perhatikan bahwa metode [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) tidak mengubah status properti [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) dan tidak menggunakan nilainya untuk tujuan pelacakan revisi. Selain itu, jika sebuah node dipindahkan dari satu lokasi ke lokasi lain di dalam dokumen yang dilacak, maka revisi perpindahan akan dibuat, termasuk perpindahan dari dan jarak pindah ke.

{{% /alert %}}

Di akhir proses pelacakan perubahan pada dokumen Anda, Anda bahkan akan memiliki kemampuan untuk menerima semua revisi atau menolaknya untuk mengembalikan dokumen ke bentuk aslinya. Hal ini dapat dicapai dengan menggunakan metode [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) atau [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/). Selain itu, Anda dapat menerima atau menolak setiap revisi secara terpisah dengan menggunakan metode [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) atau [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/).

Semua perubahan akan dilacak untuk satu iterasi dari saat Anda memulai proses hingga saat Anda menghentikannya. Hubungan antara iterasi yang berbeda direpresentasikan sebagai skenario berikut: Anda menyelesaikan proses pelacakan, lalu membuat beberapa perubahan, dan mulai melacak perubahan lagi. Dengan skenario ini, semua perubahan yang tidak Anda terima atau tolak akan ditampilkan kembali.

{{% alert color="primary" %}}

Perhatikan bahwa metode [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) mirip dengan "Terima Semua Perubahan" di Microsoft Word.

{{% /alert %}}

Contoh kode berikut menunjukkan cara bekerja dengan pelacakan perubahan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

Contoh kode berikut menunjukkan bagaimana revisi dihasilkan ketika sebuah node dipindahkan dalam dokumen yang dilacak:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Kelola dan Simpan Perubahan sebagai Revisi

Dengan fitur pelacakan perubahan sebelumnya, Anda dapat memahami perubahan apa saja yang dilakukan pada dokumen Anda dan siapa yang melakukan perubahan tersebut. Sedangkan dengan fitur [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), Anda memaksa perubahan apa pun dalam dokumen Anda untuk disimpan sebagai revisi.

Aspose.Words memungkinkan Anda memeriksa apakah suatu dokumen mengalami revisi atau tidak dengan menggunakan properti [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/). Jika Anda tidak perlu melacak perubahan secara otomatis dalam dokumen Anda melalui metode start_track_revisions dan stop_track_revisions, Anda dapat menggunakan properti [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) untuk memeriksa apakah perubahan dilacak saat mengedit dokumen di Microsoft Word dan disimpan sebagai revisi.

Fitur [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) melakukan revisi, bukan perubahan DOM yang sebenarnya. Namun revisinya sendiri terpisah. Misalnya, jika Anda menghapus paragraf mana pun, Aspose.Words menjadikannya sebagai revisi, menandainya sebagai penghapusan, bukan menghapusnya.

Selain itu, Aspose.Words memungkinkan Anda memeriksa apakah suatu objek telah dimasukkan, dihapus, atau diubah formatnya menggunakan properti [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/), dan [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/).

{{% alert color="primary" %}}

Perhatikan bahwa tidak ada hubungan antara revisi itu sendiri dan properti [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/). Selain itu, Anda dapat menerima/menolak revisi apa pun fitur pelacakan perubahannya.

{{% /alert %}}

Contoh kode berikut menunjukkan cara menerapkan properti berbeda dengan revisi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
