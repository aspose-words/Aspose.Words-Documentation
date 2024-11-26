---
title: Python'te Görüntülerle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Görsellerle Çalışmak
linktitle: Görsellerle Çalışmak
description: "Python'i kullanarak bir belgede çeşitli formatlardaki görüntüleri oluşturun ve yönetin."
type: docs
weight: 300
url: /tr/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words, kullanıcıların görüntülerle çok esnek bir şekilde çalışmasına olanak tanır. Bu makalede görüntülerle çalışmanın yalnızca bazı olanaklarını keşfedebilirsiniz.

## Resim Ekleme

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), satır içi veya kayan bir görüntü eklemenize olanak tanıyan [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) yönteminin çeşitli aşırı yüklemelerini sağlar. Görüntü bir EMF veya WMF meta dosyasıysa, belgeye meta dosyası biçiminde eklenecektir. Diğer tüm görseller PNG formatında saklanacaktır. **Resim ekle** yöntemi farklı kaynaklardan gelen görselleri kullanabilir:

- Bir dosyadan veya `URL`'ten bir dize parametresi ileterek
- Bir `Stream` parametresini ileterek bir akıştan
- Bir bayt dizisinden bir bayt dizisi parametresi ileterek

**Resim ekle** yöntemlerinin her biri için, aşağıdaki seçeneklere sahip bir görüntü eklemenizi sağlayan başka aşırı yüklemeler vardır:
- **Resim ekle** gibi belirli bir konumda satır içi veya kayan
- Yüzde ölçeği veya özel boyut; ayrıca [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) yöntemi, yeni oluşturulmuş ve eklenen bir [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) nesnesini döndürür; böylece [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)'nin özelliklerini daha fazla değiştirebilirsiniz

### Satır İçi Görüntü Ekleme

Görüntüyü belgeye satır içi grafik olarak eklemek için, görüntüyü içeren bir dosyayı temsil eden tek bir dizeyi [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/)'e iletin.

Aşağıdaki kod örneği, imleç konumunda satır içi görüntünün bir belgeye nasıl ekleneceğini gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Kayan (Kesinlikle Konumlandırılmış) Görüntü Ekleme

Aşağıdaki kod örneği, bir dosyadan veya `URL`'ten belirli bir konuma ve boyuta kayan görüntünün nasıl ekleneceğini gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## Bir Belgeden Görüntüler Nasıl Çıkarılır

Tüm görüntüler bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)'deki [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) düğümlerinde saklanır. Belgeden tüm görüntüleri veya belirli türdeki görüntüleri çıkarmak için şu adımları izleyin:

- Tüm [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) düğümlerini seçmek için [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) yöntemini kullanın.
- Ortaya çıkan düğüm koleksiyonlarını yineleyin.
- [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) boole özelliğini kontrol edin.
- [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) özelliğini kullanarak görüntü verilerini çıkarın.
- Görüntü verilerini bir dosyaya kaydedin.

Aşağıdaki kod örneği, bir belgeden görüntülerin nasıl çıkarılacağını ve bunların dosya olarak nasıl kaydedileceğini gösterir:

Bu örneğin şablon dosyasını [Burada](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx)'ten indirebilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Belgenin Her Sayfasına Barkod Nasıl Eklenir?

Bu örnek, bir Word belgesinin tüm veya belirli sayfalarına aynı veya farklı barkodları ekleyebileceğinizi gösterir. Bir belgenin tüm sayfalarına barkod eklemenin doğrudan bir yolu yoktur ancak aşağıdaki kodda görebileceğiniz gibi herhangi bir bölüme veya üstbilgi/altbilgiye gitmek ve barkod resimlerini eklemek için [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) ve [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) yöntemlerini kullanabilirsiniz.

Aşağıdaki kod örneği Bir belgenin her sayfasına bir barkod görüntüsü ekler.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Görüntünün En Boy Oranını Kilitle

Geometrik bir şeklin en boy oranı, farklı boyutlardaki boyutlarının oranıdır. [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/)'i kullanarak görüntünün en boy oranını kilitleyebilirsiniz. Şeklin en boy oranının varsayılan değeri [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)'ye bağlıdır. [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) için `True`, diğer şekil türleri için `False`'dur.

Aşağıdaki kod örneği en boy oranıyla nasıl çalışılacağını gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Noktalarda Gerçek Şekil Sınırları Nasıl Elde Edilir

Şeklin gerçek sınırlayıcı kutusunun sayfada işlendiği şekliyle olmasını istiyorsanız bunu [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) özelliğini kullanarak başarabilirsiniz.

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Resimleri Kırp

Bir görüntünün kırpılması genellikle çerçevelemenin iyileştirilmesine yardımcı olmak için görüntünün istenmeyen dış kısımlarının kaldırılması anlamına gelir. Ayrıca belirli bir alana odaklanmayı artırmak amacıyla görüntünün bazı bölümlerinin kaldırılması için de kullanılır.

Aşağıdaki kod örneği, Aspose.Words API kullanılarak bunun nasıl başarılacağını gösterir:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## Görüntüleri WMF Olarak Kaydetme

Aspose.Words, DOCX'i RTF'ye dönüştürürken bir belgedeki mevcut tüm görüntüleri [WMF](https://docs.fileformat.com/image/wmf/) biçiminde kaydetme işlevi sağlar.

Aşağıdaki kod örneği, görüntülerin RTF kaydetme seçenekleriyle WMF olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
