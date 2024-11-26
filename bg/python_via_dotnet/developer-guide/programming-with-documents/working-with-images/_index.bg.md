---
title: Работа с изображения в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с изображения
linktitle: Работа с изображения
description: "Създаване и управление на изображения от различни формати в документ, използвайки Python."
type: docs
weight: 300
url: /bg/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволява на потребителите да работят с изображения по много гъвкав начин. В тази статия можете да разгледате само някои от възможностите за работа с изображения.

## Вмъкване на изображение

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) осигурява няколко претоварване на [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) метод, който ви позволява да вмъкнете в линия или плаващо изображение. Ако изображението е метафайл EMF или WMF, то ще бъде вмъкнато в документа във формат metafile. Всички останали изображения ще се съхраняват във формат PNG. На **plug_image** метод може да използва изображения от различни източници:

- От файл или `URL` чрез преминаване на параметър на низ
- От поток преминавайки `Stream` параметър
- От байт масив чрез преминаване на параметър байт масив

За всяка от **plug_image** методи, има допълнителни претоварване, които ви позволяват да въведете изображение със следните опции:
- Inline или плаващи в определена позиция, например, **plug_image**
- Процентен размер или размер; [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) метод връща a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) обект, който току-що е създаден и поставен, така че можете допълнително да промените свойствата на [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Вмъкване на вградено изображение

Подай един низ, представляващ файл, който съдържа изображението [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) да вкарате изображението в документа като графична линия.

Следният пример за код показва как да се вкара в документ изображение в полето на курсора:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Вмъкване на плаващ (абсолютно позициониран) образ

Следният пример с код показва как да се постави плаващо изображение от файл или `URL` в определено положение и размер:

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

## Как да извлечете изображения от документ

Всички изображения се съхраняват вътре [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Възли в а [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). За да извлечете всички изображения или изображения със специфичен тип от документа, следвайте следните стъпки:

- Използвайте [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод за избор на всички [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Възли.
- Итерат чрез получени възли колекции.
- Проверете [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) Булеанска собственост.
- Извличане на изображения с помощта на [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) собственост.
- Запис на данните от изображението във файл.

Следният пример с код показва как да извлечете изображения от документ и да ги запишете като файлове:

Можете да изтеглите шаблонния файл на този пример от [Тук](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Как да въведете баркод на всяка страница на документ

Този пример показва, че трябва да добавите същите или различни баркоди на всички или конкретни страници на Word документ. Няма директен начин за добавяне на баркоди на всички страници на документ, но можете да използвате [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) както и [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) методи за преминаване към някоя секция или заглавни части/краки и вмъкване на баркод изображения, както можете да видите в следния код.

Следният пример с код вмъква изображение с баркод на всяка страница от документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Lock Aspect Съотношение на изображението

Съотношението на аспекта на геометрична форма е съотношението на размерите му в различни размери. Можете да заключите съотношението на изображението [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). По подразбиране стойността на съотношението на аспекта на формата зависи от [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Така е. `True` вместо [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) както и `False` за други типове форми.

Следният пример за код показва как да се работи с отношението на аспекта:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Как да получите действително границите на форма в точки

Ако искате действително вързана кутия на формата, както е преведено на страницата, можете да постигнете това чрез използване на [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) собственост.

Следният пример за код показва как да използвате това свойство:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Житните изображения

Изрязването на изображение обикновено се отнася до премахването на нежеланите външни части на изображението, за да се подобри рамката. Използва се и за премахване на някои части от изображението за увеличаване на фокуса върху определена област.

Следният пример за код показва как да се постигне това използване Aspose.Words API:

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

## Запис на изображения като WMF

Aspose.Words осигурява функционалност за запис на всички налични изображения в документ [WMF](https://docs.fileformat.com/image/wmf/) формат при преобразуване на DOCX в RTF.

Следният пример за код показва как да запишете изображения като WMF с RTF опции за запис:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
