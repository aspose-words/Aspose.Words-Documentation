---
title: Belgeyi Markdown'e Dönüştürme
second_title: Python via .NET için Aspose.Words
articleTitle: Belgeyi Markdown'e Dönüştürme
linktitle: Belgeyi Markdown'e Dönüştürme
type: docs
description: "Desteklenen herhangi bir yükleme biçimindeki bir belgeyi Python kullanarak Markdown'e (veya tam tersi) dönüştürün."
keywords: how to convert a document to markdown python
weight: 40
url: /tr/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown, metni işaretlemek ve onu HTML, PDF, DOCX veya diğer formatlara dönüştürmek için kullanılan popüler bir formattır. Birçok geliştirici belge yazmak, bloglarda yayınlanmak üzere makale hazırlamak, projeleri anlatmak vb. için bu formatı seçer.

Markdown bu formatla çalışmanın kolay olması ve diğer formatlara kolayca dönüştürülebilmesi nedeniyle bu kadar popülerdir. Bu nedenle Aspose.Words, [desteklenen herhangi bir yükleme biçimi](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)'deki bir belgeyi Markdown'e ve bunun tersini dönüştürme olanağı sağlar; Aspose.Words aynı zamanda en popüler [formatları kaydet](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)'i de destekler.

Artık Markdown formatıyla çalışma işlevselliği, belgelerle rahat ve rahat çalışmanız için size daha fazla fırsat sağlamak üzere aktif olarak geliştirilmektedir.

## Belgeyi Dönüştür

Bir belgeyi Markdown'e dönüştürmek için desteklenen herhangi bir formatta bir belge yüklemeniz veya program aracılığıyla yeni bir belge oluşturmanız yeterlidir. Daha sonra belgeyi Markdown formatında kaydetmeniz gerekir.

Aşağıdaki kod örneği DOCX'in Markdown'ye nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Bir belgeyi Markdown formatına dışa aktarırken görüntüleri kaydetmek istediğiniz fiziksel klasörü de belirtebilirsiniz. Varsayılan olarak Aspose.Words, görüntüleri belge dosyasının kaydedildiği klasöre kaydeder, ancak [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) özelliğini kullanarak bu davranışı geçersiz kılabilirsiniz.

[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) yoluyla bir klasör belirlemek, bir belgeyi bir akışa kaydettiğinizde ve Aspose.Words'de görüntüleri kaydetmek için bir klasör bulunmadığında da kullanışlıdır.

Belirtilen [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) mevcut değilse otomatik olarak oluşturulacaktır.

Aşağıdaki kod örneği, bir belgeyi bir akışa kaydederken görüntüler için bir klasörün nasıl belirtileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Markdown'e Dönüştürürken Kaydetme Seçeneklerini Belirleyin

Aspose.Words, bir belgeyi Markdown biçiminde kaydederken gelişmiş seçeneklerle çalışmak için [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) sınıfını kullanma yeteneği sağlar. Çoğu özellik, diğer [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) sınıflarında zaten mevcut olan özellikleri devralıyor veya aşırı yüklüyor. Bunlara ek olarak Markdown formatına özel bir takım özellikler de eklenmiştir. Örneğin, tablolardaki içeriğin hizalamasını kontrol etmek için [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) özelliği veya bir belge Markdown formatına dönüştürüldüğünde görüntülerin nereye kaydedileceğini kontrol etmek için [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

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
* Listeler numaralandırılmış veya madde işaretli paragraflardır
* Tablolar [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) sınıfı ile temsil edilmektedir
* Bağlantılar [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) sınıfı olarak temsil edilir

Aşağıdaki örnek, bazı stillere sahip bir belgenin nasıl oluşturulacağını ve Markdown'e nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Bu kod örneğinin sonucu aşağıda gösterilmiştir.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Faydalı ipuçları

Hangi Markdown dosyalarıyla daha esnek ve rahat bir şekilde çalışabileceğinizi öğrendikten sonra birkaç nüans ve ilginç durum vardır. Örneğin, kullanma yeteneği var:

* Markdown'te çok satırlı başlıklar oluşturmanıza olanak tanıyan SetextHeading, Markdown'te normal başlıklar yalnızca tek satır olabilir. SetextHeading, "Başlık N" stilini temel alır ve seviyesi yalnızca 1 veya 2 olabilir. "Başlık N"deki N, 2'den büyük veya ona eşitse, karşılık gelen SetextHeading, "Başlık 2"yi temel alır, aksi takdirde "Başlık 1".
* Madde işaretli listelerin ilk seviyesi için farklı işaretleyiciler ("-", "+" veya "*", varsayılan işaretleyici "-"dir.) ve sıralı listeler için farklı numaralandırma türleri ("." veya ")", varsayılan işaretleyici "."'dir).
