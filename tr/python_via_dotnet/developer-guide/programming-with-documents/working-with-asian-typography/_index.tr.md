---
title: Python'te Asya Tipografisi
second_title: Python için Aspose.Words
articleTitle: Asya Tipografisi ile Çalışmak
linktitle: Asya Tipografisi ile Çalışmak
description: "Python'i kullanarak Asya tipografisiyle çalışın. Python'te Asya ve Latin metinleri arasındaki Boşluğu ayarlayın."
type: docs
weight: 240
url: /tr/python-net/working-with-asian-typography/
---

Asya Tipografisi, Asya dillerinde yazılmış belgelerdeki metin paragrafları için bir dizi seçenektir.

Aspose.Words, [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) sınıfını ve bazı özelliklerini kullanarak Asya Tipografisini destekler.

## Asya ve Latin Metinleri veya Sayıları Arasındaki Boşluğu Otomatik Olarak Ayarlayın

Hem Doğu Asya hem de Latin metni içeren bir şablon tasarlıyorsanız ve her iki metin türü arasındaki boşlukları kontrol ederek form şablonunuzun görünümünü geliştirmek istiyorsanız form şablonunuzu bu iki metin türü arasındaki boşlukları otomatik olarak ayarlayacak şekilde yapılandırabilirsiniz.. Bunu başarmak için `ParagraphFormat` sınıfının [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) ve [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği **AddSpaceBetweenFarEastAndAlpha** ve **AddSpaceBetweenFarEastAndDigit** özelliklerinin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Satır Sonu Seçeneklerini Ayarlama

Microsoft Word'teki paragraf özellikleri iletişim kutusunun Asya Tipografisi sekmesinde satır sonu grubu bulunur. Bu grubun seçenekleri **ParagraphFormat** sınıfının [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) özellikleri kullanılarak ayarlanabilir.

Aşağıdaki kod örneği bu özelliklerin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
