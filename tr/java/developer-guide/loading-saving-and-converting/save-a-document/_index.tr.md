---
title: Bir belgeyi Java içinde kaydet
second_title: Aspose.Words için Java
articleTitle: Bir Belgeyi Kaydet
linktitle: Bir Belgeyi Kaydet
type: docs
description: "Desteklenen herhangi bir biçimde bir belgeyi Java'i kullanarak kaydedin."
weight: 20
url: /tr/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ile gerçekleştirmek zorunda olduğunuz görevlerin çoğu bir belge kaydetmeyi içerir. Bir belge kaydetmek için Aspose.Words ' [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sınıfının [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String) yöntemini sağlar. Belge herhangi bir kaydedilebilir biçimde kaydedilebilir Aspose.Words. Desteklenen tüm kaydedilebilir biçimlerin listesi için " [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) numaralandırmasına bakın.

## Bir Dosyaya Kaydet {#save-a-document-to-a-file}

Sadece bir dosya adı ile [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) yöntemini kullanın. Aspose.Words, belirlediğiniz dosya uzantısından kaydedme formatını seçer.

Aşağıdaki kod örneğinde bir belgeyi bir dosyaya yüklemenin ve kaydetmenin nasıl yapılacağı gösterilmiştir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Bu örnek için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)'dan indirebilirsiniz.

{{% /alert %}}

## Bir Akışa Kaydet {#save-a-document-to-a-stream}

Bir akış nesnesini [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) yöntemine geçirin. Akışa kaydetirken açıklama olarak kaydetme biçimini belirtmek gereklidir.

Aşağıdaki kod örneği bir belgenin nasıl yükleneceğini ve kaydedileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)'tan indirebilirsiniz.

## PCL'e kaydet {#save-a-document-to-pcl}

Aspose.Words bir belgeyi PCL'ye (Printer Command Language) kaydetmeyi destekler. Aspose.Words PCL 6 (PCL 6 Geliştirilmiş veya PCL XL) biçiminde belgeleri kaydedebilir. The `PclSaveOptions` sınıfı, bir belgeyi PCL biçimine kaydederken kullanılabilecek ek seçenekleri belirtmek için kullanılabilir.

Aşağıdaki örnek kod, seçenekleri kullanarak nasıl bir belgeyi PCL olarak kaydetileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
