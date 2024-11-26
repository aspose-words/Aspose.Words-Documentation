---
title: Bekerja dengan karakter kontrol
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan karakter kontrol
linktitle: Bekerja dengan karakter kontrol
description: "Pengantar bekerja dengan karakter kontrol di Aspose.Words untuk C++."
type: docs
weight: 400
url: /id/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word dokumen dapat berisi berbagai karakter yang memiliki arti khusus. Biasanya mereka digunakan untuk tujuan pemformatan dan tidak digambar dalam mode normal. Anda dapat membuatnya terlihat jika Anda mengklik tombol Tampilkan / Sembunyikan Tanda Pemformatan yang terletak di bilah alat Standar.

Terkadang Anda mungkin perlu menambahkan atau menghapus karakter ke / dari teks. Misalnya, saat mendapatkan teks secara terprogram dari dokumen, Aspose.Words mempertahankan sebagian besar karakter kontrol, jadi jika Anda perlu bekerja dengan teks ini, Anda mungkin harus menghapus atau mengganti karakter tersebut.

Kelas [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) adalah gudang untuk konstanta yang mewakili karakter kontrol yang sering ditemukan dalam dokumen. Ini menyediakan versi karakter dan string dari konstanta yang sama. Misalnya, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) dan char **ControlChar.LineBreakChar** memiliki nilai yang sama.

Contoh kode berikut menunjukkan cara menggunakan karakter kontrol:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
