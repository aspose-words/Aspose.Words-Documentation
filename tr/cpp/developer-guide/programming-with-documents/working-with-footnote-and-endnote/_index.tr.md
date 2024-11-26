---
title: C++ içinde Dipnot ve Sonnot ile Çalışma
second_title: Aspose.Words için C++
articleTitle: Dipnot ve Sonnot ile Çalışma
linktitle: Dipnot ve Sonnot ile Çalışma
description: "C++ kullanarak dipnotlar ve sonnotlar nasıl değiştirilir."
type: docs
weight: 160
url: /tr/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ayrıca dipnotlar ve sonnotlarla çalışmak için bazı sınıflar, yöntemler ve özellikler sağlar.

## Endnote Ekleyin ve Numaralandırma Seçeneklerini Ayarlayın

Bir Word belgesine dipnot veya sonnot eklemek istiyorsanız, lütfen [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/) yöntemini kullanın. Bu yöntem belgeye dipnot veya sonnot ekler.

[EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) ve [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) sınıfları dipnot ve sonnot için numaralandırma seçeneklerini temsil eder.

Aşağıdaki kod örneği, endnote'un belgeye nasıl ekleneceğini ve numaralandırma seçeneklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Dipnot Düzeni Sütunlarının Sayısını Ayarlama

[Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/) özelliğini kullanarak dipnot düzeni sütunlarının sayısını ayarlayabilirsiniz. Bu özellik 0 değerine sahipse, dipnotlar alanı görüntülenen sayfadaki sütun sayısına göre bir dizi sütunla biçimlendirilir.

Aşağıdaki kod örneği, dipnot düzeni için sütun sayısının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Dipnot Konumunu ayarlayın ve EndNote

Dipnot konumu, her sayfanın altında veya her sayfadaki metnin altında olabilir. Son not konumu, bölümün sonunda veya belgenin sonunda olabilir.

Aşağıdaki kod örneği dipnot ve sonnot konumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
