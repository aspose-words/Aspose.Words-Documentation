---
title: Bir belgeden Markdown olarak dönüştürün Java
second_title: Aspose.Words için Java
articleTitle: Bir belgesi Markdown 'e dönüştürün
linktitle: Bir belgesi Markdown 'e dönüştürün
type: docs
description: "Herhangi bir desteklenen yük formatında bir belgeyi Markdown ve bunun tersini kullanarak dönüştürün Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /tr/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown metin işaretlemesi için kullanılan popüler bir formattır ve bunu HTML, PDF, DOCX veya diğer biçimlere dönüştürür. Birçok geliştirici, yazma belgelerini, bloglarda yayınlamak üzere makaleleri hazırlamayı, projeleri tanımlamayı vb. amaçlarla bu biçimi seçer.

Markdown bu kadar popüler çünkü bu formatta çalışmak kolaydır ve diğer formatlara oldukça kolay dönüştürülebilir. Bu nedenle, Aspose.Words bir belgeyi [any supported load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)'tan Markdown'e ve tersine dönüştürme yeteneğini sağlar – Aspose.Words ayrıca en popüler olanı destekler [save formats](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Şimdi Markdown biçimiyle çalışmak için işlevsellik aktif olarak geliştirilmektedir böylece belgelere kolay ve rahat bir şekilde erişebilirsiniz.

## Bir belgesi Markdown olarak dönüştürün

Bir belgeyi Markdown'e dönüştürmek için, desteklenen herhangi bir biçimde veya programlı olarak yeni bir tane oluşturmak için bir belge yüklemeniz gerekir. Ardından belgeyi Markdown biçiminde kaydetmeniz gerekir.

Aşağıdaki kod örneği, DOCX'i nasıl dönüştürdüğünüzü gösterir: Markdown

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Kaydetme Seçeneklerini Belirtin Markdown ile Dönüştürürken

Aspose.Words bir belgenin [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) sınıfını kullanarak Markdown biçiminde kaydetme sırasında gelişmiş seçeneklerle çalışmayı sağlayan özelliğe sahiptir. Diğer miras alan veya geçersiz kılan özelliklere ek olarak, Markdown biçimi için özel olan bir dizi özellik de eklenmiştir. Örneğin, tablolardaki içeriğin hizalamasını kontrol etmek için [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) özelliği veya [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) ve [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) bir belgenin Markdown biçimine dönüştürülmesi sırasında görüntülerin nasıl kaydedileceğini kontrol etmek için özellikler.

## Desteklenen Markdown Özellikleri

Aspose.Words şu anda aşağıdaki Markdown özelliklerini destekler, bunlar büyük ölçüde `CommonMark` belirtimine uygun olarak Aspose.Words'te API ve uygun stiller veya doğrudan biçimlendirme ile gösterilir:

Başlıklar Başlık 1 – Başlık 6 stillerine sahip paragraflardır
Blockquotes, "Alıntı" stil adı ile paragraflar
GirintiliKod adı "GirintiliKod" tarzında paragraflar içeren
* FencedCode, "FencedCode" stil adı ile paragraflar
* InlineCode `Font` biçim adı içinde "InlineCode" ile çalıştırılır
Yatay kurallar şekle sahip paragraflardır `HorizontalRule`
* Kalın vurgu
* İtalik vurgu
* StrikeThrough biçimlendirme
Listeler numaralandırılmış veya noktalama işaretleri paragraflar
- Masalar `Table` sınıfı ile temsil edilir
* Bağlantılar `FieldHyperlink` sınıfı olarak temsil edilir

Aşağıdaki örnek, bazı stiller ile bir belge oluşturma ve bunu Markdown'e kaydetme gösteriyor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Kod örneğinin sonucu aşağıda gösterilmiştir.

![markdown-example-aspose-words-java](markdown-example.png)

## Yararlı İpuçları

Birkaç nüans ve ilginç vakalar var ve bunları öğrendiğinizde Markdown dosyalarla daha esnek ve kolay çalışabilirsiniz. Örneğin, şu yeteneğe sahipsiniz:

- *SetextHeading adlı özellik, Markdown 'da birden fazla satır başlığı oluşturmanıza izin verirken, normal başlıklar Markdown 'da yalnızca tek satırlı olabilir. SetextHeading, bir "Heading N" stiline dayanır ve seviyesi yalnızca 1 veya 2 olabilir. Eğer N'deki "Heading N", 2'den büyük veya ona eşitse, buna karşılık gelen SetextHeading, "Heading 2" temel alınarak oluşturulur; aksi takdirde "Heading 1" temel alınarak oluşturulur.
Bullet listlerinin birinci seviyesi için farklı işaretler ("-" ya da "+" ya da "*". Varsayılan işaret "-".). Sıralı listeler için de farklı numaralandırma türleri (". " ya da ". "). Varsayılan işaret ".".)
