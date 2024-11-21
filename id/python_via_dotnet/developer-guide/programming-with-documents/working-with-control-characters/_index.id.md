---
title: Bekerja Dengan Karakter Kontrol
second_title: Aspose.Words untuk Python via .NET
articleTitle: Bekerja Dengan Karakter Kontrol
linktitle: Bekerja Dengan Karakter Kontrol
description: "Pengantar cara bekerja dengan karakter kontrol di Aspose.Words untuk Python."
type: docs
weight: 400
url: /id/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Dokumen Microsoft Word mungkin berisi berbagai karakter yang memiliki arti khusus. Biasanya mereka digunakan untuk tujuan pemformatan dan tidak digambar dalam mode normal. Anda dapat membuatnya terlihat jika Anda mengklik tombol Tampilkan/Sembunyikan Tanda Pemformatan yang terletak pada toolbar Standar.

Terkadang Anda mungkin perlu menambah atau menghapus karakter ke/dari teks. Misalnya, ketika memperoleh teks secara terprogram dari dokumen, Aspose.Words mempertahankan sebagian besar karakter kontrol, jadi jika Anda perlu bekerja dengan teks ini, Anda mungkin harus menghapus atau mengganti karakter tersebut.

Kelas [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) adalah gudang konstanta yang mewakili karakter kontrol yang sering ditemui dalam dokumen. Ini menyediakan versi char dan string dari konstanta yang sama. Misalnya string [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) dan char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) memiliki nilai yang sama.

Contoh kode berikut menunjukkan cara menggunakan karakter kontrol:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
