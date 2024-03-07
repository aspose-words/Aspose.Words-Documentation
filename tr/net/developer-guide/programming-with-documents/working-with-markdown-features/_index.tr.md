---
title: C#'de Markdown Özellikleriyle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Markdown Özellikleriyle Çalışmak
linktitle: Markdown Özellikleriyle Çalışmak
description: "C# kullanılarak Markdown özellikleri nasıl uygulanır? Tüm özellikler karşılık gelen stiller veya doğrudan biçimlendirme olarak temsil edilir."
type: docs
weight: 420
url: /tr/net/working-with-markdown-features/
---

Bu konu, Markdown özelliklerinin Aspose.Words kullanılarak nasıl uygulanacağını açıklamaktadır. Markdown, kolayca HTML'ye dönüştürülebilen düz metni biçimlendirmenin basit bir yoludur. Aspose.Words aşağıdaki Markdown özelliklerini destekler:

- Başlıklar
- Blok alıntılar
- Yatay kurallar
- Cesur vurgu
- İtalik vurgu

Markdown özelliği uygulaması çoğunlukla Aspose.Words API'deki `CommonMark` spesifikasyonunu takip eder ve tüm özellikler karşılık gelen stiller veya doğrudan formatlama olarak temsil edilir. Bu şu anlama geliyor

- Kalın ve İtalik, `Font.Bold` ve `Font.Italic` olarak temsil edilir
- Başlıklar, Başlık 1 - Başlık 6 stiline sahip paragraflardır
- Tırnaklar, stil adında "Alıntı" bulunan paragraflardır
- HorizontalRule, HorizontalRule şeklinde bir paragraftır.

{{% alert color="primary" %}}

[Markdown'i Document Object Model'ye (DOM) çevir](/words/tr/net/translate-markdown-to-document-object-model/) makalesinde açıklanan Markdown'i Aspose.Words Document Object Model'e (DOM) çevirmenin nüansları vardır.

{{% /alert %}}

## Vurgulu Markdown Belgesi

Bu bölüm size aşağıda verilen vurgulara sahip bir markdown belgesinin nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Yukarıda verilen markdown belgesini oluşturmak için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Başlıklı Markdown Belgesi

Bu bölüm size aşağıda verilen başlıklara sahip bir markdown belgesinin nasıl oluşturulacağını gösterir:

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

Yukarıda verilen markdown belgesini oluşturmak için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## Blok Tırnaklı Markdown Belgesi

Bu bölüm size aşağıda belirtildiği gibi blok alıntılarla bir markdown belgesinin nasıl oluşturulacağını gösterir:

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

Yukarıda verilen markdown belgesini oluşturmak için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Yatay Kurallı Markdown Belgesi

Bu bölüm, aşağıda verildiği gibi Yatay Kurallı bir markdown belgesinin nasıl oluşturulacağını gösterir:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Yukarıda verilen markdown belgesini oluşturmak için aşağıdaki kod parçacığı kullanılabilir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Markdown Belgesini Okumak

Aşağıdaki kod parçacığı size bir markdown belgesinin nasıl okunacağını gösterir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Markdown Kaydetme Seçeneklerini Belirleyin

Aspose.Words API, bir belgeyi Markdown formatında kaydederken ek seçenekleri belirlemek için [MarkdownSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/markdownsaveoptions/) sınıfı sağlar.

Aşağıdaki kod örneği, çeşitli Markdown kaydetme seçeneklerinin nasıl belirtileceğini gösterdi.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Markdown'e Aktarırken Tablonun İçindeki İçeriği Hizalama

Aspose.Words API, Markdown belgesine dışa aktarırken tablolardaki içerikleri hizalamak için hizalama yönlerini tanımlayan [TableContentAlignment](https://reference.aspose.com/words/tr/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) numaralandırması sağlar. Aşağıdaki kod örneği, tablonun içindeki içeriğin nasıl hizalanacağını gösterir.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
