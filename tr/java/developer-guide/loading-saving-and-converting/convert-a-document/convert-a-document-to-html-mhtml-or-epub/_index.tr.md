---
title: Bir Belgeyi HTML, MHTML veya EPUB'ye Dönüştürün
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi HTML, MHTML veya EPUB'ye Dönüştürün
linktitle: Bir Belgeyi HTML, MHTML veya EPUB'ye Dönüştürün
description: "Aspose.Words için Java belgeleri Word veya desteklenen diğer biçimlerden HTML, MHTML veya EPUB'ye dönüştürmek."
type: docs
weight: 20
url: /tr/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

HTML ve MHTML akış düzenleri formatlarında belgeler de çok popülerdir ve herhangi bir web platformunda kullanılabilirler. Bu nedenle, belgeleri HTML ve MHTML'ye dönüştürmek Aspose.Words'ın önemli bir özelliğidir.

EPUB (kısaltma için "Elektronik Yayın") elektronik kitap dağıtımı için yaygın olarak kullanılan bir HTML tabanlı biçimdir. Bu biçim Aspose.Words içinde tam olarak desteklenmektedir ve çoğu okuyucu cihazı ile uyumlu e-kitapların dışa aktarılması için kullanılır.

## Bir Belge Dönüştür

Basit bir şekilde HTML, MHTML veya EPUB'ye dönüştürmek için [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) yöntem aşırı yüklerinden biri kullanılır. Belgeyi bir dosyaya veya akışa kaydedebilir ve açıkça çıktı belge kaydetme biçimini veya dosya adı uzantısından tanımlayabilirsiniz.

Aşağıdaki örnek bir kaydetme biçimi belirtilerek DOCX'i HTML olarak nasıl dönüştürülününü göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Bir belgeyi MHTML veya EPUB olarak dönüştürmek için sırasıyla `SaveFormat.MHTML` veya `SaveFormat.EPUB` kullanın.

## Round-trip Information ile bir Belge Dönüştür

The HTML format doesn't support many Microsoft Word features, and if we need to restore a document model as close to the original as possible, we have to save some extra information within the HTML file. This information is also called "round-trip information". For this purpose, Aspose.Words provides an ability to export round-trip information when saving to HTML, MHTML or EPUB using the [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) property. Saving the round-trip information allows restoring document properties such as tabs, comments, headers and footers during the loading documents of the listed formats back into a **Document** object.

Varsayılan değer, HTML için **true** ve MHTML ve EPUB için **false** 'dir:

- **true** 'için gidiş dönüş bilgileri şu şekilde dışarı aktarılır - ay - * HTML öğelerine karşılık gelen CSS özellikleri
- **false** olduğunda, üretilen dosyalar için yuvarlak gidiş dönüş bilgisi yoktur

Aşağıdaki kod örneği bir belgeyi DOCX'ten HTML'ye dönüştürürken gidiş dönüş bilgilerini nasıl dışa aktaracağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 'dan indirebilirsiniz.'

{{% /alert %}}

## HTML'ye Dönüştürürken Kaydetme Seçeneklerini Belirtin

Aspose.Words varsayılan veya özel kaydetme seçeneklerini kullanarak bir Word belgesini HTML 'e dönüştürmeyi sağlar. Özel kaydetme seçeneklerinin birkaç örneği aşağıda açıklanmıştır.

### Kaynakları Kaydetmek için Bir Klasör Belirtin

Using Aspose.Words we can specify a physical folder where all the resources, such as images, fonts, and external CSS, are saved when a document is converted to HTML. Varsayılan olarak, bu boş bir dizedir.

Tüm kaynaklar için yazılacak klasörü belirlemek için [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) özelliğini belirtmenin en basit yolu. [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) 'nin yazı tiplerini belirtilen klasöre kaydetmek ve [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) 'nin görüntüleri belirtilen bir klasöre kaydetmek gibi bireysel özellikleri kullanabiliriz. Bir göreceli yol belirtildiğinde, **FontsFolder** ve **ImagesFolder** kod derlemesinin bulunduğu klasörü, **ResourceFolder** ve [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) ise HTML belgesinin bulunduğu çıkış klasörünü ifade eder.

Bu örnekte, **ResourceFolder** göreli yolu belirtir. Bu yol, HTML belgesinin kaydedildiği çıktı klasörüne atıfta bulunur. **ResourceFolderAlias** özelliğinin değeri tüm kaynaklara yönelik URL'ler oluşturmak için kullanılır.

Aşağıdaki kod örneği bu özelliklerle nasıl çalışılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Using [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) property, we also can name the folder used in constructing URIs of all resources written into an HTML document. This is the simplest way to specify how URIs should be generated for all resource files. Aynı bilgi ayrı ayrı [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) ve [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) özellikleri ile belirtilebilir ve sırasıyla resimler ve yazı tipleri için kullanılabilir.

Bununla birlikte, CSS için özel bir özellik yoktur. **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** ve **CssStyleSheetFileName** özelliklerinin davranışları değişmez. Dikkat edin ki **CssStyleSheetFileName** özelliği hem klasör adı hem de dosya adı belirtmek için kullanılır.

**ResourceFolder** klasörü belirtilen **FontsFolder**, **ImagesFolder** ve **CssStyleSheetFileName** önceliğinden daha düşük önceliğe sahiptir. **ResourceFolder** içinde belirtilen dosya klasörü mevcut değilse otomatik olarak oluşturulur.
- **ResourceFolderAlias** **FontsFolderAlias** ve **ImagesFolderAlias**'den daha düşük bir önceliğe sahiptir. **ResourceFolderAlias** boşsa, kaynak URI'leri oluşturmak için **ResourceFolder** özelliğinin değeri kullanılır. **ResourceFolderAlias** nokta (.) olarak ayarlanırsa, dosya adları belirtilmeden bir yol belirtilmeden URI'ler yalnızca dosya adları içerecektir.

### Base64 Kodlamasını Dışa Aktar Yazı Tipleri Kaynakları

Aspose.Words bir yazı tipisi kaynaklarının Base64 kodlamasında HTML'e gömülüp gömülmeyeceğini belirtme yeteneğidir. Bunu yapmak için [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) özelliğini kullanın - bu, [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) özelliğinin bir uzantısıdır. Varsayılan olarak değeri **false** ve yazı tipleri ayrı dosyalarına yazılır. Fakat bu seçenek **true**'e ayarlanırsa yazı tipleri Base64 kodlamasında belgenin CSS'ine gömülür. **ExportFontsAsBase64** özelliği sadece HTML formatını etkiler ve EPUB ile MHTML'i etkilemez.

Aşağıdaki kod örneği, HTML'e Base64-kodlanmış yazı tiplerini nasıl dışa aktaracağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## EPUB'ye Dönüştürürken Kaydetme Seçeneklerini Belirtin

Aspose.Words bir Word belgesini varsayılan veya özel kaydetme seçeneklerini kullanarak EPUB formatına dönüştürür. Bir [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) örneğini [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) yöntemine geçirerek bir dizi seçeneği belirtebilirsiniz.

Aşağıdaki kod örneği bazı özel kaydetme seçeneklerini belirterek bir Word belgesini nasıl EPUB'ye dönüştüreceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Bu örnekten şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc)'dan indirebilirsiniz.

{{% /alert %}}

## Ayrıca Bakın

- [How to export round-trip information when saving to HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
