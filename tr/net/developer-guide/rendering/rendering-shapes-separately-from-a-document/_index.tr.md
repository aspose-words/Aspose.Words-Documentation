---
title: Şekilleri Belgeden Ayrı Olarak Oluşturma
second_title: .NET için Aspose.Words
articleTitle: Şekilleri Belgeden Ayrı Olarak Oluşturma
linktitle: Şekilleri Belgeden Ayrı Olarak Oluşturma
description: "Bir belgeyi işlerken resimler, paragraf içeren metin kutusu veya ok şekilleri gibi çeşitli grafik nesnelerini çıkarın ve bunları C# kullanarak harici bir konuma aktarın."
type: docs
weight: 40
url: /tr/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

Belgeleri işlerken ortak bir görev, belgede bulunan tüm görüntüleri çıkarmak ve bunları harici bir konuma aktarmaktır. Bu görev, halihazırda görüntü verilerinin çıkarılması ve kaydedilmesi işlevselliğini sağlayan Aspose.Words API ile basitleşiyor. Ancak bazen, paragraflar, ok şekilleri ve küçük bir resim içeren bir metin kutusu gibi, farklı türde bir çizim nesnesi tarafından temsil edilen diğer grafik içeriğini de benzer şekilde çıkarmak isteyebilirsiniz. Bireysel içerik öğelerinin birleşimi olduğundan bu nesneyi oluşturmanın doğrudan bir yolu yoktur. İçeriklerin tek bir görüntü gibi görünen nesne halinde gruplandığı bir durumla da karşılaşabilirsiniz.

Aspose.Words, bir şekilden basit bir görüntüyü oluşturulmuş içerik olarak çıkarabildiğiniz şekilde, bu tür içeriği ayıklamak için işlevsellik sağlar. Bu makalede, şekilleri belgeden bağımsız olarak oluşturmak için bu işlevin nasıl kullanılacağı açıklanmaktadır.

## Aspose.Words'teki Şekil Türleri

Bir belge çizim katmanındaki tüm içerik, Aspose.Words Belge Nesnesi Modülünde (DOM) [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) veya [GroupShape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/groupshape/) düğümü tarafından temsil edilir. Bu tür içerikler metin kutuları, resimler, Otomatik Şekiller, OLE nesneleri vb. olabilir. `INCLUDEPICTURE` alanı gibi bazı alanlar da şekil olarak içe aktarılır.

Basit bir görüntü, [ShapeType.Image](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapetype/)'nin **Shape** düğümü ile temsil edilir. Bu şekil düğümünün alt düğümleri yoktur ancak bu şekil düğümünün içerdiği görüntü verilerine [Shape.ImageData](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/imagedata/) özelliği tarafından erişilebilir. Öte yandan bir şekil birçok alt düğümden de oluşabilir. Örneğin, [ShapeType.TextBox](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapetype/) özelliğiyle temsil edilen bir metin kutusu şekli, [Paragraph](https://reference.aspose.com/words/tr/net/aspose.words/paragraph/) ve [Table](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/) gibi birçok düğümden oluşabilir. Çoğu şekil **Paragraph** ve **Table** blok düzeyi düğümlerini içerebilir. Bunlar ana gövdede görünenlerle aynı düğümlerdir. Şekiller her zaman bir paragrafın parçalarıdır; ya doğrudan satır içi olarak eklenir ya da **Paragraf,**'ye sabitlenir, ancak belge sayfasının herhangi bir yerinde "yüzer".

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Bir belge aynı zamanda birlikte gruplandırılmış şekiller de içerebilir. Grouping, Microsoft Word'de birden fazla nesne seçilerek ve sağ tıklama menüsünde "Group" tıklatılarak etkinleştirilebilir.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Aspose.Words'te bu şekil grupları [GroupShape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/groupshape/) düğümü tarafından temsil edilir. Bunlar aynı zamanda tüm grubun görüntüye dönüştürülmesi için aynı şekilde çağrılabilir.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX formatı diyagramlar veya çizelgeler gibi özel türde görüntüler içerebilir. Bu şekiller aynı zamanda Aspose.Words'deki **Shape** düğümü aracılığıyla da temsil edilir; bu da onları görüntü olarak oluşturmak için benzer bir yöntem sağlar. Tasarım gereği, bir şekil, bir resim (**ShapeType.Image**) olmadığı sürece, çocuk olarak başka bir şekil içeremez. Örneğin Microsoft Word, başka bir metin kutusunun içine metin kutusu eklemenize izin vermez.

Yukarıda açıklanan şekil türleri, şekilleri [ShapeRenderer](https://reference.aspose.com/words/tr/net/aspose.words.rendering/shaperenderer/) sınıfı aracılığıyla oluşturmak için özel bir yöntem sağlar. **ShapeRenderer** sınıfının bir örneği, bir **Shape** veya **GroupShape** için **GetShapeRenderer** yöntemi aracılığıyla veya **Shape**'in **ShapeRenderer** sınıfının yapıcısına iletilmesiyle alınır. Bu sınıf, aşağıdakilere şekil oluşturmaya izin veren üyelere erişim sağlar:

- [Save](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/save/) yöntemini aşırı yüklemeyi kullanarak diskteki dosya
- [Save](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/save/) yöntemi aşırı yüklemesini kullanarak akış yapın
- [RenderToSize](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/rendertosize/) ve [RenderToScale](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/rendertoscale/) yöntemlerini kullanarak .NET Grafik Nesnesi

{{% alert color="primary" %}}

**Shape** oluşturulurken belge hiyerarşisinin bir parçası olması gerekir. **Shape** belge ağacının bir parçası değilse, **ShapeRenderer** yöntemleri çağrıldıktan sonra oluşturulan çıktı boş olacaktır.

{{% /alert %}}

## Dosyaya veya Akışa İşleme

[Save](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/save/) yöntemi, bir şekli doğrudan bir dosyaya veya akışa aktaran aşırı yüklemeler sağlar. Her iki aşırı yükleme de şeklin oluşturulmasına yönelik seçeneklerin tanımlanmasına izin veren [ImageSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/) sınıfının bir örneğini kabul eder. Bu, [Document.Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/#save) yöntemiyle aynı şekilde çalışır. Bu parametre gerekli olmasına rağmen, özel seçenek olmadığını belirterek boş bir değer iletebilirsiniz.

Şekil, [SaveFormat](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/) numaralandırmasında belirtilen herhangi bir görüntü formatında dışa aktarılabilir. Örneğin görüntü, [SaveFormat.Jpeg](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/) numaralandırması belirtilerek JPEG gibi bir raster görüntü olarak veya [SaveFormat.Emf](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/) belirtilerek EMF gibi bir vektör görüntüsü olarak oluşturulabilir.

Aşağıdaki kod örneği, bir şeklin EMF görüntüsüne belgeden ayrı olarak işlenmesini ve diske kaydedilmesini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Aşağıdaki kod örneği, bir şeklin belgeden ayrı olarak bir JPEG görüntüsüne işlenmesini ve bir akışa kaydedilmesini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

**ImageSaveOptions** sınıfı, görüntünün nasıl oluşturulacağını kontrol eden çeşitli seçenekleri belirtmenize olanak tanır. Yukarıda açıklanan işlevsellik aynı şekilde **GroupShape** ve **Shape** düğümlerine de uygulanabilir.

## .NET Grafik Nesnesine İşleme

Doğrudan bir **Graphics** nesnesine dönüştürmek, kendi ayarlarınızı ve **Graphics** nesnesinin durumunu tanımlamanıza olanak tanır. Yaygın bir senaryo, bir şeklin doğrudan bir Windows Formu veya Bitmap'ten alınan bir **Graphics** nesnesine dönüştürülmesini içerir. **Shape** düğümü oluşturulduğunda ayarlar şeklin görünümünü etkileyecektir. Örneğin, **Graphics** nesnesi için **RotateTransform** veya **ScaleTransform** yöntemlerini kullanarak şekli döndürebilir veya ölçeklendirebilirsiniz.

Aşağıdaki örnek, belgeden ayrı olarak bir .**NET Graphics** nesnesine nasıl şekil oluşturulacağını ve oluşturulan görüntüye döndürmenin nasıl uygulanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

[RenderToSize](https://reference.aspose.com/words/tr/net/aspose.words/document/rendertosize/) yöntemine benzer şekilde, [NodeRendererBase](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/)'den devralınan [RenderToSize](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/rendertosize/) yöntemi, belge içeriğinin küçük resimlerini oluşturmak için kullanışlıdır. Şekil boyutu yapıcı aracılığıyla belirtilir. **RenderToSize** yöntemi, **Graphics** nesnesini, görüntünün konumunun X ve Y koordinatlarını ve **Graphics** nesnesi üzerine çizilecek görüntünün boyutunu (genişlik ve yükseklik) kabul eder.

**Shape**, [NodeRendererBase](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/) sınıfından devralınan [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/rendertoscale/) yöntemini kullanarak belirli bir ölçeğe dönüştürülebilir. Bu, aynı ana parametreleri kabul eden [Document.RenderToScale](https://reference.aspose.com/words/tr/net/aspose.words/document/rendertoscale/) yöntemine benzer. Bu iki yöntem arasındaki fark, **ShapeRenderer.RenderToScale** yönteminde gerçek boyut yerine şeklin oluşturulması sırasında şekli ölçeklendiren bir kayan nokta değeri seçmenizdir. Float değeri 1,0'a eşitse, şeklin orijinal boyutunun %100'ünde oluşturulmasına neden olur. 0,5'lik bir kayan değer, görüntü boyutunu yarı yarıya azaltır.

## Şekil Görüntüsü Oluşturma

[Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) sınıfı, çizim katmanındaki Otomatik Şekil, metin kutusu, serbest biçim, OLE nesnesi, ActiveX denetimi veya resim gibi nesneleri temsil eder. **Shape** sınıfını kullanarak bir Microsoft Word belgesinde şekiller oluşturabilir veya değiştirebilirsiniz. Bir şeklin önemli bir özelliği [ShapeType](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/base/properties/shapetype)'sidir. Farklı türlerdeki şekiller, bir Word belgesinde farklı yeteneklere sahip olabilir. Örneğin, yalnızca görüntü ve OLE şekillerinin içlerinde görüntüler bulunabilirken, şekillerin çoğunda yalnızca metin bulunabilir.

Aşağıdaki örnek, Shape görüntüsünün belgeden ayrı olarak JPEG görüntüsüne nasıl dönüştürüleceğini ve diske nasıl kaydedileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Şekil Boyutunu Alma

[ShapeRenderer](https://reference.aspose.com/words/tr/net/aspose.words.rendering/shaperenderer/) sınıfı ayrıca [GetSizeInPixels](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) yöntemi aracılığıyla şeklin boyutunu piksel cinsinden alma işlevselliği de sağlar. Bu yöntem, şekil oluşturulduğunda şekil boyutunun hesaplanmasında kullanılan ölçek ve DPI olmak üzere iki kayan (Tek) parametreyi kabul eder. Yöntem, hesaplanan boyutun genişliğini ve yüksekliğini içeren [Size](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) nesnesini döndürür. Bu, örneğin işlenmiş çıktıdan yeni bir Bitmap oluştururken, işlenmiş şeklin boyutunun önceden bilinmesi gerektiğinde kullanışlıdır.

Aşağıdaki örnek, oluşturulacak şeklin genişliği ve yüksekliğiyle yeni bir Bitmap ve Graphics nesnesinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

**RenderToSize** veya **RenderToScale** yöntemlerini kullanırken, oluşturulan görüntünün boyutu da [SizeF](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/rendertoscale/) nesnesinde döndürülür. Bu bir değişkene atanabilir ve gerekirse kullanılabilir.

**SizeInPoints** özelliği, nokta cinsinden ölçülen Şekil boyutunu döndürür (bkz. [ShapeRenderer](https://reference.aspose.com/words/tr/net/aspose.words.rendering/shaperenderer/). Sonuç, genişlik ve yüksekliği içeren bir `SizeF` nesnesidir.
