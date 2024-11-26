---
title: Bagaimana Konversi Mail Merge PDF menjadi Word
second_title: Aspose.Words untuk Java
articleTitle: Bagaimana Konversi Mail Merge PDF menjadi Word
linktitle: Bagaimana Konversi Mail Merge PDF menjadi Word
type: docs
description: "Aspose.Words untuk Java menyediakan beberapa fitur Mail Merge lanjutan yang memungkinkan Anda menggabungkan konversi PDF menjadi Word."
weight: 100
url: /id/java/how-to-mail-merge-pdf-to-word-conversion/
timestamp: 2024-01-27-14-07-04
---

Artikel ini mendemonstrasikan contoh sederhana untuk menunjukkan cara Mail Merge pada dokumen word yang dikonversi dari PDF dan kemudian menyimpan PDF. Menggunakan Aspose.Words, menjalankan proses Mail Merge sederhana pada file yang dikonversi PDF hingga Wordtidak berfungsi untuk beberapa kasus. Masalah terjadi karena `Aspose.PDF` tidak menulis MERGEFIELDs aktual selama mengonversi dokumen PDF menjadi DOCX (Word). Tetapi itu dapat dicapai dengan mengonversi teks statis tersebut menjadi MERGEFIELDs aktual dan kemudian menjalankan operasi Mail Merge. Silakan lihat solusi berikut.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-MailMergeWordToPDF.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-mailMergeTemplate.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-HandleMergeFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeWordToPDF-ReplaceEvaluatorFindAndInsertMergefield.java" >}}
