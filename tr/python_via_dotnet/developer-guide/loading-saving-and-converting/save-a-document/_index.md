---
title: Bir Belgeyi Python'e Kaydetme
second_title: Python via .NET için Aspose.Words
articleTitle: Bir Belgeyi Kaydet
linktitle: Bir Belgeyi Kaydet
type: docs
description: "Python'i kullanarak bir belgeyi desteklenen herhangi bir formatta kaydedin."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /tr/python-net/save-a-document/
---

Aspose.Words ile gerçekleştirmeniz gereken görevlerin çoğu bir belgenin kaydedilmesini içerir. Bir belgeyi kaydetmek için Aspose.Words, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfının [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemini sağlar. Bir belgenin bir dosyaya veya akışa kaydedilmesine olanak tanıyan aşırı yüklemeler vardır. Belge, Aspose.Words tarafından desteklenen herhangi bir kaydetme biçiminde kaydedilebilir. Desteklenen tüm kaydetme biçimlerinin listesi için [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) numaralandırmasına bakın.

## Belgeyi {#save-a-document-to-a-file} Dosyasına Kaydetme

[save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemini bir dosya adıyla kullanmanız yeterlidir. Aspose.Words, belirttiğiniz dosya uzantısından kaydetme biçimini belirleyecektir.

Aşağıdaki kod örneği, bir belgenin bir dosyaya nasıl yüklenip kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Belgeyi Akış {#save-a-document-to-a-stream}'e Kaydetme

Bir akış nesnesini [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemine iletin. Bir akışa kaydederken kaydetme biçimini açıkça belirtmek gerekir.

Aşağıdaki kod örneği, bir belgenin akışa nasıl yüklenip kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

## Bir Belgeyi PCL {#save-a-document-to-pcl}'e Kaydetme

Aspose.Words, bir belgenin PCL'ye (Yazıcı Komut Dili) kaydedilmesini destekler. Aspose.Words, belgeleri PCL 6 (PCL 6 Enhanced veya PCL XL) formatında kaydedebilir. [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) sınıfı, bir belgeyi PCL formatında kaydederken ek seçenekleri belirtmek için kullanılabilir.

Aşağıdaki kod örneği, kaydetme seçeneklerini kullanarak bir belgenin PCL'ye nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

