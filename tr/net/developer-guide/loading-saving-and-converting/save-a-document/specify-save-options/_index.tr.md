---
title: C#'te Kaydetme Seçeneklerini Belirleyin
second_title: .NET için Aspose.Words
articleTitle: Kaydetme Seçeneklerini Belirtin
linktitle: Kaydetme Seçeneklerini Belirtin
description: "C#'i kullanarak kaydetme işlemini daha doğru bir şekilde kontrol edin."
type: docs
weight: 10
url: /tr/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

Bir belgeyi kaydederken bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words size kaydetme sürecinin daha hassas kontrolüne olanak tanıyan [SaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/) sınıfını sağlar. Bir **SaveOptions** nesnesini kabul eden **Save** yönteminde aşırı yüklemeler vardır; bu, **SaveOptions** sınıfından türetilmiş bir sınıfın nesnesi olmalıdır. Her kaydetme biçiminin, bu kaydetme biçimi için kaydetme seçeneklerini içeren karşılık gelen bir sınıfı vardır; örneğin, PDF biçiminde kaydetmek için [PdfSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/pdfsaveoptions/), Markdown biçiminde kaydetmek için [MarkdownSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/markdownsaveoptions/) veya bir görüntüye kaydetmek için [ImageSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/) vardır. Bu makalede, **SaveOptions**'ten türetilen bazı seçenek sınıflarıyla çalışma örnekleri verilmektedir.

Aşağıdaki kod örneği, belgeyi HTML'ye kaydetmeden önce kaydetme seçeneklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

Makalede, bir belgeyi kaydederken kontrol edebileceğiniz birkaç özellik açıklanmaktadır.

## Bir Belgeyi Parolayla Şifreleyin

Şifrelenmiş bir belgeye parola almak veya parola ayarlamak için **Password** özelliğini kullanın. Seçilen belge biçimiyle çalışmak için ilgili sınıfın **Password** özelliğini kullanın.

Örneğin, bir belgeyi DOC veya DOT formatında kaydederken [DocSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/docsaveoptions/) sınıfının [Password](https://reference.aspose.com/words/tr/net/aspose.words.saving/docsaveoptions/password/) özelliğini kullanın.

Aşağıdaki kod örneği, RC4 şifreleme yöntemini kullanarak bir belgeyi şifrelemek için parolanın nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Bir belgeyi Odt formatında kaydederken [OdtSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/odtsaveoptions/) sınıfının [Password](https://reference.aspose.com/words/tr/net/aspose.words.saving/odtsaveoptions/password/) özelliğini kullanın.

Aşağıdaki kod örneği, OpenDocument'in bir parolayla şifrelenmiş olarak nasıl yüklenip kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Tüm formatlar şifrelemeyi ve **Password** özelliğinin kullanımını desteklemez.

## Belge Kaydetme İlerleme Bildirimlerini Göster

Aspose.Words, belge kaydetmenin ilerleyişi hakkında bildirim almak için [ProgressCallback](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/progresscallback/) özelliğini kullanma yeteneği sağlar.

Artık DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack veya TXT formatlarına kaydederken kullanılabilir.

## Belge Oluşturma Zamanını Güncelleyin

Aspose.Words, UTC'de belge oluşturma tarihini almak veya ayarlamak için [CreatedTime](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/createdtime/) özelliğini kullanma yeteneği sağlar. [UpdateCreatedTimeProperty](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) seçeneğini kullanarak kaydetmeden önce bu değeri de güncelleyebilirsiniz.

Aşağıdaki kod örneği, belge oluşturma zamanının nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Son Kaydedilen Özelliği Güncelle

Aspose.Words, [LastSavedTime](https://reference.aspose.com/words/tr/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) özelliğinin kaydetmeden önce güncellenip güncellenmeyeceğini belirleyen bir değer almak veya ayarlamak için [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/tr/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) özelliğini kullanma yeteneği sağlar.

Aşağıdaki kod örneği, bu özelliğin nasıl ayarlanacağını ve belgenin nasıl kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Bir Belgeyi HTML veya SVG'ye Kaydederken Dış Kaynakları Kontrol Edin

HTML veya SVG'yi PDF'ye dönüştürmek için [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/#save/) yöntemini çağırmanız ve ".PDF" uzantılı bir dosya adı belirtmeniz yeterlidir. Harici kaynaklardan görsel, CSS vb. yüklemek istiyorsanız [IResourceSavingCallback](https://reference.aspose.com/words/tr/net/aspose.words.saving/iresourcesavingcallback/) kullanabilirsiniz.

Aşağıdaki kod örneği, HTML'nin PDF'ye nasıl dönüştürüleceğini ve harici kaynaklardan görüntülerin nasıl yükleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Siyah Beyaz Görüntüyü Piksel Başına Bir Bit Formatıyla Kaydetme

Görüntü kaydetme seçeneklerini kontrol etmek için **ImageSaveOptions** sınıfı kullanılır. Örneğin, oluşturulan görsellerin piksel formatını ayarlamak için [PixelFormat](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/pixelformat/) özelliğini kullanabilirsiniz. GDI+'ın çalışması nedeniyle çıktı görüntüsünün piksel formatının ayarlanan değerden farklı olabileceğini lütfen unutmayın.

Aşağıdaki kod örneği, siyah beyaz bir görüntünün piksel başına bir bit biçiminde nasıl kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
