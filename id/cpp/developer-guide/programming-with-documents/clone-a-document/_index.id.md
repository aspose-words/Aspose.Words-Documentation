---
title: Mengkloning Dokumen dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Mengkloning Dokumen
linktitle: Mengkloning Dokumen
type: docs
description: "Kloning dokumen untuk mendapatkan salinannya yang identik menggunakan C++. Saat membuat salinan, simpul dan properti dari dokumen asli dikloning."
weight: 70
url: /id/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Mengkloning dokumen adalah proses membuat salinan identik dari dokumen asli, yang dapat meningkatkan kinerja dan menyelamatkan Anda dari potensi kebocoran memori.

Artikel ini akan menjelaskan kasus penggunaan utama kloning dokumen dan cara membuat kloning dokumen menggunakan Aspose.Words.

## Operasi dengan Dokumen Kloning

Operasi kloning memungkinkan Anda mempercepat proses pembuatan dokumen karena Anda tidak perlu memuat dan mengurai dokumen dari file setiap saat.

Setelah membuat tiruan dari dokumen Anda, Anda akan dapat mengeditnya dan melakukan operasi yang berbeda di dalamnya, misalnya, membandingkannya dengan dokumen asli, menambahkan atau memasukkannya ke dalam dokumen lain. Anda juga dapat memodifikasi elemen yang dikloning atau kontennya sebelum memasukkannya ke dalam dokumen lain.

## Membuat Klon Dokumen

Aspose.Words memungkinkan Anda mengkloning dokumen menggunakan metode [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) yang melakukan salinan dalam dokumen dan mengembalikannya. Dengan kata lain, itu akan mendapatkan salinan lengkap dari DOM. Metode `Clone` mempercepat pembuatan dokumen, dan Anda hanya memerlukan satu baris kode untuk mendapatkan salinan dokumen Anda.

Kloning menghasilkan dokumen baru dengan konten yang sama seperti aslinya, tetapi dengan salinan unik dari masing-masing [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node) dokumen asli. Anda juga dapat menerapkan operasi kloning ke simpul dokumen dengan menggunakan metode node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), yang memungkinkan Anda menduplikasi simpul dokumen gabungan dengan dan tanpa simpul turunannya.

{{% alert color="primary" %}}

Perhatikan bahwa saat menerapkan metode kloning, semua properti dokumen akan dikloning.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengkloning dokumen dan membuat duplikat bagian dalam dokumen tersebut:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
