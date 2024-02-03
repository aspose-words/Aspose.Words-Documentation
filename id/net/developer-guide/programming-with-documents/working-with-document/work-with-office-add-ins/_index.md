---
title: Bekerja dengan Add-in Office di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Add-in Office
linktitle: Bekerja dengan Add-in Office
description: "Aspose.Words untuk .NET menyediakan berbagai kelas untuk bekerja dengan Add-in Office menggunakan C#. Anda dapat menambahkan Panel Tugas melalui ekstensi web dan menyesuaikan properti panel dan ekstensi."
type: docs
weight: 50
url: /id/net/work-with-office-add-ins/
---

Terkadang Anda mungkin ingin memberikan akses ke kontrol antarmuka yang menjalankan kode untuk mengubah dokumen. Aspose.Words API menyediakan namespace `WebExtensions`, yang memberikan berbagai kelas untuk menyesuaikan elemen dan atribut yang memperluas kosakata XML untuk mewakili Add-in Office.

Namespace WebExtensions secara kondisional dapat dibagi menjadi:

* Objek untuk bekerja dengan panel tugas
* Objek untuk bekerja dengan ekstensi web

## Menggunakan Panel Tugas

Panel tugas adalah permukaan antarmuka yang ditampilkan di sisi kanan jendela di Microsoft Word. Panel tugas memungkinkan pengguna mengakses kontrol antarmuka yang dapat menjalankan kode untuk mengubah dokumen.

Misalnya, menggunakan Aspose.Words API, Anda bisa menambahkan add-in panel tugas dan menyesuaikan tampilannya.

## Menggunakan Ekstensi Web

Ekstensi Web adalah alat yang memperluas kemampuan aplikasi Office dan berinteraksi dengan konten dokumen Office. Ekstensi Web menyediakan fungsionalitas tambahan kepada klien Office untuk meningkatkan pengalaman pengguna.

Aspose.Words menyediakan kemampuan untuk menambahkan Ekstensi Web tipe Panel Tugas menggunakan kelas [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) dan [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/), dan juga memungkinkan Anda untuk menyesuaikan properti panel dan ekstensi.

Contoh kode berikut menunjukkan cara membuat panel tugas dan menambahkan panel tugas ekstensi web dengan properti dasar:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Untuk melihat daftar add-in panel tugas, gunakan properti [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/).

Contoh kode berikut menunjukkan cara mendapatkan daftar add-in:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
