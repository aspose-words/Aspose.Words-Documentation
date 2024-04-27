---
title: Menyiapkan Dokumen dalam Java
second_title: Aspose.Words Sitemap Java
articleTitle: Login
linktitle: Login
type: docs
description: "Klon dokumen untuk mendapatkan salinannya yang identik. Saat membuat salinan, node dan sifat dokumen asli dikloning menggunakan JavaSitemap"
weight: 70
url: /id/java/clone-a-document/
---

Menutup dokumen adalah proses pembuatan salinan dokumen asli yang identik, yang dapat meningkatkan kinerja dan menyimpan Anda dari kebocoran memori potensial.

Artikel ini akan menjelaskan kasus penggunaan utama pembekuan dokumen dan cara membuat klon dokumen menggunakan Aspose.WordsSitemap

## Operasi dengan Dokumen Cloning

Operasi clone memungkinkan Anda untuk membuat proses membuat dokumen lebih cepat karena Anda tidak perlu memuat dan membuat dokumen dari file setiap kali.

Setelah membuat klon dokumen Anda, Anda akan dapat mengeditnya dan melakukan operasi yang berbeda di atasnya, misalnya, bandingkan dengan dokumen asli, lampiran atau memasukkannya ke dokumen lain. Anda juga dapat memodifikasi elemen yang dikloning atau konten mereka sebelum memasukkannya ke dokumen lain.

## Membuat Clone Dokumen

Aspose.Words memungkinkan Anda untuk clone dokumen menggunakan Meme it [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) metode yang melakukan salinan dalam dokumen dan mengembalikannya. Dengan kata lain, itu akan mendapatkan salinan penuh dari DOMSitemap Login `Clone` metode mempercepat generasi dokumen, dan Anda hanya perlu satu baris kode untuk mendapatkan salinan dokumen Anda.

Cloning menghasilkan dokumen baru dengan konten yang sama seperti aslinya, tetapi dengan salinan unik dari setiap dokumen asli [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/)Sitemap Anda juga dapat menerapkan operasi klon ke node dokumen dengan menggunakan node [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) metode, yang memungkinkan Anda untuk menggandakan node dokumen komposit dengan dan tanpa node anak mereka.

{{% alert color="primary" %}}

Perhatikan bahwa ketika menerapkan metode pembekuan semua sifat dokumen akan dicukur.

{{% /alert %}}

Contoh kode berikut menunjukkan cara mengkloning dokumen dan membuat duplikat bagian dalam dokumen itu:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
