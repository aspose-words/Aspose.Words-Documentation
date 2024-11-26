---
title: Mencetak Dokumen
second_title: Aspose.Words untuk Java
articleTitle: Mencetak Dokumen Secara Terprogram atau Menggunakan Dialog
linktitle: Mencetak Dokumen Secara Terprogram atau Menggunakan Dialog
description: "Cetak dokumen menggunakan Java melalui dialog Pengaturan, Pratinjau Cetak, dan kemajuan Cetak."
type: docs
weight: 55
url: /id/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Artikel ini menjelaskan cara mencetak dokumen pengolah kata menggunakan Aspose.Words API. Ini juga mendemonstrasikan metode pencetakan dokumen dengan Pengaturan, Pratinjau Cetak, dan dialog kemajuan Cetak.

## Mencetak Dokumen dengan Pengaturan dan Dialog Pratinjau Cetak

Saat bekerja dengan dokumen, seringkali diperlukan untuk mencetaknya ke printer yang dipilih. Sangat membantu untuk menggunakan dialog pratinjau cetak untuk memeriksa secara visual bagaimana dokumen yang dicetak akan muncul dan memilih opsi cetak yang relevan.

Aspose.Words tidak memiliki dialog atau formulir bawaan tetapi mengimplementasikan kelas [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) menimpa kedua java.awt.cetak.Dapat dicetak dan java.awt.cetak.Dapat dibaca.

Contoh berikut menunjukkan cara menggunakan kelas ini untuk mencetak dokumen dari Aspose.Words melalui dialog Pratinjau cetak dan Pengaturan:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Mencetak Banyak Halaman dalam Satu Lembar

Aspose.Words mengimplementasikan kelas **MultipagePrintDocument**, untuk menyempurnakan operasi pencetakan guna mengimplementasikan logika kustom Anda dengan menentukan tampilan dokumen pada halaman yang dicetak. Kelas **MultipagePrintDocument** menyediakan kemampuan untuk mencetak beberapa halaman pada satu lembar kertas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Anda dapat mengunduh contoh penggunaan kelas **MultipagePrintDocument** dari [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

Hasil dari contoh kode ini ditunjukkan di bawah ini:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
