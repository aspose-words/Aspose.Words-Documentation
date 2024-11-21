---
title: C++ içindeki Markdown Özelliklerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Markdown Özellikleriyle Çalışma
linktitle: Markdown Özellikleriyle Çalışma
description: "C++ kullanarak Markdown özellikleri nasıl uygulanır. Tüm özellikler karşılık gelen stiller veya doğrudan biçimlendirme olarak temsil edilir."
type: docs
weight: 420
url: /tr/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Bu konuda, Aspose.Words kullanarak Markdown özelliklerinin nasıl uygulanacağı anlatılmaktadır. Markdown, kolayca HTML 'ye dönüştürülebilen düz metni biçimlendirmenin basit bir yoludur. Aspose.Words aşağıdaki Markdown özellikleri destekler:

- Başlıklar
- Blok Alıntılar
- Yatay kurallar
- Cesur vurgu
- İtalik vurgu

Markdown özellik uygulaması çoğunlukla Aspose.Words API içindeki `CommonMark` belirtimini izler ve tüm özellikler karşılık gelen stiller veya doğrudan biçimlendirme olarak temsil edilir. Bu da demek oluyor ki

- Kalın ve italik `Font.Bold` ve `Font.Italic` olarak gösterilir.
- Başlıklar, Başlık 1 - Başlık 6 stillerine sahip paragraflardır.
- Alıntılar, stil adında "Alıntı" bulunan paragraflardır.
- HorizontalRule, HorizontalRule şeklinde bir paragraftır.

{{% alert color="primary" %}}

Makalede açıklanan Markdown 'yi Aspose.Words Belge Nesne Modeline (DOM) çevirmenin nüansları vardır [Markdown'yi Belge Nesne Modeline Çevir (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Vurgulu Belge

Bu bölüm, aşağıda verilen vurgulu bir markdown belgenin nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Yukarıda verilen markdown belgeyi üretmek için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown Başlıkları Olan Belge

Bu bölüm, aşağıda verilen başlıkları içeren bir markdown belgenin nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

Yukarıda verilen markdown belgeyi üretmek için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown Blok Tırnaklı Belge

Bu bölüm, aşağıda verildiği gibi blok tırnak işaretleri içeren bir markdown belgenin nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

Yukarıda verilen markdown belgeyi üretmek için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown Yatay Kuralı Olan Belge

Bu bölüm, aşağıda verildiği gibi Yatay Kurallı bir markdown belgenin nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Yukarıda verilen markdown belgeyi üretmek için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Markdown Belgesini Okuma

Aşağıdaki kod parçacığı, bir markdown belgesinin nasıl okunacağını gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Markdown Kaydetme Seçeneklerini Belirtin

Aspose.Words API, bir belgeyi Markdown biçimine kaydederken ek seçenekler belirtmek için [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) sınıfı sağlar.

Aşağıdaki kod örneği, çeşitli Markdown kaydetme seçeneklerinin nasıl belirtileceğini göstermiştir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Markdown 'a Dışa Aktarırken Tablo içindeki içeriği Nasıl Hizalayabilirim

Aspose.Words API, Markdown belgesine dışa aktarırken tablolardaki içeriği hizalamak için hizalama yönlerini tanımlayan TableContentAlignment numaralandırma sağlar. Aşağıdaki kod örneği, tablo içindeki içeriğin nasıl hizalanacağını gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
