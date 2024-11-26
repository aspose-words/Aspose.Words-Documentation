---
title: Bekerja dengan Kotak Teks di Python
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja dengan Kotak Teks
linktitle: Bekerja dengan Kotak Teks
description: "Bekerja dengan kotak teks dalam dokumen menggunakan Python."
type: docs
weight: 250
url: /id/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Di Aspose.Words, kelas [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) digunakan untuk menentukan bagaimana teks ditampilkan di dalam suatu bentuk. Ini menyediakan properti publik bernama [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) untuk mendapatkan bentuk induk kotak teks guna memungkinkan pelanggan menemukan [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) tertaut dari [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) tertaut.

## Membuat Tautan

Kelas [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) menyediakan metode [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) untuk memeriksa apakah [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) dapat dihubungkan ke Textbox target.

Contoh kode berikut menunjukkan cara memeriksa apakah `TextBox` dapat ditautkan ke Kotak Teks target:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Periksa Urutan Kotak Teks

Ada beberapa cara untuk menampilkan teks dalam bentuk. [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) bisa menjadi Kepala, Tengah, atau Ekor dari suatu urutan.

Contoh kode berikut menunjukkan cara memeriksa apakah **TextBox** adalah Kepala, Ekor, atau Tengah dari urutan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Memutus Tautan

Dengan menggunakan metode [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) Anda dapat memutus tautan ke **TextBox** berikutnya.

Contoh kode berikut menunjukkan cara memutus tautan untuk **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
