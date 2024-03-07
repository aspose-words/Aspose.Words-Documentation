---
title: C#'te Görüntülerle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Görsellerle Çalışmak
linktitle: Görsellerle Çalışmak
description: "Ayrıntılı görüntü şekilleri ve Aspose.Words tarafından .NET için sağlanan gelişmiş özellikler."
type: docs
weight: 300
url: /tr/net/working-with-images/
---

Aspose.Words, kullanıcıların görüntülerle çok esnek bir şekilde çalışmasına olanak tanır. Bu makalede görüntülerle çalışmanın yalnızca bazı olanaklarını keşfedebilirsiniz.

## Resim {#insert-an-image} Nasıl Eklenir

[DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/), satır içi veya kayan bir görüntü eklemenize olanak tanıyan [InsertImage](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertimage/) yönteminin çeşitli aşırı yüklemelerini sağlar. Görüntü bir EMF veya WMF meta dosyasıysa, belgeye meta dosyası biçiminde eklenecektir. Diğer tüm görseller PNG formatında saklanacaktır. **InsertImage** yöntemi farklı kaynaklardan gelen görselleri kullanabilir:

- Bir dosyadan veya `URL`'ten bir `String` parametresi [InsertImage](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertimage/)'i ileterek
- Bir `Stream` parametresi **InsertImage**'yi ileterek bir akıştan
- Bir Image parametresi **InsertImage**'i ileterek bir Image nesnesinden
- Bir bayt dizisinden, bir bayt dizisi parametresi **InsertImage**'i ileterek

**InsertImage** yöntemlerinin her biri için, aşağıdaki seçeneklere sahip bir görüntü eklemenizi sağlayan başka aşırı yüklemeler vardır:
- **InsertImage** gibi belirli bir konumda satır içi veya kayan
- Yüzde ölçeği veya özel boyut, örneğin **InsertImage**; ayrıca **InsertImage** yöntemi yeni oluşturulmuş ve eklenen bir [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) nesnesini döndürür, böylece Shape'in özelliklerini daha fazla değiştirebilirsiniz

### Satır İçi Görüntü {#insert-an-inline-image} Nasıl Eklenir

Görüntüyü belgeye satır içi grafik olarak eklemek için, görüntüyü içeren bir dosyayı temsil eden tek bir dizeyi **InsertImage**'e iletin

Aşağıdaki kod örneği, imleç konumunda satır içi görüntünün bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Kayan Görüntü {#insert-a-floating-image} Nasıl Eklenir

Aşağıdaki kod örneği, bir dosyadan veya `URL`'ten belirli bir konuma ve boyuta kayan görüntünün nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Bir Belge {#how-to-extract-images-from-a-document}'ten Görüntüler Nasıl Çıkarılır

Tüm görüntüler bir [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/)'deki **Shape** düğümlerinde saklanır. Belgeden tüm görüntüleri veya belirli türdeki görüntüleri çıkarmak için şu adımları izleyin:

- Tüm **Shape** düğümlerini seçmek için [GetChildNodes](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/getchildnodes/) yöntemini kullanın.
- Ortaya çıkan düğüm koleksiyonlarını yineleyin.
- [HasImage](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/hasimage/) boole özelliğini kontrol edin.
- [ImageData](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/imagedata/) özelliğini kullanarak görüntü verilerini çıkarın.
- Görüntü verilerini bir dosyaya kaydedin.

Aşağıdaki kod örneği, bir belgeden görüntülerin nasıl çıkarılacağını ve bunların dosya olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Her Belge Sayfasına Barkod Nasıl Eklenir {#how-to-insert-barcode-on-each-documen-page}

Bu örnek, bir Word belgesinin tüm veya belirli sayfalarına aynı veya farklı barkodları ekleyebileceğinizi gösterir. Bir belgenin tüm sayfalarına barkod eklemenin doğrudan bir yolu yoktur ancak aşağıdaki kodda görebileceğiniz gibi herhangi bir bölüme veya üstbilgi/altbilgiye gitmek ve barkod resimlerini eklemek için **MoveToSection**, **MoveToHeaderFooter** ve **InsertImage** yöntemlerini kullanabilirsiniz.

Aşağıdaki kod örneği, bir belgenin her sayfasına barkod görüntüsünün nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Görüntü {#lock-aspect-ratio-of-image}'in En Boy Oranını Kilitle

Geometrik bir şeklin en boy oranı, farklı boyutlardaki boyutlarının oranıdır. [AspectRatioLocked](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapebase/aspectratiolocked/)'i kullanarak görüntünün en boy oranını kilitleyebilirsiniz. Şeklin en boy oranının varsayılan değeri [ShapeType](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapetype/)'ye bağlıdır. `ShapeType.Image` için *true*, diğer şekil türleri için *false*'dur.

Aşağıdaki kod örneği en boy oranıyla nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Points {#how-to-get-actual-bounds-of-shape-in-points}'te Gerçek Şekil Sınırları Nasıl Elde Edilir

Şeklin gerçek sınırlayıcı kutusunun sayfada işlendiği şekliyle olmasını istiyorsanız bunu [BoundsInPoints](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/boundsinpoints/) özelliğini kullanarak başarabilirsiniz.

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Görüntüleri Kırp {#crop-images}

Bir görüntünün kırpılması genellikle çerçevelemenin iyileştirilmesine yardımcı olmak için görüntünün istenmeyen dış kısımlarının kaldırılması anlamına gelir. Ayrıca belirli bir alana odaklanmayı artırmak amacıyla görüntünün bazı bölümlerinin kaldırılması için de kullanılır.

Aşağıdaki kod örneği, Aspose.Words API kullanılarak bunun nasıl başarılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Görüntüleri WMF {#save-images-as-wmf} Olarak Kaydet

Aspose.Words, DOCX'i RTF'ye dönüştürürken bir belgedeki mevcut tüm görüntüleri [WMF](https://docs.fileformat.com/image/wmf/) biçiminde kaydetme işlevi sağlar.

Aşağıdaki kod örneği, görüntülerin RTF kaydetme seçenekleriyle WMF olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
