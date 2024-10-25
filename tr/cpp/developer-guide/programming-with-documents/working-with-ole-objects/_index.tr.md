---
title: C++ içindeki OLE Nesnelerle çalışma
second_title: Aspose.Words için C++
articleTitle: OLE Nesnelerle Çalışma
linktitle: OLE Nesnelerle Çalışma
description: "C++ kullanarak belgenize OLE katıştırma oluşturun ve değiştirin."
type: docs
weight: 360
url: /tr/cpp/working-with-ole-objects/
---

OLE (Nesne Bağlama ve Gömme), kullanıcıların üçüncü taraf uygulamalar tarafından oluşturulan veya düzenlenen "nesneler" içeren belgelerle çalışabilecekleri bir teknolojidir. Diğer bir deyişle, OLE bir düzenleme uygulamasının bu "nesneleri" başka bir düzenleme uygulamasına dışa aktarmasına ve ardından bunları ek içerikle içe aktarmasına izin verir.

Bu makalede, bir OLE nesnesi ekleme ve özelliklerini bir belgeye ayarlama hakkında konuşacağız.

## OLE Nesnesi ekle

OLE Nesnesini istiyorsanız, [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) yöntemini çağırın ve **ProgId** yöntemini diğer parametrelerle açıkça iletin.

Aşağıdaki kod örneği, bir belgeye OLE Nesnesinin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### OLE Nesnesi Eklerken Dosya Adını ve Uzantısını Ayarlayın

OLE paket, bir OLE işleyicisi bilinmiyorsa, gömülü nesneleri depolamanın eski ve "belgelenmemiş" bir yoludur.

Windows 3.1, 95 ve 98 gibi ilk Windows sürümlerinde bir Paketleyici vardı.belgeye herhangi bir veri türünü gömmek için kullanılabilecek exe uygulaması. Bu uygulama artık Windows dışında tutuluyor, ancak Microsoft Word ve diğer uygulamalar, OLE işleyicisi eksik veya bilinmiyorsa verileri gömmek için kullanmaya devam ediyor. `OlePackage` sınıfı, kullanıcıların OLE Paket özelliklerine erişmesine izin verir.

Aşağıdaki kod örneği, OLE Paketi için dosya adı, uzantı ve görünen adın nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### OLE Nesne Ham Verilerine Erişin

Kullanıcılar `OleFormat` sınıfının çeşitli özelliklerini ve yöntemlerini kullanarak OLE nesne verilerine erişebilir. Örneğin, `OLE` nesnesinin ham verilerini veya bağlantılı OLE nesnesinin bir kaynak dosyasının yolunu ve adını almak mümkündür.

Aşağıdaki kod örneği, [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/) yöntemini kullanarak OLE Nesne ham verilerinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Ole Nesnesini Simge Olarak Ekleme

OLE nesneler belgelere resim olarak da eklenebilir.

Aşağıdaki kod örneği, OLE Nesnesinin simge olarak nasıl ekleneceğini gösterir. Bu amaçla, [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sınıfı [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/) yöntemini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Aşağıdaki kod örneği, katıştırılmış bir OLE nesnesinin bir akıştan belgeye simge olarak nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Çevrimiçi Video Ekle

Çevrimiçi video, *"Insert" > "Online Video"* sekmesinden Word belgesine eklenebilir. [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/) yöntemini çağırarak geçerli konumdaki bir belgeye çevrimiçi bir video ekleyebilirsiniz.

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sınıfı, bu yöntemin dört aşırı yüklenmesini sağlar. İlki en popüler video kaynaklarıyla çalışır ve videonun `URL` değerini parametre olarak alır. Örneğin, ilk aşırı yük, çevrimiçi videoların basit bir şekilde eklenmesini destekler [YouTube](https://www.youtube.com/) ve [Vimeo'nun](https://vimeo.com/) kaynaklar.

Aşağıdaki kod örneği, çevrimiçi bir videonun *Vimeo* öğesinden bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

İkinci aşırı yük, diğer tüm video kaynaklarıyla çalışır ve gömülü HTML kodunu parametre olarak alır. Bir videoyu yerleştirmek için HTML kodu sağlayıcıya bağlı olarak değişebilir, bu nedenle ayrıntılar için ilgili sağlayıcıyla iletişime geçin.

{{% alert color="primary" %}}

Belgenin videoyu göstermesi için MS Word 2013 için otomatik olarak optimize edileceğini lütfen unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, bu HTML kodunu kullanarak bir belgeye çevrimiçi bir videonun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}