---
title: Bekerja dengan Rentang dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Rentang
linktitle: Bekerja dengan Rentang
description: "Pengantar fitur Rentang di Aspose.Words untuk Java."
type: docs
weight: 130
url: /id/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Dalam Aspose.Words, Rentang adalah "jendela datar" ke dalam model dokumen yang mirip pohon.

{{% /alert %}}

Jika Anda telah bekerja dengan Otomatisasi Microsoft Word, Anda mungkin tahu bahwa salah satu alat utama untuk memeriksa dan memodifikasi konten dokumen adalah objek `Range`.Rentang seperti "jendela" ke dalam konten dan pemformatan dokumen.

Aspose.Words juga memiliki kelas [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) dan dirancang untuk terlihat dan bertindak serupa dengan **Range** di Microsoft Word. Meskipun **Range** tidak dapat mencakup bagian dokumen yang berubah-ubah dan tidak memiliki **Start** dan **End**, Anda dapat mengakses rentang yang dicakup oleh simpul dokumen apa pun termasuk [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) itu sendiri. Dengan kata lain, setiap node memiliki jangkauannya sendiri. Objek **Range** memungkinkan Anda mengakses dan mengubah bidang teks, penanda, dan formulir dalam rentang tersebut.

## Mengambil Teks Biasa

Gunakan properti [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) untuk mengambil teks rentang yang polos dan tidak diformat.

Contoh kode berikut menunjukkan cara mendapatkan teks rentang yang polos dan tidak diformat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Hapus Teks

Kelas `Range` memungkinkan penghapusan semua karakter rentang dengan memanggil [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Contoh kode berikut menunjukkan cara menghapus semua karakter rentang:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


