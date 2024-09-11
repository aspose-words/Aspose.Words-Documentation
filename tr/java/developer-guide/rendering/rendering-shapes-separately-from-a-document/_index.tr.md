---
title: Bir Belge İçinden Şekilleri Ayrı Olarak Görüntüleme
second_title: Aspose.Words için Java
articleTitle: Bir Belge İçinden Şekilleri Ayrı Olarak Görüntüleme
linktitle: Bir Belge İçinden Şekilleri Ayrı Olarak Görüntüleme
description: "Bir belge işlerken çeşitli grafik nesneleri, örneğin resimler, paragraf içeren metin kutuları veya ok şekilleri ayıklayın ve bunları Java kullanarak bir harici konuma dışa aktarın."
type: docs
weight: 40
url: /tr/java/rendering-shapes-separately-from-a-document/
---

Bir belge işlerken, yaygın bir görev tüm belgedeki bulunan görüntüleri ayıklamaktır ve bunları harici bir konuma dışa aktarır. Bu görev Aspose.Words ve API'ile basit hale gelir, ki bu zaten görüntü verilerini ayıklayıp kaydetme işlevselliğini sağlar. Fakat bazen benzer şekilde farklı bir tür çizim nesnesi ile temsil edilen başka bir tür grafik içeriğini de ayıklamak isteyebilirsiniz, örneğin paragraflar içeren bir metin kutusu, ok şekilleri ve küçük bir resim. Bu nesne bireysel içerik öğelerinin bir kombinasyonu olduğu için bu nesneyi doğrudan görüntülemek için kolay bir yol yoktur. Ayrıca içeriğin tek bir görüntüye benzeyen bir nesne içine gruplandıkları bir durumla karşılaşabilirsiniz.

Aspose.Words basit bir görüntüyü şekil olarak işlenmiş içerikten ayıklayabileceğiniz gibi bu tür içeriği ayıklamak için işlevsellik sağlar. Bu makale, şekilleri belge bağımsız olarak oluşturmak için bu işlevselliği nasıl kullanacağınızı anlatır.

## Şekil Türleri Aspose.Words'da

Bir belge çizim katmanındaki tüm içerik [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) veya [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) düğümü ile temsil edilir Aspose.Words Belge Nesne Modülü (DOM ). Böyle içerikler metin kutuları, resimler, AutoShapes, OLE nesneleri vb olabilir. Bazı alanlar da şekiller olarak içe aktarılır, örneğin, `INCLUDEPICTURE` alanı.

Basit bir resim bir **Shape** düğümünün [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE) tarafından temsil edilir. Bu şekil düğümüne çocuk düğümleri yoktur ancak bu şekil düğümü içinde bulunan resim verilerine [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) özelliği ile erişilebilir. Öte yandan bir şekil de birçok alt düğümden oluşabilir. Örneğin, bir metin kutusunun şekli, [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) özelliği tarafından temsil edilir ve [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ve [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) gibi birçok düğümden oluşabilir. Çoğu şekil **Paragraph** ve **Table** blok düzeyinde düğümleri içerebilir. Bu ana gövdedeki olanlarla aynı düğümlerdir. Şekiller her zaman bir paragrafın parçasıdır ya doğrudan satır içi içinde yer alıyor ya da **Paragraf,**'e bağlı. Ancak "belge sayfasının herhangi bir yerinde yüzerler."

![rendering-shapes-separately-from-a-document-aspose-words-java-1](rendering-shapes-separately-from-a-document-1.png)

Bir belge ayrıca gruplandırılmış şekiller de içerebilir. Grouping, Microsoft Word'de birden fazla nesne seçerek ve sağ tıklama menüsündeki "Group"'e tıklayarak etkinleştirilebilir.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](rendering-shapes-separately-from-a-document-2.png)

Bir Aspose.Words, bu şekil gruplarını temsil eden bir [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) düğümü var. Bu da görüntüye bu grubun tümünü oluşturmak için aynı şekilde çağrılabilir.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](rendering-shapes-separately-from-a-document-3.png)

DOCX formatı, diyagramlar ya da grafikler gibi özel tipteki resimleri içerebilir. Bu şekiller ayrıca **Shape** düğümünde Aspose.Words aracılığıyla da temsil edilir, bu da onları resim olarak göstermek için benzer bir yöntem sağlar. Tasarım gereği bir şekil başka bir şekili çocuk olarak içeremez, eğer o şekil bir resim ise ( **ShapeType.Image** ). Örneğin, Microsoft Word başka bir metin kutusunun içine metin kutusu eklemenize izin vermez.

Yukarıda açıklanan şekil türleri, şekilleri [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) sınıfı aracılığıyla oluşturmak için özel bir yöntem sağlar. Bir **ShapeRenderer** sınıf örneği, bir **Shape** veya **GroupShape** aracılığıyla, ya da **GetShapeRenderer** yöntemini çağırarak veya **Shape** değerini **ShapeRenderer** sınıfının oluşturucusuna geçirerek alınır. Bu sınıf, aşağıdaki gibi bir şeklin işlenmesine izin veren üyelere erişim sağlar:

- Disk üzerindeki dosya [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) yöntemi aşırı yükleme
- [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) yöntem aşırı yüklemesini kullanarak akış yapın
Grafik nesnesini [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) ve [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) yöntemlerini kullanarak oluşturun

{{% alert color="primary" %}}

Bir **Shape** işlerken, o belgenin hiyerarşisinin bir parçası olmalı. Eğer **Shape**, belgenin ağacının bir parçası değilse, **ShapeRenderer** yöntemlerini çağırdıktan sonra çıktı boş olacaktır.

{{% /alert %}}

## Dosyaya veya Akışı Çizim

The [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) yöntemi bir şekil doğrudan bir dosyaya veya akışa oluşturmak için aşırı yüklemeler sağlar. Her iki aşırı yükleme bir [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) sınıfının örneğini kabul eder, bu da şeklin işlenmesi için seçenekler tanımlamayı sağlar. Bu, [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) yönteminin aynı şekilde çalıştığı gibi çalışır. Bu parametre gereklidir ancak siz özel seçeneklerin olmadığını belirten bir null değeri geçirebilirsiniz.

Şekli, [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) numaralandırmada belirtilen herhangi bir görüntü formatında dışarı aktarılabilir. Örneğin, resim bir raster görüntüsü, örneğin JPEG belirtmek için bir [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) numaralandırma veya bir vektör görüntüsü, örneğin EMF belirtmek için bir [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF) ile oluşturulabilir.

Aşağıdaki kod örneğinde bir şeklin belge ayrı olarak bir EMF görüntüsüne işlenmesi ve diske kaydedilmesi gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Aşağıdaki kod örneği bir şekli ayrı bir belge olarak ve dosya akışına kaydederek bir jpeg görüntüsüne işleme göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Sınıf **ImageSaveOptions**, görüntü nasıl işleneceğini kontrol eden çeşitli seçenekleri belirtmenizi sağlar. Yukarıda açıklanan işlevsellik aynı şekilde **GroupShape** ve **Shape** düğümlerine uygulanabilir.

## Bir `Graphics` Nesnesine Giden

Doğrudan bir **Graphics** nesnesine çizim yapmak sizin kendi ayarlarınızı ve **Graphics** nesnesinin durumunu tanımlamanıza olanak tanır. A common scenario involves rendering a shape directly to a **Graphics** object retrieved from a Windows form veya bir bitmap. **Shape** düğümü işlendiğinde ayarlar şekil görünümünü etkileyecektir. Örneğin, şekilleri **Graphics** nesnesi için **RotateTransform** veya **ScaleTransform** yöntemlerini kullanarak döndürme veya ölçeklendirme yapabilirsiniz.

Aşağıdaki örnek, bir şekli ayrı olarak belgeden bir **Graphics** nesnesine nasıl oluşturacağını ve oluşturulan görüntüye döndürme uygulayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Aynı şekilde, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) yöntemine benzer şekilde, [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/)'tan miras alınan [RenderToSize ](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) yöntemi bir belge içeriğinin küçük resimlerini oluşturmada faydalıdır. Şekli boyut yapılandırıcı aracılığıyla belirtilir. Bu **RenderToSize** yöntemi **Graphics** nesnesini kabul eder.X ve Y koordinatları görüntü pozisyonu ve çizilecek olan resim boyutunun (genişlik ve yükseklik) **Graphics** nesnesine çizileceği.

**Shape** bir ölçekte işlenebilir [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) yöntem kullanılarak [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) sınıfından devralınmıştır. Bu aynı büyük parametreleri kabul eden [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) yöntemine benzer. Bu iki yöntem arasındaki fark şu ki **ShapeRenderer.RenderToScale** yöntemi ile yerine, bir tam boyut yerine, şeklin çizim sırasında ölçeklendirilmesini sağlayan bir yüze değer seçersiniz. Float değeri 1.0'e eşit olduğunda, şeklin orijinal boyutunun %100'sinde işlenmesi Bir yüzer değer 0.5, görüntünün boyutunu yarıya indirir.

## Şekil Görüntüsünü Oluşturma

The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) sınıfı çizim katmanındaki nesneleri temsil eder, örneğin AutoShape, metin kutusu, serbest form, OLE nesnesi, ActiveX denetimi veya bir resim. **Shape** sınıfı kullanarak, bir Microsoft Word belgesinde şekiller oluşturabilir veya değiştirebilirsiniz. Bir şeklin önemli bir özelliği, onun [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)'dir. Farklı şekiller bir Word belgesinde farklı yeteneklere sahip olabilir. Örneğin, sadece resimler ve OLE şekilleri içinde resimlere sahip olabilirken çoğu şekil sadece metinlere sahip olabilir.

Aşağıdaki örnek, bir şekil görüntüsünü ayrı olarak bir belgeye dönüştürmeyi ve bunu diske kaydetmeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Bir Şekil Boyutunu Alma

Sınıf ayrıca şeklin piksel cinsinden boyutunu almak için işlevsellik sağlar [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) yöntemi aracılığıyla [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float). Bu yöntem iki float (Tekli) parametre kabul eder - ölçek ve DPI, şeklin boyutu hesaplanırken kullanılan. Yöntem hesaplanan boyutun genişlik ve yüksekliğini içeren [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) nesnesini döndürür. Bu bir şeklin boyutu önceden bilindiğinde yararlıdır, örneğin çıktıyı işleyerek yeni bir Bitmap oluştururken.

Aşağıdaki örnek, çizilecek şeklin genişliği ve yüksekliği ile yeni bir Bitmap ve Graphics nesnesi oluşturmayı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

**RenderToSize** veya **RenderToScale** yöntemlerini kullanırken işlenmiş görüntü boyutu da [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) nesnesinde döndürülür. Bu bir değişkene atanabilir ve gerekirse kullanılabilir.

The **SizeInPoints** özelliği noktalarda ölçülen şekil boyutunu döndürür (bakınız [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Sonuç bir `SizeF` nesnesidir ve genişlik ve yüksekliği içerir.
