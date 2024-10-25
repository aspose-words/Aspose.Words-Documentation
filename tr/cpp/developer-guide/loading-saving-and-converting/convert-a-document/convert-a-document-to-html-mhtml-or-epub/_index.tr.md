---
title: Bir Belgeyi HTML, MHTML veya EPUB'ye Dönüştürme
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi HTML, MHTML veya EPUB'ye Dönüştürme
linktitle: Bir Belgeyi HTML, MHTML veya EPUB'ye Dönüştürme
description: "Bir belgeyi hemen hemen her formattan HTML veya MHTML biçimine ve C++ kullanarak EPUB biçimine dönüştürün. Çıktı belgesini yönetmek için kaydetme seçeneklerini de belirleyebilirsiniz."
type: docs
weight: 20
url: /tr/cpp/convert-a-document-to-html-mhtml-or-epub/
---

HTML ve MHTML akış düzeni biçimlerindeki belgeler de çok popülerdir ve herhangi bir web platformunda kullanılabilir. Bu nedenle belgeleri HTML ve MHTML'e dönüştürmek Aspose.Words'ın önemli bir özelliğidir.

EPUB ("Elektronik Yayın" ın kısaltması), elektronik kitap dağıtımı için yaygın olarak kullanılan HTML tabanlı bir formattır. Bu biçim, çoğu okuma aygıtıyla uyumlu elektronik kitapları dışa aktarmak için Aspose.Words biçiminde tam olarak desteklenir.

## Bir Belgeyi Dönüştürme

HTML, MHTML veya EPUB 'e basit dönüştürme için [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) yöntem aşırı yüklenmelerinden biri kullanılır. Belgeyi bir dosyaya veya akışa kaydedebilir ve çıktı belgesi kaydetme biçimini açıkça ayarlayabilir veya dosya adı uzantısından tanımlayabilirsiniz.

Aşağıdaki örnek, bir kaydetme biçimi belirterek DOCX'ın HTML'e nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Bir belgeyi MHTML veya EPUB'e dönüştürmek için sırasıyla `SaveFormat.Mhtml` veya `SaveFormat.Epub` kullanın.

## Gidiş-dönüş Bilgileri İçeren Bir Belgeyi Dönüştürme

HTML biçimi pek çok Microsoft Word özelliği desteklemez ve bir belge modelini orijinaline mümkün olduğunca yakın bir şekilde geri yüklememiz gerekirse, HTML dosyasına bazı ek bilgileri kaydetmemiz gerekir. Bu tür bilgilere "gidiş-dönüş bilgileri" de denir. Bu amaçla Aspose.Words, [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/) özelliğini kullanarak HTML, MHTML veya EPUB konumuna kaydederken gidiş-dönüş bilgilerini dışa aktarma olanağı sağlar. Gidiş-dönüş bilgilerinin kaydedilmesi, listelenen biçimlerdeki belgelerin **Document** nesnesine geri yüklenmesi sırasında sekmeler, yorumlar, üstbilgiler ve altbilgiler gibi belge özelliklerinin geri yüklenmesine olanak tanır.

Varsayılan değer HTML için **true** ve MHTML ve EPUB için **false**'dır:

- **true** olduğunda, gidiş-dönüş bilgileri karşılık gelen HTML öğelerin - aw - * CSS özellikleri olarak dışa aktarılır
- **false** olduğunda, üretilen dosyalara aktarılacak gidiş-dönüş bilgisi yoktur

Aşağıdaki kod örneği, bir belgeyi DOCX'dan HTML'e dönüştürürken gidiş-dönüş bilgilerinin nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## HTML'a Dönüştürürken Kaydetme Seçeneklerini Belirtin

Aspose.Words varsayılan veya özel kaydetme seçeneklerini kullanarak bir Word belgesini HTML'e dönüştürmeye izin verir. Özel kaydetme seçeneklerine birkaç örnek aşağıda açıklanmıştır.

### Kaynakları Kaydetmek için Bir Klasör Belirtin

Aspose.Words kullanarak, bir belge HTML 'e dönüştürüldüğünde resimler, yazı tipleri ve harici CSS gibi tüm kaynakların kaydedildiği fiziksel bir klasör belirleyebiliriz. Varsayılan olarak, bu boş bir dizedir.

[ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) özelliğini belirtmek, tüm kaynakların yazılması gereken klasörü ayarlamanın en basit yoludur. Yazı tiplerini belirtilen klasöre kaydeden [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) ve görüntüleri belirtilen bir klasöre kaydeden [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) gibi tek tek özellikleri kullanabiliriz. Göreli bir yol belirtildiğinde, **FontsFolder** ve **ImagesFolder** kod derlemesinin bulunduğu klasöre, **ResourceFolder** ve [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) HTML belgesinin bulunduğu çıktı klasörüne başvurur.

Bu örnekte, **ResourceFolder** göreli yolu belirtir. Bu yol, HTML belgesinin kaydedildiği çıktı klasörünü ifade eder. **ResourceFolderAlias** özelliğinin değeri, tüm kaynaklar için URLs oluşturmak için kullanılır.

Aşağıdaki kod örneği, bu özelliklerle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

[ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/) özelliğini kullanarak, bir HTML belgesine yazılan tüm kaynakların URIs'ünü oluşturmak için kullanılan klasörün adını da belirtebiliriz. Bu, tüm kaynak dosyaları için URIs 'ün nasıl oluşturulacağını belirtmenin en basit yoludur. Aynı bilgiler, resimler ve yazı tipleri için sırasıyla [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) ve [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) özellikleri aracılığıyla ayrı ayrı belirtilebilir.

Ancak, CSS için tek bir özellik yoktur. Davranışı **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** ve **CssStyleSheetFileName** özellikleri değiştirilmez. **CssStyleSheetFileName** özelliğinin hem klasör adını hem de dosya adını belirtmek için kullanıldığını unutmayın.

- **ResourceFolder**, **FontsFolder**, **ImagesFolder** ve **CssStyleSheetFileName** ile belirtilen klasörlerden daha düşük önceliğe sahiptir. **ResourceFolder** 'de belirtilen klasör yoksa, otomatik olarak oluşturulur.
- **ResourceFolderAlias**, **FontsFolderAlias** ve **ImagesFolderAlias** 'den daha düşük bir önceliğe sahiptir. **ResourceFolderAlias** boşsa, **ResourceFolder** özelliğinin değeri URIs kaynağı oluşturmak için kullanılacaktır. **ResourceFolderAlias** "." (nokta) olarak ayarlanırsa, URIs kaynağı bir yol belirtmeden yalnızca dosya adlarını içerecektir.

### Base64 Kodlama Yazı Tipi Kaynaklarını Dışa Aktarma

Aspose.Words, Base64 kodlamalarında yazı tipi kaynaklarının HTML içine gömülüp gömülmeyeceğini belirleme yeteneği sağlar. Bunu gerçekleştirmek için [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) özelliğini kullanın - bu, [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/) özelliğinin bir uzantısıdır. Varsayılan olarak, değeri **false** 'tür ve yazı tipleri ayrı dosyalara yazılır. Ancak bu seçenek **true** olarak ayarlanırsa, yazı tipleri Base64 kodlamasında belgenin CSS kodlamasına gömülür. **ExportFontsAsBase64** özelliği yalnızca HTML biçimini etkiler ve EPUB ve MHTML biçimini etkilemez.

Aşağıdaki kod örneği, Base64 kodlu yazı tiplerinin HTML olarak nasıl dışa aktarılacağını gösterir.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## EPUB'a Dönüştürürken Kaydetme Seçeneklerini Belirtin

Aspose.Words varsayılan veya özel kaydetme seçeneklerini kullanarak bir Word belgesini EPUB biçimine dönüştürmeye izin verir. [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) örneğini `Save` yöntemine geçirerek bir dizi seçenek belirtebilirsiniz.

Aşağıdaki kod örneği, bazı özel kaydetme seçeneklerini belirterek bir Word belgesinin EPUB değerine nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
