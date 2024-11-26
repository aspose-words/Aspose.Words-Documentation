---
title: Footnoteler ve Endnoteler ile çalışmak Java içinde
second_title: Aspose.Words Java için
articleTitle: Footnote ve Endnote ile Çalışmak
linktitle: Footnote ve Endnote ile Çalışmak
description: "Java` kullanarak nasıl alıntı notları ve sonnotlar manipüle edilir?"
type: docs
weight: 160
url: /tr/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ayrıca alt yazılar ve son notlar ile çalışma için bazı sınıflar, yöntemler ve özellikler sağlar.

## Endnote Ekle ve Numaralandırma Seçeneklerini Ayarla

Word belgesine bir alt not veya bir sonu not eklemek istiyorsanız, lütfen [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) yöntemini kullanın. Bu yöntem belgeye bir alt not veya bir sonu not ekler.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) ve [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) sınıfları ayaknotası ve sonnot için numaralandırma seçeneklerini temsil eder.

Aşağıdaki kod örneği bir belgenin içine bir sonnot eklemeyi ve onun numaralandırma seçeneklerini ayarlamayı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Footnote Düzeni Sütunlarının Sayısını Ayarla

Alt yazı düzeni sütunlarının sayısını [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) özelliğini kullanarak ayarlayabilirsiniz. Bu özellik 0 değerine sahipse, alt yazı alanı görüntülenen sayfa sütunlarına dayalı sütunlarla biçimlendirilir.

Aşağıdaki kod örneği bir alt yazı düzeni için sütun sayısını nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Footnot ve Endnotun Konumunu Ayarla

Notun konumu her sayfanın alt tarafında veya her sayfadaki metnin altında olabilir. Sonnotun konumu bölümün sonunda ya da belgenin sonunda olabilir.

Aşağıdaki kod örneği, altnot ve ek notun konumunu nasıl ayarlayacağını göstermektedir":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
