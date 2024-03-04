---
title: C#'te Asya Tipografisi
second_title: .NET için Aspose.Words
articleTitle: Asya Tipografisi ile Çalışmak
linktitle: Asya Tipografisi ile Çalışmak
description: "C#'i kullanarak Asya tipografisiyle çalışın. C#'te Asya ve Latin metinleri arasındaki Boşluğu ayarlayın."
type: docs
weight: 240
url: /tr/net/working-with-asian-typography/
---

Asya Tipografisi, Asya dillerinde yazılmış belgelerdeki metin paragrafları için bir dizi seçenektir.

Aspose.Words, [ParagraphFormat](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/) sınıfını ve bazı özelliklerini kullanarak Asya Tipografisini destekler.

## Asya ve Latin Metinleri veya Sayıları Arasındaki Boşluğu Otomatik Olarak Ayarlayın

Hem Doğu Asya hem de Latin metni içeren bir şablon tasarlıyorsanız ve her iki metin türü arasındaki boşlukları kontrol ederek form şablonunuzun görünümünü geliştirmek istiyorsanız form şablonunuzu bu iki metin türü arasındaki boşlukları otomatik olarak ayarlayacak şekilde yapılandırabilirsiniz.. Bunu başarmak için `ParagraphFormat` sınıfının [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) ve [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği **AddSpaceBetweenFarEastAndAlpha** ve **AddSpaceBetweenFarEastAndDigit** özelliklerinin nasıl kullanılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Satır Sonu Seçeneklerini Ayarlama

Microsoft Word'teki paragraf özellikleri iletişim kutusunun Asya Tipografisi sekmesinde satır sonu grubu bulunur. Bu grubun seçenekleri **ParagraphFormat** sınıfının [FarEastLineBreakControl](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/hangingpunctuation/) özellikleri kullanılarak ayarlanabilir.

Aşağıdaki kod örneği bu özelliklerin nasıl kullanılacağını gösterir:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
