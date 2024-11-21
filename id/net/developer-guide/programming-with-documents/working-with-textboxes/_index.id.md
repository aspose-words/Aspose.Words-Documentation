---
title: Bekerja dengan Kotak Teks di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Kotak Teks
linktitle: Bekerja dengan Kotak Teks
description: "Pengenalan fitur kotak teks tertaut di Aspose.Words untuk .NET."
type: docs
weight: 250
url: /id/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Di Aspose.Words, kelas [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) digunakan untuk menentukan bagaimana teks ditampilkan di dalam suatu bentuk. Ini memperlihatkan properti publik bernama **Parent** untuk mendapatkan bentuk induk untuk kotak teks sehingga pelanggan dapat menemukan [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) tertaut dari **TextBox** terkait.

## Membuat Tautan

Kelas **TextBox** menyediakan metode [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) untuk memeriksa apakah **TextBox** dapat ditautkan ke **Textbox** target.

Contoh kode berikut menunjukkan cara memeriksa apakah `TextBox` dapat ditautkan ke Kotak Teks target:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Periksa Urutan Kotak Teks

Ada beberapa cara untuk menampilkan teks dalam bentuk. [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) bisa menjadi Kepala, Tengah, atau Ekor dari suatu urutan.

Contoh kode berikut menunjukkan cara memeriksa apakah **TextBox** adalah Kepala, Ekor, atau Tengah dari urutan:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Memutus Tautan

Dengan menggunakan metode [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) Anda dapat memutus tautan ke **TextBox** berikutnya.

Contoh kode berikut menunjukkan cara memutus tautan untuk **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
