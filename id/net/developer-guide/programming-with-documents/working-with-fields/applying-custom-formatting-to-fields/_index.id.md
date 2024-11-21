---
title: Terapkan Pemformatan Khusus ke Bidang di C#
second_title: Aspose.Words untuk .NET
articleTitle: Terapkan Pemformatan Kustom ke Bidang
linktitle: Terapkan Pemformatan Kustom ke Bidang
description: "Format dan evaluasi hasil bidang menggunakan C#."
type: docs
weight: 40
url: /id/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Terkadang pengguna perlu menerapkan pemformatan khusus pada bidang. Pada artikel ini, kita akan melihat beberapa contoh bagaimana hal ini dapat dilakukan.

Untuk mempelajari opsi lebih lanjut, lihat daftar lengkap properti untuk setiap jenis bidang di kelas terkait di [Ruang nama bidang](https://reference.aspose.com/words/net/aspose.words.fields/).

## Cara Menerapkan Pemformatan Kustom pada Hasil Bidang

Aspose.Words menyediakan API untuk pemformatan khusus hasil bidang. Anda dapat mengimplementasikan antarmuka [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) untuk mengontrol bagaimana hasil bidang diformat. Anda dapat menerapkan saklar format numerik, yaitu \# "#.##", saklar format tanggal/waktu, yaitu \@ "dd.MM.yyyy", dan saklar format angka, yaitu \* Ordinal.

Contoh kode berikut menunjukkan cara menerapkan pemformatan khusus untuk hasil bidang:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Bagaimana mengevaluasi kondisi `IF`

Jika Anda ingin mengevaluasi kondisi `IF` setelah mail merge, Anda bisa menggunakan metode [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) yang segera mengembalikan hasil evaluasi ekspresi.

Contoh kode berikut menunjukkan cara menggunakan metode ini:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Cara Menerapkan Pemformatan Kustom ke Bidang Waktu

Secara default, Aspose.Words memperbarui bidang `TIME` dengan format waktu singkat budaya saat ini. Kami menemukan bahwa ada perbedaan antara format Microsoft Word dan format .NET/Windows, dan juga antara versi .NET Framework yang berbeda. Jika Anda ingin memformat bidang `TIME` sesuai kebutuhan Anda, Anda dapat melakukannya dengan mengimplementasikan antarmuka [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/).

Contoh kode berikut menunjukkan cara menerapkan pemformatan khusus ke bidang `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
