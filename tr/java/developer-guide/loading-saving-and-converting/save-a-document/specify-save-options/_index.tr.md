---
title: Kaydet Seçeneklerini Belirtin Java
second_title: Aspose.Words için Java
articleTitle: Kaydetme Seçeneklerini Belirtin
linktitle: Kaydetme Seçeneklerini Belirtin
description: "Bir belgenin Java kullanarak kaydedilirken gelişmiş özellikleri ayarlayın daha hassas kontrol sağlamak için."
type: docs
weight: 20
url: /tr/java/specify-save-options/
---

Bir belgeyi kaydetirken bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words size daha hassas bir şekilde kaydetme işlemini kontrol etmenizi sağlayan [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) sınıfını sağlar. **Save** yöntemine kabul edilen bir **SaveOptions** nesnesi olan aşırı yüklemeler vardır – bu nesne **SaveOptions** sınıfından türeyen bir sınıfın nesnesi olmalıdır. Her kayıt biçimi için karşılık gelen bir sınıf, örneğin, PDF biçiminde kaydetmek için [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), Markdown biçiminde kaydetmek için [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) veya görüntü kaydetmek için [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) olmak üzere kayıt seçeneklerini tutar. Bu makale **SaveOptions** 'den türeyen bazı seçenek sınıflarıyla çalışmanın örneklerini sağlar.

Aşağıdaki kod örneği, belgenin HTML olarak kaydedilmeden önce kaydetme seçeneklerini nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)'tan indirebilirsiniz.

{{% /alert %}}

Bu makale bir belge kaydederken kontrol edebileceğiniz birkaç özelliği tanımlar.

## Parola ile Bir Belgeyi Şifrele

Şifreli bir belge için şifre almak veya ayarlamak için **Password** özelliğini kullanın. Seçilen belge formatı ile çalışmak için karşılık gelen sınıfın **Password** özelliğini kullanın.

Örneğin, bir belgeyi DOC veya DOT biçimine kaydettirirken, [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) özelliğini [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) sınıfının kullanır.

Aşağıdaki kod örneği bir belgeyi şifrelemek için RC4 şifreleme yöntemi kullanılarak nasıl bir parola ayarlanacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Bir belgeyi ODT formatına kaydetirken [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) özelliğini [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) sınıfını kullanın.

Aşağıdaki kod örneği bir şifreyle şifrelenmiş bir OpenDocument yüklemeyi ve kaydetmeyi nasıl göstereceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Tüm formatlar şifreleme ve **Password** özelliğini kullanmayı desteklemez.

## Belge Kaydetme İlerleme Bildirimlerini Göster

Aspose.Words belgenin kaydına ilişkin bildirimler almak için [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) özelliğini kullanabilme yeteneğini sağlar.

Şimdi DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack veya TXT formatlarında kaydetme yaparken kullanılabilir.

## Belgenin Oluşturulma Zamanını Güncelle

Aspose.Words bunu sağlar belge oluşturma tarihini UTC'de almak veya ayarlamak için [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) özelliğini kullanmak üzere bir yetenek. Ayrıca bu değeri kaydetmeden önce [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) seçeneğiyle güncelleyebilirsiniz.

Aşağıdaki kod örneğinde belge oluşturma zamanını nasıl güncelleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## En Son Kaydedilen Özelliği Güncelle

Aspose.Words özelliği bir değer belirlemek için kullanılabilir [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty), bu da kaydetmeden önce [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) özelliğinin güncellenip güncellenmeyeceğini belirler.

Aşağıdaki kod örneği bu özelliğin ayarlanması ve belgenin kaydedilmesi gösterilmektedir":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Bir Piksel başına Bir Bit ile Siyah Beyaz Görüntü Kaydet

Görüntü kaydetme seçeneklerini kontrol etmek için **ImageSaveOptions** sınıfı kullanılır. Örneğin, oluşturulan görüntülerin piksel biçimini ayarlamak için [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) özelliğini kullanabilirsiniz. Lütfen çıkış görüntüsündeki piksel biçiminin GDI+'ın çalışması nedeniyle ayarlandığınız değerle farklı olabileceğini unutmayın.

Aşağıdaki kod örneği, bir piksel başına bir bit içeren siyah ve beyaz bir görüntüyü nasıl kaydetileceğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
