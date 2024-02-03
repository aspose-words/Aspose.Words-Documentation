---
title: C#'te OLE Nesneleri ve Çevrimiçi Video ile Çalışma
second_title: .NET için Aspose.Words
articleTitle: OLE Nesneleri ve Çevrimiçi Videoyla Çalışma
linktitle: OLE Nesneleri ve Çevrimiçi Videoyla Çalışma
description: "C#'i kullanarak belgenize OLE yerleştirmeyi oluşturun ve değiştirin."
type: docs
weight: 360
url: /tr/net/working-with-ole-objects/
---

OLE (Nesne Bağlama ve Gömme), kullanıcıların üçüncü taraf uygulamalar tarafından oluşturulan veya düzenlenen "nesneler" içeren belgelerle çalışabileceği bir teknolojidir. Yani OLE, bir düzenleme uygulamasının bu "nesneleri" başka bir düzenleme uygulamasına aktarmasına ve ardından bunları ek içerikle birlikte içe aktarmasına olanak tanır.

Bu yazıda bir OLE nesnesi ekleme ve özelliklerini ayarlamanın yanı sıra bir belgeye çevrimiçi video ekleme hakkında konuşacağız.

## OLE Nesnesi Ekle

OLE Nesnesini istiyorsanız, [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) yöntemini çağırın ve diğer parametrelerle birlikte açıkça **ProgId**'ye iletin.

Aşağıdaki kod örneği, OLE Nesnesinin bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### OLE Nesnesini Eklerken Dosya Adını ve Uzantısını Ayarlama

OLE paketi, bir OLE işleyicisi bilinmiyorsa, gömülü nesneleri depolamanın eski ve "belgelenmemiş" bir yoludur.

Windows 3.1, 95 ve 98 gibi ilk Windows sürümlerinde, belgeye her türlü veriyi gömmek için kullanılabilecek bir Packager.exe uygulaması vardı. Bu uygulama artık Windows'ten hariç tutulmuştur, ancak Microsoft Word ve diğer uygulamalar, OLE işleyicisinin eksik olması veya bilinmemesi durumunda verileri gömmek için hâlâ onu kullanmaktadır. `OlePackage` sınıfı, kullanıcıların OLE Paketi özelliklerine erişmesine olanak tanır.

Aşağıdaki kod örneği, OLE Paketi için dosya adının, uzantısının ve görünen adının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### OLE Nesnesi Ham Verilerine Erişim Sağlayın

Kullanıcılar, `OleFormat` sınıfının çeşitli özelliklerini ve yöntemlerini kullanarak OLE nesne verilerine erişebilir. Örneğin, `OLE` nesnesinin ham verilerini veya bağlantılı OLE nesnesinin kaynak dosyasının yolunu ve adını almak mümkündür.

Aşağıdaki kod örneği, [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) yöntemini kullanarak OLE Nesnesi ham verilerinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### OLE Nesnesini Simge Olarak Ekle

OLE nesneleri belgelere görüntü olarak da eklenebilir.

Aşağıdaki kod örneği, OLE Nesnesinin simge olarak nasıl ekleneceğini gösterir. Bu amaçla [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) sınıfı [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) yöntemini kullanıma sunar:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Aşağıdaki kod örneği, katıştırılmış bir OLE nesnesinin bir akıştan belgeye simge olarak nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Doğru görüntü için simgenin maksimum boyutu 32x32 olmalıdır.

{{% /alert %}}

## Çevrimiçi Video Ekle

Çevrimiçi video, *"Ekle" &gt; "Çevrimiçi Video"* sekmesinden Word belgesine eklenebilir. [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) yöntemini çağırarak, geçerli konumdaki bir belgeye çevrimiçi bir video ekleyebilirsiniz.

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) sınıfı bu yöntemin dört aşırı yüklemesini sunar. İlki en popüler video kaynaklarıyla çalışır ve videonun `URL`'sini parametre olarak alır. Örneğin, ilk aşırı yükleme, [Youtube](https://www.youtube.com/) ve [Vimeo](https://vimeo.com/) kaynaklarından çevrimiçi videoların kolayca eklenmesini destekler.

Aşağıdaki kod örneği, *Vimeo*'ten çevrimiçi bir videonun bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

İkinci aşırı yükleme, diğer tüm video kaynaklarıyla çalışır ve gömülü HTML kodunu parametre olarak alır. Video yerleştirmeye ilişkin HTML kodu sağlayıcıya bağlı olarak değişiklik gösterebilir; bu nedenle ayrıntılar için ilgili sağlayıcıyla iletişime geçin.

{{% alert color="primary" %}}

Lütfen belgenin video göstermesi için MS Word 2013'e göre otomatik olarak optimize edileceğini unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, bu tür HTML kodunu kullanarak çevrimiçi bir videonun bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}