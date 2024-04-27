---
title: Bekerja dengan Office Add-ins di Java
second_title: Aspose.Words Sitemap Java
articleTitle: Bekerja dengan Add-ins Office
linktitle: Bekerja dengan Add-ins Office
description: "Aspose.Words Sitemap Java menyediakan berbagai kelas untuk bekerja dengan Office Add-ins. Anda dapat menambahkan Tugas Pane melalui ekstensi web dan menyesuaikan pane dan sifat ekstensi."
type: docs
weight: 50
url: /id/java/work-with-office-add-ins/
---

Kadang-kadang Anda mungkin ingin memberikan akses ke kontrol antarmuka yang menjalankan kode untuk memodifikasi dokumen. Aspose.Words API Sitemap `WebExtensions` namespace, yang memberikan berbagai kelas untuk menyesuaikan unsur-unsur dan atribut yang memperluas vocabulary XML untuk mewakili Office Add-ins.

WebExtensions namespace dapat secara kondisional dibagi menjadi:

* Objek untuk bekerja dengan pane tugas
* Objek untuk bekerja dengan ekstensi web

## Menggunakan Tugas Panes

Pan tugas adalah permukaan antarmuka yang ditampilkan di sisi kanan jendela di Microsoft WordSitemap Tugas pane memungkinkan pengguna untuk mengakses kontrol antarmuka yang dapat menjalankan kode untuk memodifikasi dokumen.

Misalnya, menggunakan Aspose.Words API, Anda dapat menambahkan add-in pane tugas dan menyesuaikan penampilannya.

## Menggunakan Ekstensi Web

Ekstensi Web adalah alat yang memperluas kemampuan aplikasi Office dan berinteraksi dengan konten dokumen Office. Ekstensi Web menyediakan fungsi tambahan untuk klien Office untuk meningkatkan pengalaman pengguna.

Aspose.Words memberikan kemampuan untuk menambahkan Ekstensi Web dari jenis Tugas Pane menggunakan [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) Login [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) Kelas, dan juga memungkinkan Anda untuk menyesuaikan sifat pane dan ekstensi.

Contoh kode berikut menunjukkan cara membuat panci tugas dan menambah panci tugas ekstensi web dengan sifat dasar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Untuk melihat daftar add-ins pane tugas, gunakan [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) Login

Contoh kode berikut menunjukkan cara mendapatkan daftar add-in seperti itu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

