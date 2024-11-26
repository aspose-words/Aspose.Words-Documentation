---
title: Bekerja dengan Add-in Office dalam Java
second_title: Aspose.Words untuk Java
articleTitle: Bekerja dengan Add-in Office
linktitle: Bekerja dengan Add-in Office
description: "Aspose.Words untuk Java menyediakan berbagai kelas untuk bekerja dengan Add-in Office. Anda dapat menambahkan Panel Tugas melalui ekstensi web dan menyesuaikan panel dan properti ekstensi."
type: docs
weight: 50
url: /id/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Terkadang Anda mungkin ingin memberikan akses ke kontrol antarmuka yang menjalankan kode untuk memodifikasi dokumen. Aspose.Words API menyediakan namespace `WebExtensions`, yang memberikan berbagai kelas untuk menyesuaikan elemen dan atribut yang memperluas kosakata XML untuk mewakili Add-in Office.

WebExtensions namespace dapat dibagi secara kondisional menjadi:

* Objek untuk bekerja dengan panel tugas
* Objek untuk bekerja dengan ekstensi web

## Menggunakan Panel Tugas

Panel tugas adalah permukaan antarmuka yang ditampilkan di sisi kanan jendela dalam Microsoft Word. Panel tugas memungkinkan pengguna mengakses kontrol antarmuka yang dapat menjalankan kode untuk memodifikasi dokumen.

Misalnya, menggunakan Aspose.Words API, Anda dapat menambahkan add-in panel tugas dan menyesuaikan tampilannya.

## Menggunakan Ekstensi Web

Ekstensi Web adalah alat yang memperluas kemampuan aplikasi Office dan berinteraksi dengan konten dokumen Office. Ekstensi Web menyediakan fungsionalitas tambahan untuk klien Office untuk meningkatkan pengalaman pengguna.

Aspose.Words menyediakan kemampuan untuk menambahkan Ekstensi Web dari jenis Panel Tugas menggunakan kelas [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) dan [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/), dan juga memungkinkan Anda untuk menyesuaikan properti panel dan ekstensi.

Contoh kode berikut menunjukkan cara membuat panel tugas dan menambahkan ke panel tugas ekstensi web dengan properti dasar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Untuk melihat daftar add-in panel tugas, gunakan properti [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes).

Contoh kode berikut menunjukkan cara mendapatkan daftar add-in seperti itu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

