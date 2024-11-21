---
title: Tipografi Asia di C#
second_title: Aspose.Words untuk .NET
articleTitle: Bekerja dengan Tipografi Asia
linktitle: Bekerja dengan Tipografi Asia
description: "Bekerja dengan tipografi Asia menggunakan C#. Sesuaikan Spasi antara teks Asia dan Latin di C#."
type: docs
weight: 240
url: /id/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Tipografi Asia adalah serangkaian opsi untuk paragraf teks dalam dokumen yang ditulis dalam bahasa Asia.

Aspose.Words mendukung Tipografi Asia menggunakan kelas [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) dan beberapa propertinya.

## Secara Otomatis Menyesuaikan Spasi antara Teks atau Angka Asia dan Latin

Jika Anda mendesain templat dengan teks Asia Timur dan Latin dan ingin menyempurnakan tampilan Templat formulir Anda dengan mengontrol spasi di antara kedua tipe teks, Anda bisa mengonfigurasi Templat formulir Anda untuk secara otomatis menyesuaikan spasi di antara kedua tipe teks ini. Untuk mencapai hal ini, Anda dapat menggunakan properti [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) dan [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) dari kelas `ParagraphFormat`.

Contoh kode berikut menunjukkan cara menggunakan properti **AddSpaceBetweenFarEastAndAlpha** dan **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Tetapkan Opsi Jeda Baris

Tab Tipografi Asia pada kotak dialog properti paragraf di Microsoft Word memiliki grup pemisah baris. Opsi grup ini dapat diatur menggunakan properti [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) dari kelas **ParagraphFormat**.

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
