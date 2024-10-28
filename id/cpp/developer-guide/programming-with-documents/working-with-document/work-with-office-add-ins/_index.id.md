---
title: Bekerja dengan Add-in Office di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Add-in Office
linktitle: Bekerja dengan Add-in Office
description: "Aspose.Words untuk C++ menyediakan berbagai kelas untuk bekerja dengan Add-in Office. Anda dapat menambahkan Panel Tugas melalui ekstensi web dan menyesuaikan panel dan properti ekstensi."
type: docs
weight: 50
url: /id/cpp/work-with-office-add-ins/
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

Aspose.Words menyediakan kemampuan untuk menambahkan Ekstensi Web dari jenis Panel Tugas menggunakan kelas [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) dan [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/), dan juga memungkinkan Anda untuk menyesuaikan properti panel dan ekstensi.

Contoh kode berikut menunjukkan cara membuat panel tugas dan menambahkan ke panel tugas ekstensi web dengan properti dasar:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Untuk melihat daftar add-in panel tugas, gunakan properti [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/).

Contoh kode berikut menunjukkan cara mendapatkan daftar add-in seperti itu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
