---
title: Ole Nesneleri ile Çalışmak
second_title: Aspose.Words için Java
articleTitle: Ole Nesneleri ile Çalışmak
linktitle: Ole Nesneleri ile Çalışmak
description: "Dosyada OLE gömme oluşturun ve değiştirin Java kullanarak."
type: docs
weight: 360
url: /tr/java/working-with-ole-objects/
---

OLE 'Object Linking and Embedding' anlamına gelir. Üçüncü taraf uygulamaları tarafından oluşturulan ya da düzenlenmiş " nesneler" içeren belgelere kullanıcıların çalışmasına olanak tanıyan teknoloji budur. Diğer bir deyişle, OLE bir uygulamanın bu " nesneleri" başka bir uygulama için düzenleme amacıyla dışarı aktarmasına ve sonra bunları bazı ek içeriklerle geri içeri aktarmasına izin verir.

Bu makalede, bir OLE nesnesi ve özelliklerini bir belgeye ekleyeceğiz.

## Oluştur Ole Nesnesi

Eğer OLE Nesnesi istiyorsanız, [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) yöntemini çağırın ve onu **ProgId** açıkça diğer parametrelerle geçirin.

Aşağıdaki kod örneğinde, bir belgeye OLE nesnesi nasıl ekleneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### OLE Nesnesi Eklerken Dosya Adı ve Uzantısını Ayarla

OLE paketi, bir OLE işleyicisi bilinmiyorsa gömülü nesneleri depolamak için "miras" ve "belgelenmemiş" bir yoldur.

Erken Windows sürümleri gibi Windows 3.1, 95 ve 98 bir Packager.exe uygulaması vardı, bu belgeye herhangi bir tür veri eklemek için kullanılabilir. Bu uygulama artık Windows, ancak Microsoft Word ve diğer uygulamalar hala OLE elemanı eksik veya bilinmediğinde veri eklemek için bunu kullanıyor. `OlePackage` sınıfı kullanıcıların OLE Paket özellikleri erişmesine izin veriyor.

Aşağıdaki kod örneği, OLE Paketi için dosya adı, uzantı ve görüntüleme adını nasıl ayarlayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### OLE Nesnesi Ham Verilere Erişim Alın

kullanıcıların çeşitli özelliklerini ve `OleFormat` sınıfının yöntemlerini kullanarak OLE nesne verilerine erişmesi mümkündür. Örneğin, `OLE` nesnesinin ham verilerini veya bir kaynak dosyasının yolunu ve adını almak mümkündür.

Aşağıdaki kod örneği, [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) yöntemini kullanarak OLE nesne ham verileri almayı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### OLE Nesnesini Simge Olarak Ekle

OLE nesneleri görüntüleri olarak belgelere de eklenebilir.

Aşağıdaki kod örneği, bir simge olarak OLE nesnesini eklemeyi nasıl gösterir. Bu amaçla, **DocumentBuilder** sınıfı [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) yöntemini ortaya çıkarır.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Aşağıdaki kod örneği, bir akıştan belgeye gömülü OLE nesnesi eklemenin nasıl yapılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Çevrimiçi Videoyu Ekle

Word belgesi içinde online video eklenebilir "Ekle" > "Online Video" sekmesinden. Geçerli konumda bir belgeye çevrimiçi bir video eklemek için [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) yöntemini çağırın:

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sınıfı bu yöntemin dört aşırı yüklemesini tanıtır. İlk biri en popüler video kaynaklarıyla çalışır ve videonun `URL`'ünü parametre olarak alır. Örneğin, ilk aşırı yükleme [YouTube](https://www.youtube.com/) ve [Vimeo](https://vimeo.com/) kaynaklarından çevrimiçi videoları basitçe eklemeyi destekler.

Aşağıdaki örnek kod, bir belgeye *Vimeo* 'den nasıl bir çevrimiçi video ekleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

İkinci aşırı yükleme tüm diğer video kaynaklarıyla çalışır ve gömülü HTML kodunu parametre olarak alır. Bir videoyu gömmek için gereken HTML kodu sağlayıcıya göre farklılık gösterebilir, bu nedenle ayrıntılar için ilgili sağlayıcıya danışın.

{{% alert color="primary" %}}

Lütfen not edin ki, belgenin gösterim için otomatik olarak optimize edileceği MS Word 2013.

{{% /alert %}}

Aşağıdaki kod örneği, bir HTML kodu kullanarak bir belgeden nasıl bir internet videosu ekleneceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
