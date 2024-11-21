---
title: OLE Nesneleri ve Çevrimiçi Video
second_title: Python via .NET için Aspose.Words
articleTitle: OLE Nesneleri ve Çevrimiçi Videoyla Çalışma
linktitle: OLE Nesneleri ve Çevrimiçi Videoyla Çalışma
description: "Python kullanarak bir belgeye ole nesneleri veya çevrimiçi vodeo ekleyin."
type: docs
weight: 360
url: /tr/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Nesne Bağlama ve Gömme), kullanıcıların üçüncü taraf uygulamalar tarafından oluşturulan veya düzenlenen "nesneler" içeren belgelerle çalışabileceği bir teknolojidir. Yani OLE, bir düzenleme uygulamasının bu "nesneleri" başka bir düzenleme uygulamasına aktarmasına ve ardından bunları ek içerikle birlikte içe aktarmasına olanak tanır.

Bu yazıda bir OLE nesnesi ekleme ve özelliklerini ayarlamanın yanı sıra bir belgeye çevrimiçi video ekleme hakkında konuşacağız.

## OLE Nesnesi Ekle

OLE Nesnesini istiyorsanız, [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) yöntemini çağırın ve diğer parametrelerle birlikte açıkça **ProgId**'ye iletin.

Aşağıdaki kod örneği, OLE Nesnesinin bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### OLE Nesnesini Eklerken Dosya Adını ve Uzantısını Ayarlama

OLE paketi, bir OLE işleyicisi bilinmiyorsa, gömülü nesneleri depolamanın eski ve "belgelenmemiş" bir yoludur.

Windows 3.1, 95 ve 98 gibi ilk Windows sürümlerinde, belgeye her türlü veriyi gömmek için kullanılabilecek bir Packager.exe uygulaması vardı. Bu uygulama artık Windows'ten hariç tutulmuştur, ancak Microsoft Word ve diğer uygulamalar, OLE işleyicisinin eksik olması veya bilinmemesi durumunda verileri gömmek için hâlâ onu kullanmaktadır. `OlePackage` sınıfı, kullanıcıların OLE Paketi özelliklerine erişmesine olanak tanır.

Aşağıdaki kod örneği, OLE Paketi için dosya adının, uzantısının ve görünen adının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### OLE Nesnesi Ham Verilerine Erişim Sağlayın

Kullanıcılar, `OleFormat` sınıfının çeşitli özelliklerini ve yöntemlerini kullanarak OLE nesne verilerine erişebilir. Örneğin, `OLE` nesnesinin ham verilerini veya bağlantılı OLE nesnesinin kaynak dosyasının yolunu ve adını almak mümkündür.

Aşağıdaki kod örneği, [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) yöntemini kullanarak OLE Nesnesi ham verilerinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### OLE Nesnesini Simge Olarak Ekle

OLE nesneleri belgelere görüntü olarak da eklenebilir.

Aşağıdaki kod örneği, OLE Nesnesinin simge olarak nasıl ekleneceğini gösterir. Bu amaçla [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfı [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) yöntemini kullanıma sunar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Aşağıdaki kod örneği, katıştırılmış bir OLE nesnesinin bir akıştan belgeye simge olarak nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Çevrimiçi Video Ekle

Çevrimiçi video, *"Ekle" &gt; "Çevrimiçi Video"* sekmesinden Word belgesine eklenebilir. [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) yöntemini çağırarak, geçerli konumdaki bir belgeye çevrimiçi bir video ekleyebilirsiniz.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfı bu yöntemin dört aşırı yüklemesini sunar. İlki en popüler video kaynaklarıyla çalışır ve videonun `URL`'sini parametre olarak alır. Örneğin, ilk aşırı yükleme, [Youtube](https://www.youtube.com/) ve [Vimeo](https://vimeo.com/) kaynaklarından çevrimiçi videoların kolayca eklenmesini destekler.

Aşağıdaki kod örneği, *Vimeo*'ten çevrimiçi bir videonun bir belgeye nasıl ekleneceğini gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

İkinci aşırı yükleme, diğer tüm video kaynaklarıyla çalışır ve gömülü HTML kodunu parametre olarak alır. Video yerleştirmeye ilişkin HTML kodu sağlayıcıya bağlı olarak değişiklik gösterebilir; bu nedenle ayrıntılar için ilgili sağlayıcıyla iletişime geçin.

{{% alert color="primary" %}}

Lütfen belgenin video göstermesi için MS Word 2013'e göre otomatik olarak optimize edileceğini unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, bu tür HTML kodunu kullanarak çevrimiçi bir videonun bir belgeye nasıl ekleneceğini gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}
