---
title: Kaydetme Seçeneklerini C++ olarak belirtin
second_title: Aspose.Words için C++
articleTitle: Kaydetme Seçeneklerini Belirtin
linktitle: Kaydetme Seçeneklerini Belirtin
description: "Kaydetme işlemini daha doğru bir şekilde kontrol edin."
type: docs
weight: 10
url: /tr/cpp/specify-save-options/
---

Bir belgeyi kaydederken bazı gelişmiş özellikler ayarlayabilirsiniz. Aspose.Words size kaydetme işleminin daha hassas kontrolünü sağlayan [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) sınıfını sağlar. Bir **SaveOptions** nesnesini kabul eden **Save** yönteminin aşırı yükleri vardır – bu, **SaveOptions** sınıfından türetilen bir sınıfın nesnesi olmalıdır. Her kaydetme biçiminin, bu kaydetme biçimi için kaydetme seçeneklerini tutan karşılık gelen bir sınıfı vardır; örneğin, PDF biçimine kaydetmek için [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), Markdown biçimine kaydetmek için [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) veya bir görüntüye kaydetmek için [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) vardır. Bu makalede, **SaveOptions** türetilen bazı seçenekler sınıfları ile çalışma örnekleri verilmektedir.

Aşağıdaki kod örneği, belgeyi HTML dosyasına kaydetmeden önce kaydetme seçeneklerinin nasıl ayarlanacağını gösterir.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Makalede, bir belgeyi kaydederken denetleyebileceğiniz birkaç özellik açıklanmaktadır.

## Bir Belgeyi Parola ile Şifreleyin

Şifrelenmiş bir belge için parola almak veya ayarlamak için **Password** özelliğini kullanın. Seçili belge biçimiyle çalışmak için ilgili sınıfın **Password** özelliğini kullanın.

Örneğin, bir belgeyi DOC veya DOT biçimine kaydederken, [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options) sınıfının [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) özelliğini kullanın.

Aşağıdaki kod örneği, RC4 şifreleme yöntemini kullanarak bir belgeyi şifrelemek için nasıl parola ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Bir belgeyi ODT biçimine kaydederken, [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options) sınıfının [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) özelliğini kullanın.

Aşağıdaki kod örneği, bir parola ile şifrelenmiş OpenDocument'ın nasıl yüklenip kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Tüm biçimler şifrelemeyi ve **Password** özelliğinin kullanımını desteklemez.

## Belge Kaydetme İlerleme Bildirimlerini Göster

Aspose.Words, belge kaydetmenin ilerleyişi hakkında bildirim almak için [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) özelliğini kullanma olanağı sağlar.

Kaydederken artık kullanılabilir DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, veya TXT biçimleri.

## Belge Oluşturma Süresini Güncelleyin

Aspose.Words, belge oluşturma tarihini UTC içinde almak veya ayarlamak için [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) özelliğini kullanma olanağı sağlar. [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/) seçeneğini kullanarak kaydetmeden önce bu değeri de güncelleyebilirsiniz.

Aşağıdaki kod örneği, belge oluşturma süresinin nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Son Kaydedilen Özelliği Güncelle

Aspose.Words, kaydetmeden önce [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) özelliğinin güncellenip güncellenmediğini belirleyen bir değeri almak veya ayarlamak için [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) özelliğini kullanma olanağı sağlar.

Aşağıdaki kod örneği, bu özelliğin nasıl ayarlanacağını ve belgenin nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Siyah Beyaz Görüntüyü Piksel Başına Bir Bit Formatıyla Kaydedin

Görüntü kaydetme seçeneklerini kontrol etmek için **ImageSaveOptions** sınıfı kullanılır. Örneğin, oluşturulan görüntülerin piksel biçimini ayarlamak için [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) özelliğini kullanabilirsiniz. Çıktı görüntüsünün piksel biçiminin GDI+ 'nın çalışması nedeniyle ayarlanan değerden farklı olabileceğini lütfen unutmayın.

Aşağıdaki kod örneği, piksel başına bir bit biçiminde siyah beyaz bir görüntünün nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
