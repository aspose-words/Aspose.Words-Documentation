---
title: Dipnot ve Sonnot ile Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Dipnot ve Sonnot ile Çalışmak
linktitle: Dipnot ve Sonnot ile Çalışmak
description: "Bir belgeye dipnotlar veya son notlar ekleyin ve Python'i kullanarak seçeneklerini belirtin."
type: docs
weight: 160
url: /tr/python-net/working-with-footnote-and-endnote/
---

Aspose.Words ayrıca dipnotlar ve sonnotlarla çalışmak için bazı sınıflar, yöntemler ve özellikler sağlar.

## Son Not Ekle ve Numaralandırma Seçeneklerini Ayarla

Word belgesine dipnot veya sonnot eklemek istiyorsanız lütfen [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) yöntemini kullanın. Bu yöntem belgeye bir dipnot veya sonnot ekler.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) ve [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) sınıfları, dipnot ve sonnot için numaralandırma seçeneklerini temsil eder.

Aşağıdaki kod örneği, belgeye son notun nasıl ekleneceğini ve numaralandırma seçeneklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Dipnot Düzeni Sütunlarının Sayısını Ayarla

[columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) özelliğini kullanarak dipnot düzeni sütunlarının sayısını ayarlayabilirsiniz. Bu özellik 0 değerine sahipse dipnot alanı, görüntülenen sayfadaki sütun sayısına göre belirli sayıda sütunla biçimlendirilir.

Aşağıdaki kod örneği, dipnot düzeni için sütun sayısının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Dipnot ve EndNote'un Konumunu Ayarlayın

Dipnot konumu her sayfanın altında veya her sayfadaki metnin altında olabilir. Son not konumu bölümün sonunda veya belgenin sonunda olabilir.

Aşağıdaki kod örneği, dipnot ve son notun konumunun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
