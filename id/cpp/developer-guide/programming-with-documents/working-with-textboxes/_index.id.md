---
title: Bekerja dengan TextBoxes di C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan TextBoxes
linktitle: Bekerja dengan TextBoxes
description: "Pengantar fitur kotak teks tertaut di Aspose.Words untuk C++."
type: docs
weight: 250
url: /id/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Dalam Aspose.Words, kelas [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) digunakan untuk menentukan bagaimana teks ditampilkan di dalam bentuk. Ini memperlihatkan properti publik bernama **Parent** untuk mendapatkan bentuk induk untuk kotak teks sehingga pelanggan dapat menemukan [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) tertaut dari **TextBox** terkait.

## Buat Tautan

Kelas **TextBox** menyediakan metode [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) untuk memeriksa apakah **TextBox** dapat ditautkan ke target **Textbox**.

Contoh kode berikut menunjukkan cara memeriksa apakah `TextBox` dapat ditautkan ke Kotak Teks target:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Periksa Urutan TextBox

Ada beberapa cara untuk menampilkan teks dalam bentuk. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) dapat berupa Kepala, Tengah, atau Ekor dari suatu barisan.

Contoh kode berikut menunjukkan cara memeriksa apakah **TextBox** adalah Kepala, Ekor, atau Bagian Tengah urutan:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Putuskan Tautan

Dengan menggunakan metode [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), Anda dapat memutuskan tautan ke **TextBox** berikutnya.

Contoh kode berikut menunjukkan cara memutuskan tautan untuk **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
