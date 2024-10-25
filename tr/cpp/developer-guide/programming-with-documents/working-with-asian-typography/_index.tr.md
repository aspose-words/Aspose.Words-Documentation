---
title: Asya Tipografisi C++
second_title: Aspose.Words için C++
articleTitle: Asya Tipografisi ile Çalışmak
linktitle: Asya Tipografisi ile Çalışmak
description: "C++ kullanarak Asya tipografisi ile çalışın. Asya ve Latin metni arasındaki boşluğu C++ olarak ayarlayın."
type: docs
weight: 240
url: /tr/cpp/working-with-asian-typography/
---

Asya Tipografisi, Asya dillerinde yazılmış belgelerdeki metin paragrafları için bir dizi seçenektir.

Aspose.Words, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) sınıfını ve bazı özelliklerini kullanarak Asya Tipografisini destekler.

## Asya ve Latin Metin veya Sayılar arasındaki Boşluğu Otomatik Olarak Ayarlayın

Hem Doğu Asya hem de Latin metni içeren bir şablon tasarlıyorsanız ve her iki metin türü arasındaki boşlukları denetleyerek form şablonunuzun görünümünü geliştirmek istiyorsanız, form şablonunuzu bu iki metin türü arasındaki boşlukları otomatik olarak ayarlayacak şekilde yapılandırabilirsiniz. Bunu başarmak için `ParagraphFormat` sınıfının [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) ve [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği, **AddSpaceBetweenFarEastAndAlpha** ve **AddSpaceBetweenFarEastAndDigit** özelliklerinin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Satır Sonu Seçeneklerini Ayarlama

Microsoft Word paragraf özellikleri iletişim kutusunun Asya Tipografisi sekmesinde satır sonu grubu bulunur. Bu grubun seçenekleri şu şekilde ayarlanabilir: [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) **ParagraphFormat** sınıfının özellikleri.

Aşağıdaki kod örneği, bu özelliklerin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
