---
title: Asya Yazı Tipleri Java'te
second_title: Aspose.Words için Java
articleTitle: Asya Tipografi ile Çalışmak
linktitle: Asya Tipografi ile Çalışmak
description: "Asya tipografisinde Java ile çalışın. Asya ve Latin metni arasındaki alanı Java'da ayarlayın."
type: docs
weight: 240
url: /tr/java/working-with-asian-typography/
---

Asya Yazı Tipolojisi, Asya dillerinde yazılmış belgelerdeki metin paragrafları için bir seçenek kümesidir.

Aspose.Words Asya tipografisini [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) sınıfını ve bazı özelliklerini kullanarak destekler.

## Asyalı ve Latince metin veya sayılar arasında otomatik olarak ayarla boşluğu

Eğer hem Doğu Asya hem de Latince metni olan bir şablon tasarlıyorsanız ve form şablonunuzun görünümünü her iki metin türünün arasındaki boşlukları kontrol ederek geliştirmek istiyorsanız, bu iki tür metin arasındaki boşlukları otomatik olarak ayarlayacak şekilde form şablonunuzu yapılandırabilirsiniz. Bunu yapmak için [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) ve [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) özelliklerini `ParagraphFormat` sınıfının kullanabilirsiniz.

Aşağıdaki kod örneği **AddSpaceBetweenFarEastAndAlpha** ve **AddSpaceBetweenFarEastAndDigit** özelliklerini nasıl kullanacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Satır Kırıklığı Seçeneklerini Ayarla

Paragraf özellikleri kutusundaki Asya tipografi sekmesi Microsoft Word'te bir satır başı grubu vardır. Bu grubun seçenekleri, **ParagraphFormat** sınıfının [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) özelliklerini kullanarak ayarlanabilir.

Aşağıdaki kod örneğinde bu özelliklerin nasıl kullanılacağını gösteriyor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Asya paragraf boşluklarını ve girintilerini değiştirin

Aşağıdaki kod örneği nasıl Asya paragraf boşluğu ve girintilerin değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}