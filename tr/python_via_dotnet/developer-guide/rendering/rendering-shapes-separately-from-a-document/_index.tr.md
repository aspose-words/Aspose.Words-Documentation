---
title: Belgeden Ayrı Şekiller
second_title: Python via .NET için Aspose.Words
articleTitle: Şekilleri Belgeden Ayrı Olarak Oluşturma
linktitle: Şekilleri Belgeden Ayrı Olarak Oluşturma
description: "Bir belgeyi işlerken resimler, paragraf içeren metin kutusu veya ok şekilleri gibi çeşitli grafik nesnelerini çıkarın ve bunları Python kullanarak harici bir konuma aktarın."
type: docs
weight: 40
url: /tr/python-net/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Belgeleri işlerken ortak bir görev, belgede bulunan tüm görüntüleri çıkarmak ve bunları harici bir konuma aktarmaktır. Bu görev, halihazırda görüntü verilerinin çıkarılması ve kaydedilmesi işlevselliğini sağlayan Aspose.Words API ile basitleşiyor. Ancak bazen, paragraflar, ok şekilleri ve küçük bir resim içeren bir metin kutusu gibi farklı türde bir çizim nesnesi tarafından temsil edilen diğer grafik içeriğini de benzer şekilde çıkarmak isteyebilirsiniz. Bireysel içerik öğelerinin birleşimi olduğundan bu nesneyi oluşturmanın doğrudan bir yolu yoktur. İçeriklerin tek bir görüntü gibi görünen nesne halinde gruplandırıldığı bir durumla da karşılaşabilirsiniz.

Aspose.Words, bir şekilden basit bir görüntüyü oluşturulmuş içerik olarak çıkarabildiğiniz şekilde, bu tür içeriği ayıklamak için işlevsellik sağlar. Bu makalede, şekilleri belgeden bağımsız olarak oluşturmak için bu işlevin nasıl kullanılacağı açıklanmaktadır.

## Aspose.Words'teki Şekil Türleri

Bir belge çizim katmanındaki tüm içerik, Aspose.Words Belge Nesnesi Modülünde (DOM) [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) veya [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) düğümü tarafından temsil edilir. Bu tür içerikler metin kutuları, resimler, Otomatik Şekiller, OLE nesneleri vb. olabilir. `INCLUDEPICTURE` alanı gibi bazı alanlar da şekil olarak içe aktarılır.

Basit bir görüntü, [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image)'nin [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) düğümü ile temsil edilir. Bu şekil düğümünün alt düğümleri yoktur ancak bu şekil düğümünün içerdiği görüntü verilerine [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) özelliği tarafından erişilebilir. Öte yandan bir şekil birçok alt düğümden de oluşabilir. Örneğin [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) özelliğiyle temsil edilen bir metin kutusu şekli [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ve [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) gibi birçok düğümden oluşabilir. Çoğu şekil [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ve [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) blok düzeyi düğümlerini içerebilir. Bunlar ana gövdede görünenlerle aynı düğümlerdir. Şekiller her zaman bir paragrafın parçalarıdır; ya doğrudan satır içi olarak eklenir ya da [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)'a sabitlenir, ancak belge sayfasının herhangi bir yerinde "yüzer".

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Bir belge aynı zamanda birlikte gruplandırılmış şekiller de içerebilir. Grouping, Microsoft Word'de birden fazla nesne seçilerek ve sağ tıklama menüsünde "Group" tıklatılarak etkinleştirilebilir.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Aspose.Words'te bu şekil grupları [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) düğümü tarafından temsil edilir. Bunlar aynı zamanda tüm grubun görüntüye dönüştürülmesi için aynı şekilde çağrılabilir.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX formatı diyagramlar veya çizelgeler gibi özel türde görseller içerebilir. Bu şekiller aynı zamanda Aspose.Words'deki [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) düğümü aracılığıyla da temsil edilir; bu da onları görüntü olarak işlemek için benzer bir yöntem sağlar. Tasarım gereği, bir şekil, o şekil bir görüntü ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)) olmadığı sürece, çocuk olarak başka bir şekil içeremez. Örneğin Microsoft Word, başka bir metin kutusunun içine metin kutusu eklemenize izin vermez.

Yukarıda açıklanan şekil türleri, şekilleri [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) sınıfı aracılığıyla oluşturmak için özel bir yöntem sağlar. [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) sınıfının bir örneği, bir [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) veya [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) için [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) yöntemi aracılığıyla veya [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)'nin [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) sınıfının yapıcısına iletilmesiyle alınır. Bu sınıf, aşağıdakilere şekil oluşturmaya izin veren üyelere erişim sağlar:

- Diskteki dosya
- Aktarım

{{% alert color="primary" %}}

[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) oluşturulurken belge hiyerarşisinin bir parçası olması gerekir. [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) belge ağacının bir parçası değilse, [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) yöntemleri çağrıldıktan sonra oluşturulan çıktı boş olacaktır.

{{% /alert %}}

## Dosyaya veya Akışa İşleme

[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) yöntemi, bir şekli doğrudan bir dosyaya veya akışa aktaran aşırı yüklemeler sağlar. Her iki aşırı yükleme de şeklin oluşturulmasına yönelik seçeneklerin tanımlanmasına izin veren [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) sınıfının bir örneğini kabul eder. Bu, [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) yöntemiyle aynı şekilde çalışır. Bu parametre gerekli olmasına rağmen, özel seçenek olmadığını belirterek boş bir değer iletebilirsiniz.

Şekil, [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) numaralandırmasında belirtilen herhangi bir görüntü formatında dışa aktarılabilir. Örneğin görüntü, [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) numaralandırması belirtilerek JPEG gibi bir raster görüntü olarak veya [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf) belirtilerek EMF gibi bir vektör görüntüsü olarak oluşturulabilir.

Aşağıdaki kod örneği, bir şeklin EMF görüntüsüne belgeden ayrı olarak işlenmesini ve diske kaydedilmesini gösterir:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Aşağıdaki kod örneği, bir şeklin belgeden ayrı olarak bir JPEG görüntüsüne işlenmesini ve bir akışa kaydedilmesini gösterir:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

[ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) sınıfı, görüntünün nasıl oluşturulacağını kontrol eden çeşitli seçenekleri belirtmenize olanak tanır. Yukarıda açıklanan işlevsellik aynı şekilde [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ve [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) düğümlerine de uygulanabilir.

## Şekil Görüntüsü Oluşturma

[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sınıfı, çizim katmanındaki Otomatik Şekil, metin kutusu, serbest biçim, OLE nesnesi, ActiveX denetimi veya resim gibi nesneleri temsil eder. [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sınıfını kullanarak bir Microsoft Word belgesinde şekiller oluşturabilir veya değiştirebilirsiniz. Bir şeklin önemli bir özelliği [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/)'dir. Farklı türlerdeki şekiller, bir Word belgesinde farklı yeteneklere sahip olabilir. Örneğin, yalnızca görüntü ve OLE şekillerinin içinde görüntüler bulunabilirken, çoğu şeklin yalnızca metni olabilir.

Aşağıdaki örnek, Shape görüntüsünün belgeden ayrı olarak JPEG görüntüsüne nasıl dönüştürüleceğini ve diske nasıl kaydedileceğini gösterir:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Şekil Boyutunu Alma

[ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) sınıfı ayrıca [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) yöntemi aracılığıyla şeklin boyutunu piksel cinsinden alma işlevselliği de sağlar. Bu yöntem, şekil oluşturulduğunda şekil boyutunun hesaplanmasında kullanılan ölçek ve DPI olmak üzere iki kayan (Tek) parametreyi kabul eder. Yöntem, hesaplanan boyutun genişliğini ve yüksekliğini içeren **Size** nesnesini döndürür. Bu, oluşturulan şeklin boyutunun önceden bilinmesi gerektiğinde kullanışlıdır. [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) özelliği, nokta cinsinden ölçülen Şekil boyutunu döndürür. Sonuç, genişliği ve yüksekliği içeren bir **SizeF** nesnesidir. Ayrıca şeklin gerçek sınırlarını elde etmek için [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) özelliğini kullanabilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


