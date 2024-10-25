---
title: Şekilleri Belgeden Ayrı Oluşturma
second_title: Aspose.Words için C++
articleTitle: Şekilleri Belgeden Ayrı Oluşturma
linktitle: Şekilleri Belgeden Ayrı Oluşturma
description: "Bir belgeyi işlerken resimler, paragraflar içeren metin kutusu veya ok şekilleri gibi çeşitli grafik nesnelerini ayıklayın ve bunları harici bir konuma dışa aktarın."
type: docs
weight: 40
url: /tr/cpp/rendering-shapes-separately-from-a-document/
---

Belgeleri işlerken ortak bir görev, belgede bulunan tüm görüntüleri ayıklamak ve bunları harici bir konuma dışa aktarmaktır. Bu görev, görüntü verilerini ayıklamak ve kaydetmek için zaten işlevsellik sağlayan Aspose.Words API ile basitleşir. Bununla birlikte, bazen paragraflar, ok şekilleri ve küçük bir resim içeren bir metin kutusu gibi farklı türde bir çizim nesnesiyle temsil edilen diğer grafik içerik türlerini de benzer şekilde çıkarmak isteyebilirsiniz. Tek tek içerik öğelerinin bir birleşimi olduğu için bu nesneyi oluşturmanın basit bir yolu yoktur. Ayrıca, içeriğin tek bir görüntüye benzeyen nesneye gruplandırıldığı bir durumla da karşılaşabilirsiniz.

Aspose.Words, bu tür içeriği, işlenen içerikle şekilden basit bir görüntü çıkarabileceğiniz gibi çıkarmak için işlevsellik sağlar. Bu makalede, şekilleri belgeden bağımsız olarak oluşturmak için bu işlevin nasıl kullanılacağı açıklanır.

## Aspose.Words içindeki Şekil Türleri

Belge çizim katmanındaki tüm içerik, Aspose.Words Belge Nesnesi Modülündeki (DOM) [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) veya [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) düğümü ile temsil edilir. Bu tür içerikler metin kutuları, resimler, AutoShapes, OLE nesneler vb. Olabilir. Bazı alanlar şekil olarak da içe aktarılır, örneğin `INCLUDEPICTURE` alanı.

Basit bir görüntü, [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) 'nin **Shape** düğümü ile temsil edilir. Bu şekil düğümünde alt düğüm yoktur, ancak bu şekil düğümünde bulunan görüntü verilerine [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) özelliği ile erişilebilir. Öte yandan, bir şekil birçok alt düğümden de oluşabilir. Örneğin, [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) özelliği ile temsil edilen bir metin kutusu şekli, [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) ve [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) gibi birçok düğümden oluşabilir. Çoğu şekil **Paragraph** ve **Table** blok düzeyinde düğümleri içerebilir. Bunlar ana gövdede görünenlerle aynı düğümlerdir. Şekiller her zaman bir paragrafın parçalarıdır, ya doğrudan satır içine dahil edilir ya da **Paragraph,** 'e sabitlenir, ancak belge sayfasının herhangi bir yerinde "yüzer".

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Bir belge, birlikte gruplandırılmış şekiller de içerebilir. Gruplama, birden çok nesne seçip sağ tıklama menüsünde "Grupla" yı tıklatarak Microsoft Word 'da etkinleştirilebilir.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

Aspose.Words 'de, bu şekil grupları `GroupShape` düğümü ile temsil edilir. Bunlar, tüm grubu görüntüye dönüştürmek için aynı şekilde çağrılabilir.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

DOCX biçimi, diyagramlar veya grafikler gibi özel görüntü türleri içerebilir. Bu şekiller ayrıca Aspose.Words içindeki **Shape** düğümü aracılığıyla temsil edilir ve bu da onları görüntü olarak oluşturmak için benzer bir yöntem sağlar. Tasarım gereği, bu şekil bir görüntü (**ShapeType.Image**) olmadıkça, bir şekil çocuk olarak başka bir şekil içeremez. Örneğin, Microsoft Word başka bir metin kutusunun içine bir metin kutusu eklemenize izin vermez.

Yukarıda açıklanan şekil türleri, şekilleri [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) sınıfı aracılığıyla işlemek için özel bir yöntem sağlar. **ShapeRenderer** sınıfının bir örneği, **Shape** veya **GroupShape** için **GetShapeRenderer** yöntemi aracılığıyla veya **Shape** 'ü **ShapeRenderer** sınıfının yapıcısına geçirerek alınır. Bu sınıf, aşağıdakilere bir şekil oluşturmaya izin veren üyelere erişim sağlar:

- [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) yöntemini kullanarak diskteki dosyayı aşırı yükleme
- [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) yöntemini kullanarak akış aşırı yükleme
- [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) ve [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) yöntemlerini kullanarak `Graphics` Nesnesi

{{% alert color="primary" %}}

Bir **Shape** oluştururken, belge hiyerarşisinin bir parçası olmalıdır. **Shape** belge ağacının bir parçası değilse, **ShapeRenderer** yöntemlerini çağırdıktan sonra işlenen çıktı boş olacaktır.

{{% /alert %}}

## Dosyaya veya Akışa Oluşturma

[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) yöntemi, bir şekli doğrudan bir dosyaya veya akışa işleyen aşırı yükler sağlar. Her iki aşırı yük de [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) sınıfının bir örneğini kabul eder ve bu, şekli oluşturmak için seçeneklerin tanımlanmasına izin verir. Bu, [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) yöntemiyle aynı şekilde çalışır. Bu parametre gerekli olsa da, özel seçenek olmadığını belirterek boş bir değer iletebilirsiniz.

Şekil, [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) numaralandırmasında belirtilen herhangi bir görüntü biçiminde dışa aktarılabilir. Örneğin, görüntü, `SaveFormat.Jpeg` numaralandırmasını belirterek JPEG gibi bir raster görüntü veya `SaveFormat.Emf` belirterek EMF gibi bir vektör görüntüsü olarak oluşturulabilir.

Aşağıdaki kod örneği, EMF görüntüsüne bir şeklin belgeden ayrı olarak oluşturulmasını ve diske kaydedilmesini göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Aşağıdaki kod örneği, JPEG görüntüsüne bir şeklin belgeden ayrı olarak oluşturulmasını ve bir akışa kaydedilmesini göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

**ImageSaveOptions** sınıfı, görüntünün nasıl işleneceğini denetleyen çeşitli seçenekler belirlemenizi sağlar. Yukarıda açıklanan işlevler **GroupShape** ve **Shape** düğümlerine aynı şekilde uygulanabilir.

## .NET Grafik Nesnesine Oluşturma

Doğrudan bir **Graphics** nesnesine oluşturma, kendi ayarlarınızı ve **Graphics** nesnesinin durumunu tanımlamanıza olanak tanır. Yaygın bir senaryo, bir şeklin doğrudan bir Windows Formundan veya bir Bitmapten alınan bir **Graphics** nesnesine oluşturulmasını içerir. **Shape** düğümü oluşturulduğunda, ayarlar şekil görünümünü etkiler. Örneğin, **Graphics** nesnesi için **RotateTransform** veya **ScaleTransform** yöntemlerini kullanarak şekli döndürebilir veya ölçekleyebilirsiniz.

Aşağıdaki örnek, bir şeklin nasıl oluşturulacağını gösterir.**NET Graphics** belgeden ayrı olarak nesne oluşturun ve oluşturulan görüntüye döndürme uygulayın:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

[RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/) yöntemine benzer şekilde, [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) 'den devralınan [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) yöntemi, belge içeriğinin küçük resimlerini oluşturmak için kullanışlıdır. Şekil boyutu yapıcı aracılığıyla belirtilir. **RenderToSize** yöntemi, **Graphics** nesnesini, görüntü konumunun X ve Y koordinatlarını ve **Graphics** nesnesine çizilecek görüntünün boyutunu (genişlik ve yükseklik) kabul eder.

**Shape**, [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) sınıfından devralınan [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) yöntemi kullanılarak belirli bir ölçeğe dönüştürülebilir. Bu, aynı ana parametreleri kabul eden [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) yöntemine benzer. Bu iki yöntem arasındaki fark, **ShapeRenderer.RenderToScale** yöntemiyle, değişmez bir boyut yerine, şekli oluşturma sırasında ölçeklendiren bir kayan nokta değeri seçmenizdir. Float değeri 1.0 değerine eşitse, şeklin şu adreste oluşturulmasına neden olur: 100% orijinal boyutunda. Float değeri 0.5 görüntü boyutunu yarı yarıya azaltır.

## Şekil Görüntüsü Oluşturma

[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) sınıfı, çizim katmanındaki AutoShape, metin kutusu, serbest form, OLE nesnesi, ActiveX denetimi veya resim gibi nesneleri temsil eder. **Shape** sınıfını kullanarak, bir Microsoft Word belgesinde şekiller oluşturabilir veya değiştirebilirsiniz. Bir şeklin önemli bir özelliği [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) 'dır. Farklı türlerdeki şekiller, bir Word belgesinde farklı yeteneklere sahip olabilir. Örneğin, yalnızca resimler ve OLE şekiller içlerinde resimlere sahip olabilirken, şekillerin çoğunda yalnızca metin olabilir.

Aşağıdaki örnek, bir Şekil görüntüsünün belgeden ayrı olarak JPEG görüntüye nasıl oluşturulacağını ve diske nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Şekil Boyutunu Alma

[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) sınıfı ayrıca [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/) yöntemi aracılığıyla şeklin boyutunu piksel cinsinden almak için işlevsellik sağlar. Bu yöntem, şekil oluşturulduğunda şekil boyutunun hesaplanmasında kullanılan ölçek ve DPI olmak üzere iki kayan nokta türü (Tek) parametresini kabul eder. Yöntem, hesaplanan boyutun genişliğini ve yüksekliğini içeren `Size` nesnesini döndürür. Bu, işlenen şeklin boyutunu önceden bilmek gerektiğinde, örneğin işlenen çıktıdan yeni bir Bitmap oluştururken kullanışlıdır.

Aşağıdaki örnek, işlenecek şeklin genişliği ve yüksekliği ile yeni bir Bitmap ve Grafik nesnesinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

**RenderToSize** veya **RenderToScale** yöntemlerini kullanırken, işlenen görüntü boyutu da [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) nesnesinde döndürülür. Bu, bir değişkene atanabilir ve gerekirse kullanılabilir.

**SizeInPoints** özelliği, nokta cinsinden ölçülen Şekil boyutunu döndürür (bkz. [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Sonuç, genişliği ve yüksekliği içeren bir `SizeF` nesnesidir.
