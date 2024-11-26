---
title: Bekerja dengan TextBoxes Tertaut dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan TextBoxesTertaut
linktitle: Bekerja dengan TextBoxesTertaut
description: "Pengantar fitur kotak teks tertaut di Aspose.Words untuk Java."
type: docs
weight: 250
url: /id/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

Dalam Aspose.Words, kelas [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) digunakan untuk menentukan bagaimana teks ditampilkan di dalam bentuk. Ini menyediakan properti publik bernama Parent untuk mendapatkan bentuk parent untuk kotak teks agar pelanggan dapat menemukan linked [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) dari linked **TextBox**.

## Buat Tautan

Kelas **TextBox** menyediakan metode [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) untuk memeriksa apakah **TextBox** dapat ditautkan ke target **Textbox**.

Contoh kode berikut menunjukkan cara memeriksa apakah `TextBox` dapat ditautkan ke Kotak Teks target:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Periksa Urutan TextBox

Ada beberapa cara untuk menampilkan teks dalam bentuk. [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) dapat berupa Kepala, Tengah, atau Ekor dari suatu barisan.

Contoh kode berikut menunjukkan cara memeriksa apakah **TextBox** adalah Kepala, Ekor, atau Bagian Tengah urutan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Putuskan Tautan

Dengan menggunakan metode [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink), Anda dapat memutuskan tautan ke **TextBox** berikutnya.

Contoh kode berikut menunjukkan cara memutuskan tautan untuk **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
