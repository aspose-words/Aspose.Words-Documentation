---
title: Bir Belgeyi C++ konumuna Kaydetme
second_title: Aspose.Words için C++
articleTitle: Belgeyi Kaydetme
linktitle: Belgeyi Kaydetme
type: docs
description: "C++ kullanarak bir belgeyi desteklenen herhangi bir biçimde kaydedin."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /tr/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ile gerçekleştirmeniz gereken görevlerin çoğu, bir belgeyi kaydetmeyi içerir. Bir belgeyi kaydetmek için Aspose.Words, [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) sınıfının [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) yöntemini sağlar. Belge, Aspose.Words tarafından desteklenen herhangi bir kaydetme biçiminde kaydedilebilir. Desteklenen tüm kaydetme biçimlerinin listesi için [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) numaralandırmasına bakın.

## Bir Dosyaya Kaydet {#save-a-document-to-a-file}

[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) yöntemini bir dosya adıyla kullanmanız yeterlidir. Aspose.Words, belirttiğiniz dosya uzantısından kaydetme biçimini belirleyecektir.

Aşağıdaki kod örneği, bir belgenin bir dosyaya nasıl yükleneceğini ve kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Bir Akışa Kaydet {#save-a-document-to-a-stream}

Bir stream nesnesini [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) yöntemine geçirin. Bir akışa kaydederken kaydetme biçimini açıkça belirtmek gerekir.

Aşağıdaki kod örneği, bir belgenin bir akışa nasıl yükleneceğini ve kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## PCL {#save-a-document-to-pcl} konumuna kaydet

Aspose.Words bir belgeyi PCL 'e (Yazıcı Komut Dili) kaydetmeyi destekler. Aspose.Words belgeleri içine kaydedebilir PCL 6 (PCL 6 Geliştirilmiş veya PCL XL) biçimi. `PclSaveOptions` sınıfı, bir belgeyi PCL biçimine kaydederken ek seçenekler belirtmek için kullanılabilir.

Aşağıdaki kod örneği, kaydetme seçeneklerini kullanarak bir belgenin PCL konumuna nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
