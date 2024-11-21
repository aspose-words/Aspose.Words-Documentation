---
title: Bir Belge Oluşturun veya Yükleyin Java
second_title: Aspose.Words için Java
articleTitle: Bir Belge Oluşturun veya Yükleyin
linktitle: Bir Belge Oluşturun veya Yükleyin
type: docs
weight: 10
url: /tr/java/create-or-load-a-document/
description: "Aspose.Words boş bir belge oluşturmanıza veya Java kullanarak bir dosyadan veya akıştan yüklemenize olanak tanır."
timestamp: 2024-01-27-14-07-04
---

Çok az görev Aspose.Words ile gerçekleştirmek istediğiniz bir belge yüklemenizi içerir. `Document` sınıfı bellekte yüklenen bir belgeyi temsil eder. Belge birkaç aşırı yüklenmiş oluşturucuya sahiptir ve bu da boş bir belge oluşturmanıza veya bir dosyadan veya akıştan yüklemenize olanak tanır. Belge, Aspose.Words tarafından desteklenen herhangi bir yükleme formatında yüklenebilir. Tüm desteklenen yükleme formatlarının listesi için [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) numaralandırmasına bakın.

## Yeni Belge Oluştur {#create-a-new-document}

Yeni boş bir belge oluşturmak için parametre içermeyen [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) oluşturucusunu çağırabiliriz. Belgesi programatik olarak oluşturmak istiyorsanız, bunu yapmak için en basit yol [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) sınıfını kullanarak belgenin içeriğini eklemektir.

Aşağıdaki kod örneği belge oluşturucu kullanarak bir belgenin nasıl oluşturulacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Varsayılan değerlere dikkat edin:

Boş bir belge varsayılan parametrelere sahip tek bir bölüm, boş bir paragraf ve bazı belge stilleri içerir. Aslında bu belge, Microsoft Word içindeki "Yeni Belge" oluşturmanın sonucu ile aynıdır.
- Belge kağıt boyutu [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Bir belge yükle

Mevcut bir belgeyi herhangi bir [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) biçimde yüklemek için, dosya adını veya akışını bir Belge oluşturucusuna geçirin. Yüklenen belgenin biçimi uzantısına göre otomatik olarak belirlenir.

### Bir Dosyadan Yükle {#load-from-a-file}

Bir dosya adının bir dizge olarak Belge oluşturucusuna geçirin, mevcut bir belgeyi bir dosyadan açmak için.

Aşağıdaki kod örneği bir dosyadan bir belgeyi nasıl açacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Bu örnek için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)'dan indirip kaydedebilirsiniz.

### Bir Akıdan Yükle {#load-from-a-stream}

Bir belgeyi bir akıştan açmak için belgeyi içeren bir akış nesnesini Belge oluşturucusuna geçirin basitçe.

Aşağıdaki kod örneği bir akıştan belgeyi nasıl açacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Örnek için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)'dan indirebilirsiniz.

{{% /alert %}}
