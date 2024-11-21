---
title: Bekerja dengan Rentang di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Rentang
linktitle: Bekerja dengan Rentang
description: "Bekerja dengan rentang dalam dokumen menggunakan Python."
type: docs
weight: 130
url: /id/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Di Aspose.Words, [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) adalah "jendela datar" yang menjadi model dokumen seperti pohon.

{{% /alert %}}

Jika Anda pernah bekerja dengan Microsoft Word Automation, Anda mungkin tahu bahwa salah satu alat utama untuk memeriksa dan memodifikasi konten dokumen adalah objek [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) seperti "jendela" ke dalam konten dan format dokumen. Aspose.Words juga memiliki kelas [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) dan dirancang agar terlihat dan bertindak mirip dengan **Range** di Microsoft Word. Meskipun **Range** tidak dapat mencakup bagian dokumen apa pun dan tidak memiliki **Start** dan **End**, Anda dapat mengakses rentang yang dicakup oleh node dokumen mana pun termasuk [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) itu sendiri. Dengan kata lain, setiap node memiliki jangkauannya masing-masing. Objek [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) memungkinkan Anda mengakses dan memodifikasi teks, bookmark, dan bidang formulir dalam rentang tersebut.

## Ambil Teks Biasa

Gunakan properti [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) untuk mengambil teks rentang yang biasa dan belum diformat.

Contoh kode berikut menunjukkan cara mendapatkan teks rentang yang polos dan tidak diformat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Menghapus Teks

Rentang memungkinkan penghapusan semua karakter rentang dengan memanggil [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Contoh kode berikut menunjukkan cara menghapus semua karakter suatu rentang:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Anda dapat mengunduh file contoh contoh ini dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
