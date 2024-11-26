---
title: Mengkloning Dokumen dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Mengkloning Dokumen
linktitle: Mengkloning Dokumen
type: docs
description: "Kloning dokumen untuk mendapatkan salinannya yang identik. Saat membuat salinan, simpul dan properti dokumen asli dikloning menggunakan Java."
weight: 70
url: /id/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Mengkloning dokumen adalah proses membuat salinan identik dari dokumen asli, yang dapat meningkatkan kinerja dan menyelamatkan Anda dari potensi kebocoran memori.

Artikel ini akan menjelaskan kasus penggunaan utama kloning dokumen dan cara membuat kloning dokumen menggunakan Aspose.Words.

## Operasi dengan Dokumen Kloning

Operasi kloning memungkinkan Anda mempercepat proses pembuatan dokumen karena Anda tidak perlu memuat dan mengurai dokumen dari file setiap saat.

Setelah membuat tiruan dari dokumen Anda, Anda akan dapat mengeditnya dan melakukan operasi yang berbeda di dalamnya, misalnya, membandingkannya dengan dokumen asli, menambahkan atau memasukkannya ke dalam dokumen lain. Anda juga dapat memodifikasi elemen yang dikloning atau kontennya sebelum memasukkannya ke dalam dokumen lain.

## Membuat Klon Dokumen

Aspose.Words memungkinkan Anda mengkloning dokumen menggunakan metode [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) yang melakukan salinan dalam dokumen dan mengembalikannya. Dengan kata lain, itu akan mendapatkan salinan lengkap dari DOM. Metode `Clone` mempercepat pembuatan dokumen, dan Anda hanya memerlukan satu baris kode untuk mendapatkan salinan dokumen Anda.

Kloning menghasilkan dokumen baru dengan konten yang sama seperti aslinya, tetapi dengan salinan unik dari masing-masing [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/) dokumen asli. Anda juga dapat menerapkan operasi kloning ke simpul dokumen dengan menggunakan metode node [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean), yang memungkinkan Anda menduplikasi simpul dokumen gabungan dengan dan tanpa simpul turunannya.

{{% alert color="primary" %}}

Perhatikan bahwa saat menerapkan metode kloning, semua properti dokumen akan dikloning.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengkloning dokumen dan membuat duplikat bagian dalam dokumen tersebut:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
