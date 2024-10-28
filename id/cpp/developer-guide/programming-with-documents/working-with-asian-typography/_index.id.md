---
title: Tipografi Asia dalam C++
second_title: Aspose.Words untuk C++
articleTitle: Bekerja dengan Tipografi Asia
linktitle: Bekerja dengan Tipografi Asia
description: "Bekerja dengan tipografi Asia menggunakan C++. Sesuaikan Spasi antara teks Asia dan Latin di C++."
type: docs
weight: 240
url: /id/cpp/working-with-asian-typography/
---

Tipografi Asia adalah sekumpulan opsi untuk paragraf teks dalam dokumen yang ditulis dalam bahasa Asia.

Aspose.Words mendukung Tipografi Asia menggunakan kelas [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) dan beberapa propertinya.

## Secara Otomatis Menyesuaikan Spasi antara Teks atau Angka Asia dan Latin

Jika Anda mendesain templat dengan teks Asia Timur dan Latin dan ingin menyempurnakan tampilan templat formulir Anda dengan mengontrol spasi di antara kedua jenis teks tersebut, Anda dapat mengonfigurasi templat formulir Anda untuk menyesuaikan spasi di antara kedua jenis teks ini secara otomatis. Untuk mencapainya, Anda dapat menggunakan properti [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) dan [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) dari kelas `ParagraphFormat`.

Contoh kode berikut menunjukkan cara menggunakan properti **AddSpaceBetweenFarEastAndAlpha** dan **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Setel Opsi Jeda Baris

Tab Tipografi Asia pada kotak dialog properti paragraf di Microsoft Word memiliki grup pemisah baris. Opsi grup ini dapat diatur menggunakan [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) properti dari kelas **ParagraphFormat**.

Contoh kode berikut menunjukkan cara menggunakan properti ini:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
