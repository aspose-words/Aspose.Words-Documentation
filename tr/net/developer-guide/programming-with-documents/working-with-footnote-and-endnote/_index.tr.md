---
title: C#'te Dipnot ve Sonnot ile Çalışma
second_title: .NET için Aspose.Words
articleTitle: Dipnot ve Sonnot ile Çalışmak
linktitle: Dipnot ve Sonnot ile Çalışmak
description: "C# kullanılarak dipnotlar ve son notlar nasıl değiştirilir?"
type: docs
weight: 160
url: /tr/net/working-with-footnote-and-endnote/
---

Aspose.Words ayrıca dipnotlar ve sonnotlarla çalışmak için bazı sınıflar, yöntemler ve özellikler sağlar.

## Son Not Ekle ve Numaralandırma Seçeneklerini Ayarla

Word belgesine dipnot veya sonnot eklemek istiyorsanız lütfen [InsertFootnote](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertfootnote/) yöntemini kullanın. Bu yöntem belgeye bir dipnot veya son not ekler.

[EndnoteOptions](https://reference.aspose.com/words/tr/net/aspose.words.notes/endnoteoptions/) ve [FootnoteOptions](https://reference.aspose.com/words/tr/net/aspose.words.notes/footnoteoptions/) sınıfları, dipnot ve sonnot için numaralandırma seçeneklerini temsil eder.

Aşağıdaki kod örneği, belgeye son notun nasıl ekleneceğini ve numaralandırma seçeneklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Dipnot Düzeni Sütunlarının Sayısını Ayarla

[Columns](https://reference.aspose.com/words/tr/net/aspose.words.notes/footnoteoptions/columns/) özelliğini kullanarak dipnot düzeni sütunlarının sayısını ayarlayabilirsiniz. Bu özellik 0 değerine sahipse dipnot alanı, görüntülenen sayfadaki sütun sayısına göre belirli sayıda sütunla biçimlendirilir.

Aşağıdaki kod örneği, dipnot düzeni için sütun sayısının nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Dipnot ve EndNote'un Konumunu Ayarlayın

Dipnot konumu her sayfanın altında veya her sayfadaki metnin altında olabilir. Son not konumu bölümün sonunda veya belgenin sonunda olabilir.

Aşağıdaki kod örneği, dipnot ve son notun konumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
