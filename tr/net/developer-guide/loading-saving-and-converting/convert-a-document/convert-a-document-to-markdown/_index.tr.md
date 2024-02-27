---
title: Bir Belgeyi C#'de Markdown'e Dönüştürme
second_title: .NET için Aspose.Words
articleTitle: Belgeyi Markdown'e Dönüştürme
linktitle: Belgeyi Markdown'e Dönüştürme
type: docs
description: "Desteklenen herhangi bir yükleme biçimindeki bir belgeyi C# kullanarak Markdown'e (veya tam tersi) dönüştürün."
keywords: how to convert a document to markdown c#
weight: 40
url: /tr/net/convert-a-document-to-markdown/
---

Markdown, metni işaretlemek ve onu HTML, PDF, DOCX veya diğer formatlara dönüştürmek için kullanılan popüler bir formattır. Birçok geliştirici belge yazmak, bloglarda yayınlanmak üzere makale hazırlamak, projeleri anlatmak vb. için bu formatı seçer.

Markdown bu formatla çalışmanın kolay olması ve diğer formatlara kolayca dönüştürülebilmesi nedeniyle bu kadar popülerdir. Bu nedenle Aspose.Words, [desteklenen herhangi bir yükleme biçimi](https://reference.aspose.com/words/net/aspose.words/loadformat/)'deki bir belgeyi Markdown'e ve bunun tersini dönüştürme olanağı sağlar; Aspose.Words aynı zamanda en popüler [formatları kaydet](https://reference.aspose.com/words/net/aspose.words/saveformat/)'i de destekler.

Artık Markdown formatıyla çalışma işlevselliği, belgelerle rahat ve rahat çalışmanız için size daha fazla fırsat sağlamak üzere aktif olarak geliştirilmektedir.

## Belgeyi Dönüştür

Bir belgeyi Markdown'e dönüştürmek için desteklenen herhangi bir formatta bir belge yüklemeniz veya program aracılığıyla yeni bir belge oluşturmanız yeterlidir. Daha sonra belgeyi Markdown formatında kaydetmeniz gerekir.

Aşağıdaki kod örneği DOCX'in Markdown'ye nasıl dönüştürüleceğini gösterir:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Bir belgeyi Markdown formatına dışa aktarırken görüntüleri kaydetmek istediğiniz fiziksel klasörü de belirtebilirsiniz. Varsayılan olarak Aspose.Words, görüntüleri belge dosyasının kaydedildiği klasöre kaydeder, ancak [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) özelliğini kullanarak bu davranışı geçersiz kılabilirsiniz.

**ImagesFolder** yoluyla bir klasör belirlemek, bir belgeyi bir akışa kaydettiğinizde ve Aspose.Words'de görüntüleri kaydetmek için bir klasör bulunmadığında da kullanışlıdır.

Belirtilen **ImagesFolder** mevcut değilse otomatik olarak oluşturulacaktır.

Aşağıdaki kod örneği, bir belgeyi bir akışa kaydederken görüntüler için bir klasörün nasıl belirtileceğini gösterir:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Markdown'e Dönüştürürken Kaydetme Seçeneklerini Belirleyin

Aspose.Words, bir belgeyi Markdown biçiminde kaydederken gelişmiş seçeneklerle çalışmak için [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) sınıfını kullanma yeteneği sağlar. Çoğu özellik, diğer [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) Ad Alanı sınıflarında zaten mevcut olan özellikleri devralıyor veya aşırı yüklüyor. Bunlara ek olarak Markdown formatına özel bir takım özellikler de eklenmiştir. Örneğin, tablolardaki içeriğin hizalamasını kontrol etmek için [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) özelliği veya bir belge Markdown formatına dönüştürüldüğünde görüntülerin nasıl kaydedildiğini kontrol etmek için [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) ve [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

## Desteklenen Markdown Özellikleri

Aspose.Words şu anda çoğunlukla Aspose.Words API'deki `CommonMark` spesifikasyonunu izleyen ve uygun stiller veya doğrudan biçimlendirme olarak temsil edilen aşağıdaki Markdown özelliklerini desteklemektedir:

* Başlıklar, Başlık 1 – Başlık 6 stillerine sahip paragraflardır
* Blok alıntılar, stil adında "Alıntı" bulunan paragraflardır
* IndentedCode, stil adında "IndentedCode" bulunan paragraflardır
* FencedCode, stil adında "FencedCode" bulunan paragraflardır
* InlineCode, `Font` stil adında "InlineCode" ile çalıştırılır
* Yatay kurallar `HorizontalRule` şeklindeki paragraflardır
* Kalın vurgu
* İtalik vurgu
* StrikeThrough biçimlendirmesi
* Listeler numaralandırılmış veya madde işaretli paragraflardan oluşur
* Tablolar `Table` sınıfı ile temsil edilmektedir
* Bağlantılar `FieldHyperlink` sınıfı olarak temsil edilir

Aşağıdaki örnek, bazı stillere sahip bir belgenin nasıl oluşturulacağını ve Markdown'e nasıl kaydedileceğini gösterir:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Bu kod örneğinin sonucu aşağıda gösterilmiştir.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Faydalı ipuçları

Hangi Markdown dosyalarıyla daha esnek ve rahat bir şekilde çalışabileceğinizi öğrendikten sonra birkaç nüans ve ilginç durum vardır. Örneğin, kullanma yeteneği var:

* Markdown'te çok satırlı başlıklar oluşturmanıza olanak tanıyan SetextHeading, Markdown'te normal başlıklar yalnızca tek satır olabilir. SetextHeading, "Başlık N" stilini temel alır ve seviyesi yalnızca 1 veya 2 olabilir. "Başlık N"deki N, 2'den büyük veya ona eşitse, karşılık gelen SetextHeading, "Başlık 2"yi temel alır, aksi takdirde "Başlık 1".
* Madde işaretli listelerin ilk seviyesi için farklı işaretleyiciler ("-", "+" veya "*", varsayılan işaretleyici "-"dir.) ve sıralı listeler için farklı numaralandırma türleri ("." veya ")", varsayılan işaretleyici "."'dir).
