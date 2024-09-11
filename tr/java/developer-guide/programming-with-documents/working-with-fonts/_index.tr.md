---
title: Java ile Yazı Tipleri ile Çalışma
second_title: Aspose.Words için Java
articleTitle: Fontlarla Çalışma
linktitle: Fontlarla Çalışma
description: "Detaylarda yazı tipi biçimlendirmesi Java'u kullanarak yapılır."
type: docs
weight: 230
url: /tr/java/working-with-fonts/
---

Bir yazı tipi belirli bir boyut, renk ve tasarıma sahip karakterlerin bir kümesidir. Aspose.Words yazı tipleriyle çalışmanıza izin verir çeşitli yazı tipi ile ilgili sınıfları kullanarak, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) sınıfı dahil.

## Yazı Tipi Biçimlendirme

Geçerli yazı tipisi biçimlendirmesi bir **Font** nesnesi tarafından temsil edilir ve [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) özelliğinden döndürülür. **Font** sınıfı, Microsoft Word 'ta mümkün olan çeşitli yazı tipi özelliklerine sahiptir.

Aşağıdaki kod örneği yazı tipini nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Dolu özellikleri şimdi yazı tiplerinin dolgu biçimlendirmesini ayarlamak için de mevcuttur. Örneğin, metin dolgusunun ön plan rengi veya saydamlığını değiştirmek için bir yeteneği verir.

## Font Satır Aralığı Alma

Bir yazı tipinin satır aralığı iki üst üste yazılmış metin satırı arasındaki dikey mesafedir. Böylece, satır aralığı satırlar arasındaki boşluk ile karakterin yüksekliğini içerir.

Bu [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) özelliği, aşağıdaki örnekte gösterildiği gibi bu değeri elde etmek için **Font** sınıfına tanıtılmıştır:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Font EmphasisMark

The **Font** sınıfı, formatlamada uygulanmak üzere kullanılacak olan EmphasisMark numaralandırma değerlerini almak veya ayarlamak için bir [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) özelliği sağlar.

Aşağıdaki kod örneği, **EphasisMark** özelliğini ayarlama yöntemini göstermektedir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
