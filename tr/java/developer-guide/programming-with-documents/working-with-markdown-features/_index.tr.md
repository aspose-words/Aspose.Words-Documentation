---
title: Markdown Özellikleriyle Çalışmak İçin Java
second_title: Aspose.Words için Java
articleTitle: Markdown Özellikleri ile Çalışmak
linktitle: Markdown Özellikleri ile Çalışmak
description: "Markdown özelliğini nasıl uygulayacağınızı kullanarak Java. Tüm özellikler karşılık gelen stiller veya doğrudan biçimlendirmeler olarak temsil edilir."
type: docs
weight: 420
url: /tr/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Bu konu Markdown özelliğini Aspose.Words kullanarak nasıl uygulanacağını tartışır. Markdown, düz metni kolayca HTML'ye dönüştürebilecek şekilde biçimlendirmek için basit bir yoldur. Aspose.Words, aşağıdaki Markdown özelliklerini destekler:

- Başlıklar
- Blok alıntıları
- Yatay kurallar
- Vurgulamalı kalın yazı tipi
- İtalik vurgulama

The Markdown özellik uygulaması büyük ölçüde `CommonMark` spesifikasyonuna uygun olarak Aspose.Words API 'da ve tüm özellikler karşılık gelen stiller veya doğrudan biçimlendirmeler olarak temsil edilir. Yani

- Kalın ve eğik yazı `Font.Bold` ve `Font.Italic` olarak temsil edilir
- Başlıklar heading 1 - heading 6 stilleri ile paragraflardır
- Alıntılar "Alıntı" stil adı ile paragraflar
- HorizontalRule bir şekil `HorizontalRule`'e sahip bir paragraftır.

{{% alert color="primary" %}}

Markdown'ü Aspose.WordsDocument Object Model'ye çevirmekin nüansları ( DOM), makalede [Translate Markdown to Document Object Model (DOM)](/words/java/translate-markdown-to-document-object-model/) olarak açıklanmıştır.

{{% /alert %}}


## Markdown Önemli Olan Belge

Bu bölüm aşağıda verilen vurgularla birlikte bir markdown belgesi üretmek için nasıl yapılacağını gösterir

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Aşağıdaki kod parçacığı, yukarıdaki verilen markdown belgesi üretmek için kullanılabilir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Başlıklardaki Belge

Bu bölüm başlıklar aşağıda belirtildiği şekilde bir markdown belgesi nasıl üretileceğini gösterir:

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

Aşağıdaki kod parçası yukarıdaki verilen markdown belgesi oluşturmak için kullanılabilir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Blok Alıntılarla Belirtilmiş Belge

Bu bölüm size aşağıda verilen blok alıntılarıyla birlikte bir markdown belgesi nasıl oluşturacağınızı gösterir:

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

Aşağıdaki kod parçacığı, yukarıda verilen markdown belgesi üretmek için kullanılabilir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown yatay kuralı olan belge

Bu bölüm size aşağıda verilen Horizontal Rule ile bir markdown belgesi nasıl üretileceğini gösterir:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Aşağıdaki kod parçacığı, yukarıda verilen markdown belgesini üretmek için kullanılabilir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Bir Markdown Dokümanı Okuma

Aşağıdaki kod parçacığı size bir markdown belgesini nasıl okuyacağınızı gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Kaydet Seçenekleri Belirtin Markdown

Aspose.Words API belgeyi kaydetmek için ek seçenekleri belirtirken [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) sınıfı sağlar Markdown biçiminde.

Aşağıdaki kod örneği, çeşitli Markdown kaydetme seçeneklerini nasıl belirteceğinizi gösterdi.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Masa Dışında İçeriği Nasıl Hizalar Markdown İle İhracat Yapılırken?

Aspose.Words API dışarıa aktarırken tablolarda içeriği hizalamak için hizalama yönlerini tanımlayan bir envanter sağlar [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) 2 Markdown belgesi. Aşağıdaki kod örneğinde, tablo içinde içeriği nasıl hizalayacağınız gösterilmektedir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
