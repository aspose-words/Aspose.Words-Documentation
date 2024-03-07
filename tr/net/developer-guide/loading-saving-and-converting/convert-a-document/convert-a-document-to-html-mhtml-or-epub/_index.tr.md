---
title: Bir Belgeyi C#'te HTML, MHTML veya EPUB'a Dönüştürme
second_title: .NET için Aspose.Words
articleTitle: Bir Belgeyi HTML, MHTML veya EPUB'a Dönüştürme
linktitle: Bir Belgeyi HTML, MHTML veya EPUB'a Dönüştürme
description: "C#'i kullanarak bir belgeyi hemen hemen her formattan HTML veya MHTML'ye ve ayrıca EPUB formatına dönüştürün. Çıktı belgesini yönetmek için kaydetme seçeneklerini de belirleyebilirsiniz."
type: docs
weight: 20
url: /tr/net/convert-a-document-to-html-mhtml-or-epub/
---

HTML ve MHTML akış düzeni formatlarındaki belgeler de oldukça popülerdir ve herhangi bir web platformunda kullanılabilir. Bu nedenle belgeleri HTML ve MHTML'ye dönüştürmek Aspose.Words'in önemli bir özelliğidir.

EPUB ("Elektronik Yayın"ın kısaltması), elektronik kitap dağıtımında yaygın olarak kullanılan HTML tabanlı bir formattır. Bu format, çoğu okuma cihazıyla uyumlu elektronik kitapların dışa aktarımı için Aspose.Words'te tam olarak desteklenir.

## Belgeyi Dönüştür

HTML, MHTML veya EPUB'a basit dönüşüm için [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/#save/) yöntemi aşırı yüklemelerinden biri kullanılır. Belgeyi bir dosyaya veya akışa kaydedebilir ve çıktı belgesi kaydetme biçimini açıkça ayarlayabilir veya bunu dosya adı uzantısından tanımlayabilirsiniz.

Aşağıdaki örnek, bir kaydetme formatı belirterek DOCX'in HTML'ye nasıl dönüştürüleceğini gösterir:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Bir belgeyi MHTML veya EPUB'a dönüştürmek için sırasıyla `SaveFormat.Mhtml` veya `SaveFormat.Epub`'yi kullanın.

## Gidiş Dönüş Bilgilerini İçeren Bir Belgeyi Dönüştürme

HTML formatı pek çok Microsoft Word özelliğini desteklemez ve bir belge modelini orijinaline mümkün olduğunca yakın bir şekilde geri yüklememiz gerekirse, HTML dosyasına bazı ekstra bilgiler kaydetmemiz gerekir. Bu tür bilgilere "gidiş-dönüş bilgileri" de denir. Bu amaçla Aspose.Words, [ExportRoundtripInformation](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) özelliğini kullanarak HTML, MHTML veya EPUB'a kaydederken gidiş-dönüş bilgilerini dışa aktarma olanağı sağlar. Gidiş dönüş bilgilerinin kaydedilmesi, listelenen biçimlerdeki belgelerin bir **Document** nesnesine geri yüklenmesi sırasında sekmeler, yorumlar, üstbilgiler ve altbilgiler gibi belge özelliklerinin geri yüklenmesine olanak tanır.

Varsayılan değer HTML için **true**, MHTML ve EPUB için **false**'dir:

- **true** olduğunda, gidiş-dönüş bilgileri ilgili HTML öğelerinin - aw - * CSS özellikleri olarak dışa aktarılır
- **false** olduğunda, üretilen dosyalara çıkacak gidiş-dönüş bilgisi yoktur

Aşağıdaki kod örneği, bir belgeyi DOCX'ten HTML'ye dönüştürürken gidiş-dönüş bilgilerinin nasıl dışarı aktarılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

## HTML'ye Dönüştürme Sırasında Kaydetme Seçeneklerini Belirleyin

Aspose.Words, varsayılan veya özel kaydetme seçeneklerini kullanarak bir Word belgesini HTML'ye dönüştürmenize olanak tanır. Aşağıda özel kaydetme seçeneklerine ilişkin birkaç örnek açıklanmaktadır.

### Kaynakları Kaydetmek İçin Bir Klasör Belirtin

Aspose.Words'i kullanarak, bir belge HTML'ye dönüştürüldüğünde resimler, yazı tipleri ve harici CSS gibi tüm kaynakların kaydedildiği fiziksel bir klasör belirtebiliriz. Varsayılan olarak bu boş bir dizedir.

[ResourceFolder](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) özelliğini belirtmek, tüm kaynakların yazılması gereken klasörü ayarlamanın en basit yoludur. Yazı tiplerini belirtilen klasöre kaydeden [FontsFolder](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) ve görüntüleri belirli bir klasöre kaydeden [ImagesFolder](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) gibi bireysel özellikleri kullanabiliriz. Göreli bir yol belirtildiğinde, **FontsFolder** ve **ImagesFolder** kod derlemesinin bulunduğu klasörü, **ResourceFolder** ve [CssStyleSheetFileName](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) ise HTML belgesinin bulunduğu çıktı klasörünü belirtir.

Bu örnekte **ResourceFolder** göreceli yolu belirtir. Bu yol, HTML belgesinin kaydedildiği çıktı klasörünü ifade eder. **ResourceFolderAlias** özelliğinin değeri, tüm kaynaklara yönelik URL'ler oluşturmak için kullanılır.

Aşağıdaki kod örneği bu özelliklerle nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

[ResourceFolderAlias](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) özelliğini kullanarak, bir HTML belgesine yazılan tüm kaynakların URI'lerini oluşturmak için kullanılan klasörün adını da belirtebiliriz. Bu, tüm kaynak dosyaları için URI'lerin nasıl oluşturulması gerektiğini belirtmenin en basit yoludur. Aynı bilgiler resimler ve yazı tipleri için sırasıyla [ImagesFolderAlias](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) ve [FontsFolderAlias](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) özellikleri aracılığıyla ayrı ayrı belirtilebilir.

Ancak CSS'nin bireysel bir özelliği yoktur. **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** ve **CssStyleSheetFileName** özelliklerinin davranışı değişmedi. **CssStyleSheetFileName** özelliğinin hem klasör adını hem de dosya adını belirtmek için kullanıldığını unutmayın.

- **ResourceFolder**, **FontsFolder**, **ImagesFolder** ve **CssStyleSheetFileName** yoluyla belirtilen klasörlerden daha düşük önceliğe sahiptir. **ResourceFolder**'te belirtilen klasör mevcut değilse otomatik olarak oluşturulacaktır.
- **ResourceFolderAlias**'in önceliği **FontsFolderAlias** ve **ImagesFolderAlias**'den daha düşüktür. **ResourceFolderAlias** boşsa kaynak URI'leri oluşturmak için **ResourceFolder** özelliğinin değeri kullanılacaktır. **ResourceFolderAlias** "." olarak ayarlanmışsa. (nokta), kaynak URI'leri bir yol belirtmeden yalnızca dosya adlarını içerecektir.

### Base64 Kodlama Yazı Tipleri Kaynaklarını Dışa Aktarma

Aspose.Words, yazı tipi kaynaklarının Base64 kodlamalarında HTML'ye gömülüp gömülmeyeceğini belirtme yeteneği sağlar. Bunu gerçekleştirmek için [ExportFontsAsBase64](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) özelliğini kullanın; bu, [ExportFontResources](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) özelliğinin bir uzantısıdır. Varsayılan olarak değeri **false**'tir ve yazı tipleri ayrı dosyalara yazılır. Ancak bu seçenek **true** olarak ayarlanırsa yazı tipleri, Base64 kodlamasında belgenin CSS'sine eklenecektir. **Fontları AsBase64'e aktar** özelliği yalnızca HTML biçimini etkiler ve EPUB ve MHTML'yi etkilemez.

Aşağıdaki kod örneği, Base64 kodlu yazı tiplerinin HTML'ye nasıl aktarılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## EPUB'a Dönüştürme Sırasında Kaydetme Seçeneklerini Belirleyin

Aspose.Words, varsayılan veya özel kaydetme seçeneklerini kullanarak bir Word belgesini EPUB formatına dönüştürmenize olanak tanır. Bir [HtmlSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/) örneğini [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/#save/) yöntemine ileterek bir dizi seçeneği belirleyebilirsiniz.

Aşağıdaki kod örneği, bazı özel kaydetme seçeneklerini belirterek bir Word belgesinin EPUB'a nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Ayrıca bakınız

- [HTML'ye kaydederken gidiş dönüş bilgileri nasıl dışa aktarılır](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
