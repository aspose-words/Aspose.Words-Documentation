---
title: Menerapkan Pemformatan Khusus ke Bidang di C++
second_title: Aspose.Words untuk C++
articleTitle: Menerapkan Pemformatan Khusus ke Bidang
linktitle: Menerapkan Pemformatan Khusus ke Bidang
description: "Format dan evaluasi hasil bidang menggunakan C++."
type: docs
weight: 40
url: /id/cpp/applying-custom-formatting-to-fields/
---

Terkadang pengguna perlu menerapkan pemformatan khusus ke bidang. Pada artikel ini, kita akan melihat beberapa contoh bagaimana hal ini dapat dilakukan.

Untuk mempelajari opsi lainnya, lihat daftar lengkap properti untuk setiap jenis bidang di kelas terkait di [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Cara Menerapkan Pemformatan Khusus ke Hasil Bidang

Aspose.Words menyediakan API untuk pemformatan khusus hasil bidang. Anda dapat menerapkan antarmuka [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) untuk mengontrol bagaimana hasil bidang diformat. Anda dapat menerapkan sakelar format numerik, yaitu \#"#.## ", sakelar format tanggal / waktu, yaitu \@ " dd.MM.yyyy", dan sakelar format angka, yaitu \* Ordinal.

Contoh kode berikut menunjukkan cara menerapkan pemformatan khusus untuk hasil bidang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Cara mengevaluasi kondisi `IF`

Jika Anda ingin mengevaluasi kondisi `IF` setelah mail merge, Anda dapat menggunakan metode [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) yang segera mengembalikan hasil evaluasi ekspresi.

Contoh kode berikut menunjukkan cara menggunakan metode ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Cara Menerapkan Pemformatan Khusus ke Bidang Waktu

Secara default Aspose.Words memperbarui bidang `TIME` dengan format waktu singkat budaya saat ini. Jika Anda ingin memformat bidang `TIME` sesuai dengan kebutuhan Anda, Anda dapat mencapainya dengan menerapkan antarmuka [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Contoh kode berikut menunjukkan cara menerapkan pemformatan khusus ke bidang `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}