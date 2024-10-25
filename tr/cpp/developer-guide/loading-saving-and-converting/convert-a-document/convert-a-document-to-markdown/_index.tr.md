---
title: Bir Belgeyi C++'de Markdown'a Dönüştürün
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi Markdown konumuna Dönüştürme
linktitle: Bir Belgeyi Markdown konumuna Dönüştürme
type: docs
description: "Desteklenen herhangi bir yükleme biçimindeki bir belgeyi C++ kullanarak Markdown'a ve tam tersine dönüştürün."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /tr/cpp/convert-a-document-to-markdown/
---

Markdown, metni işaretlemek ve daha sonra dönüştürmek için kullanılan popüler bir biçimdir. HTML, PDF, DOCX, veya diğer formatlar. Birçok geliştirici, dokümantasyon yazmak, bloglarda yayınlanmak üzere makaleler hazırlamak, projeleri tanımlamak vb. İçin bu formatı seçer.

Markdown çok popülerdir çünkü bu formatla çalışmak kolaydır ve oldukça basit bir şekilde diğer formatlara dönüştürülebilir. Bu nedenle Aspose.Words, [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) 'daki bir belgeyi Markdown 'e dönüştürme olanağı sağlar ve bunun tersi de geçerlidir – Aspose.Words ayrıca en popüler [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) 'i de destekler.

Artık Markdown formatıyla çalışma işlevselliği, belgelerle rahat ve konforlu çalışma için size daha fazla fırsat sunmak üzere aktif olarak geliştiriliyor.

## Bir Belgeyi Dönüştürme

Bir belgeyi Markdown 'a dönüştürmek için, desteklenen herhangi bir biçimde bir belge yüklemeniz veya programlı olarak yeni bir belge oluşturmanız yeterlidir. Ardından belgeyi Markdown biçimine kaydetmeniz gerekir.

Aşağıdaki kod örneği, DOCX'in Markdown'a nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Belgeyi Markdown biçimine dışa aktarırken görüntüleri kaydetmek istediğiniz fiziksel klasörü de belirtebilirsiniz. Varsayılan olarak, Aspose.Words görüntüleri belge dosyasının kaydedildiği klasöre kaydeder, ancak [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) özelliğini kullanarak bu davranışı geçersiz kılabilirsiniz.

**ImagesFolder** aracılığıyla bir klasör belirtmek, bir belgeyi bir akışa kaydederseniz ve Aspose.Words görüntüleri kaydetmek için bir klasöre sahip değilse de kullanışlıdır.

Belirtilen **ImagesFolder** yoksa, otomatik olarak oluşturulur.

Aşağıdaki kod örneği, bir belgeyi akışa kaydederken görüntüler için bir klasörün nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Markdown'a Dönüştürürken Kaydetme Seçeneklerini Belirtin

Aspose.Words, bir belgeyi Markdown biçimine kaydederken gelişmiş seçeneklerle çalışmak için [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) sınıfını kullanma olanağı sağlar. Çoğu özellik, diğer [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) Ad Alanı sınıflarında zaten var olan özellikleri devralır veya aşırı yükler. Bunlara ek olarak, Markdown biçimine özgü bir dizi özellik de eklenmiştir. Örneğin, tablolardaki içeriğin hizalanmasını denetlemek için [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) özelliği veya bir belgeyi Markdown biçimine dönüştürdükten sonra görüntülerin nasıl kaydedileceğini denetlemek için [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) ve [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

## Desteklenen Markdown Özellikler

Aspose.Words şu anda, çoğunlukla Aspose.Words API içindeki `CommonMark` belirtimini izleyen ve uygun stiller veya doğrudan biçimlendirme olarak temsil edilen aşağıdaki Markdown özellikleri desteklemektedir:

* Başlıklar, Başlık 1 - Başlık 6 stillerine sahip paragraflardır
* Blok alıntılar, stil adında "Alıntı" bulunan paragraflardır
* IndentedCode, stil adında "IndentedCode" olan paragraflardır
* FencedCode, stil adında "FencedCode" olan paragraflardır
* InlineCode, `Font` stil adında "InlineCode" ile çalıştırılır
* Yatay kurallar `HorizontalRule` şeklinde paragraflardır
* Cesur vurgu
* İtalik vurgu
* StrikeThrough biçimlendirme
* Listeler numaralandırılmış veya madde işaretli paragraflardır
* Tablolar `Table` sınıfı ile temsil edilir
* Bağlantılar `FieldHyperlink` sınıfı olarak temsil edilir

Aşağıdaki örnek, bazı stillere sahip bir belgenin nasıl oluşturulacağını ve Markdown olarak kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Bu kod örneğinin sonucu aşağıda gösterilmiştir.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Faydalı ipuçları

Markdown dosyalarla daha esnek ve rahat bir şekilde çalışabileceğinizi öğrendikten sonra birkaç nüans ve ilginç durum vardır. Örneğin, kullanma yeteneği var:

* SetextHeading bu, Markdown içinde çok satırlı başlıklar oluşturmanıza izin verirken, Markdown içindeki normal başlıklar yalnızca tek satırlı olabilir. SetextHeading bir "Başlık N" stilini temel alır ve düzeyi yalnızca 1 veya 2 olabilir. "Başlık N" deki N, 2 'ten büyük veya ona eşitse, karşılık gelen SetextHeading, "Başlık 2" e, aksi takdirde "Başlık 1" e dayanır.
* Madde işaretli listelerin ilk düzeyi için farklı işaretleyiciler ("-", "+" veya "*", varsayılan işaret "-"'dır.) ve sıralı listeler için farklı numaralandırma türleri ("." veya ")", varsayılan işaretleyici "."'dür).
