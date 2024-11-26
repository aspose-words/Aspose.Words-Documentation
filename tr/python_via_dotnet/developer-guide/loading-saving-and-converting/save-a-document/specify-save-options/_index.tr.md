---
title: Python'te Kaydetme Seçeneklerini Belirleyin
second_title: Python via .NET için Aspose.Words
articleTitle: Kaydetme Seçeneklerini Belirleyin
linktitle: Kaydetme Seçeneklerini Belirleyin
description: "Python'i kullanarak kaydetme işlemini daha doğru bir şekilde kontrol edin."
type: docs
weight: 10
url: /tr/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Bir belgeyi kaydederken bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words size kaydetme sürecinin daha hassas kontrolüne olanak tanıyan [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) sınıfını sağlar. Bir [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) nesnesini kabul eden [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yönteminde aşırı yüklemeler vardır; bu, [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) sınıfından türetilmiş bir sınıfın nesnesi olmalıdır. Her kaydetme biçiminin, bu kaydetme biçimi için kaydetme seçeneklerini içeren karşılık gelen bir sınıfı vardır; örneğin, PDF biçiminde kaydetmek için [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) veya bir görüntüye kaydetmek için [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) vardır. Bu makale, [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)'den türetilen bazı seçenek sınıflarıyla çalışma örnekleri sağlar.

Aşağıdaki kod örneği, belgeyi HTML'ye kaydetmeden önce kaydetme seçeneklerinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

Makalede, bir belgeyi kaydederken kontrol edebileceğiniz birkaç özellik açıklanmaktadır.

## Bir Belgeyi Parolayla Şifreleyin

Şifrelenmiş bir belgeye parola almak veya parola ayarlamak için **şifre** özelliğini kullanın. Seçilen belge biçimiyle çalışmak için ilgili sınıfın **şifre** özelliğini kullanın.

Örneğin, bir belgeyi DOC veya DOT formatında kaydederken [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) sınıfının [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) özelliğini kullanın.

Aşağıdaki kod örneği, RC4 şifreleme yöntemini kullanarak bir belgeyi şifrelemek için parolanın nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Bir belgeyi [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) biçiminde kaydederken [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) sınıfının [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) özelliğini kullanın.

Aşağıdaki kod örneği, parolayla şifrelenmiş Docx'in nasıl yüklenip kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Tüm formatlar şifrelemeyi ve **şifre** özelliğinin kullanımını desteklemez.

## Belge Oluşturma Zamanını Güncelleyin

Aspose.Words, UTC'de belge oluşturma tarihini almak veya ayarlamak için [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) özelliğini kullanma yeteneği sağlar. [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) seçeneğini kullanarak kaydetmeden önce bu değeri de güncelleyebilirsiniz.

Aşağıdaki kod örneği, belge oluşturma zamanının nasıl güncelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Son Kaydedilen Özelliği Güncelle

Aspose.Words, [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) özelliğinin kaydetmeden önce güncellenip güncellenmeyeceğini belirleyen bir değer almak veya ayarlamak için [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) özelliğini kullanma yeteneği sağlar.

Aşağıdaki kod örneği, bu özelliğin nasıl ayarlanacağını ve belgenin nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Siyah Beyaz Görüntüyü Piksel Başına Bir Bit Formatıyla Kaydetme

Görüntü kaydetme seçeneklerini kontrol etmek için [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) sınıfı kullanılır. Örneğin, oluşturulan görsellerin piksel formatını ayarlamak için [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) özelliğini kullanabilirsiniz. Skia'nın çalışması nedeniyle çıktı görüntüsünün piksel formatının ayarlanan değerden farklı olabileceğini lütfen unutmayın.

Aşağıdaki kod örneği, siyah beyaz bir görüntünün piksel başına bir bit biçiminde nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
