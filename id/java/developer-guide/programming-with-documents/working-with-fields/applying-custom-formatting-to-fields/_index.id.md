---
title: Menerapkan Pemformatan Khusus ke Bidang
second_title: Aspose.Words untuk Java
articleTitle: Menerapkan Pemformatan Khusus ke Bidang
linktitle: Menerapkan Pemformatan Khusus ke Bidang
description: "Format dan evaluasi hasil bidang menggunakan Java."
type: docs
weight: 40
url: /id/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Terkadang pengguna perlu menerapkan pemformatan khusus ke bidang. Pada artikel ini, kita akan melihat beberapa contoh bagaimana hal ini dapat dilakukan.

Untuk mempelajari opsi lainnya, lihat daftar lengkap properti untuk setiap jenis bidang di kelas terkait.

## Cara Menerapkan Pemformatan Khusus ke Hasil Bidang

Aspose.Words menyediakan API untuk pemformatan khusus hasil bidang. Anda dapat menerapkan antarmuka [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) untuk mengontrol bagaimana hasil bidang diformat. Anda dapat menerapkan sakelar format numerik, yaitu \# "#.##", sakelar format tanggal / waktu, yaitu \@ "dd.MM.yyyy", dan sakelar format angka, yaitu \* Ordinal.

Contoh kode berikut menunjukkan cara menerapkan pemformatan khusus untuk hasil bidang.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Cara mengevaluasi kondisi `IF`

Jika Anda ingin mengevaluasi kondisi `IF` setelah mail merge, Anda dapat menggunakan metode [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) yang segera mengembalikan hasil evaluasi ekspresi.

Contoh kode berikut menunjukkan cara menggunakan metode ini:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Cara Menerapkan Pemformatan Khusus ke Bidang Waktu

Secara default Aspose.Words memperbarui bidang `TIME` dengan format waktu singkat budaya saat ini. Jika Anda ingin memformat bidang `TIME` sesuai dengan kebutuhan Anda, Anda dapat mencapainya dengan menerapkan antarmuka [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

Contoh kode berikut menunjukkan cara menerapkan pemformatan khusus ke bidang `TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
