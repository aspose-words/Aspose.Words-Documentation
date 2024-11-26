---
title: Bekerja dengan Rentang di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Rentang
linktitle: Bekerja dengan Rentang
description: "Pengenalan fitur Range di Aspose.Words untuk .NET."
type: docs
weight: 130
url: /id/net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Di Aspose.Words, Range adalah "jendela datar" yang menjadi model dokumen seperti pohon.

{{% /alert %}}

Jika Anda pernah bekerja dengan Microsoft Word Automation, Anda mungkin tahu bahwa salah satu alat utama untuk memeriksa dan memodifikasi konten dokumen adalah objek **Range**. **Range** seperti "jendela" ke dalam konten dan format dokumen.

Aspose.Words juga memiliki kelas [Range](https://reference.aspose.com/words/net/aspose.words/range/) dan dirancang agar terlihat dan bertindak mirip dengan **Range** di Microsoft Word. Meskipun **Range** tidak dapat mencakup bagian dokumen apa pun dan tidak memiliki **Start** dan **End**, Anda dapat mengakses rentang yang dicakup oleh node dokumen apa pun termasuk [Document](https://reference.aspose.com/words/net/aspose.words/document/) itu sendiri. Dengan kata lain, setiap node memiliki jangkauannya masing-masing. Objek **Range** memungkinkan Anda mengakses dan memodifikasi teks, bookmark, dan bidang formulir dalam rentang tersebut.

## Ambil Teks Biasa

Gunakan properti [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) untuk mengambil teks rentang yang biasa dan belum diformat.

Contoh kode berikut menunjukkan cara mendapatkan teks rentang yang polos dan tidak diformat:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Hapus Teks

Rentang memungkinkan penghapusan semua karakter rentang dengan memanggil [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Contoh kode berikut menunjukkan cara menghapus semua karakter suatu rentang:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
