---
title: Bekerja dengan Add-in Office di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Add-in Office
linktitle: Bekerja dengan Add-in Office
description: "Aspose.Words untuk Python via .NET menyediakan berbagai kelas untuk bekerja dengan Add-in Office. Anda dapat menambahkan Panel Tugas melalui ekstensi web dan menyesuaikan properti panel dan ekstensi."
type: docs
weight: 50
url: /id/python-net/work-with-office-add-ins/
---

Terkadang Anda mungkin ingin memberikan akses ke kontrol antarmuka yang menjalankan kode untuk mengubah dokumen. Aspose.Words API menyediakan modul [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/), yang memberikan berbagai kelas untuk menyesuaikan elemen dan atribut yang memperluas kosakata XML untuk mewakili Add-in Office.

Namespace WebExtensions secara kondisional dapat dibagi menjadi:

* Objek untuk bekerja dengan panel tugas
* Objek untuk bekerja dengan ekstensi web

## Menggunakan Panel Tugas

Panel tugas adalah permukaan antarmuka yang ditampilkan di sisi kanan jendela di Microsoft Word. Panel tugas memungkinkan pengguna mengakses kontrol antarmuka yang dapat menjalankan kode untuk mengubah dokumen.

Misalnya, menggunakan Aspose.Words API, Anda bisa menambahkan add-in panel tugas dan menyesuaikan tampilannya.

## Menggunakan Ekstensi Web

Ekstensi Web adalah alat yang memperluas kemampuan aplikasi Office dan berinteraksi dengan konten dokumen Office. Ekstensi Web menyediakan fungsionalitas tambahan kepada klien Office untuk meningkatkan pengalaman pengguna.

Aspose.Words menyediakan kemampuan untuk menambahkan Ekstensi Web tipe Panel Tugas menggunakan kelas [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) dan [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/), dan juga memungkinkan Anda untuk menyesuaikan properti panel dan ekstensi.

Contoh kode berikut menunjukkan cara membuat panel tugas dan menambahkan panel tugas ekstensi web dengan properti dasar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Untuk melihat daftar add-in panel tugas, gunakan properti [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/).

Contoh kode berikut menunjukkan cara mendapatkan daftar add-in:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
