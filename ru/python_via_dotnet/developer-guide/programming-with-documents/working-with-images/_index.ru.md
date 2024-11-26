---
title: Работа с изображениями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
description: "Создавайте изображения различных форматов в документе и управляйте ими с помощью Python."
type: docs
weight: 300
url: /ru/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет пользователям работать с изображениями очень гибким способом. В этой статье вы можете рассмотреть лишь некоторые возможности работы с изображениями.

## Вставка изображения

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) содержит несколько дополнений к методу [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), который позволяет вставлять встроенное или плавающее изображение. Если изображение представляет собой метафайл EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут сохранены в формате PNG. В методе **insert_image** можно использовать изображения из разных источников:

- Из файла или `URL` путем передачи строкового параметра
- Из потока путем передачи параметра `Stream`
- Из массива байтов путем передачи параметра массива байтов

Для каждого из методов **insert_image** существуют дополнительные перегрузки, которые позволяют вставлять изображение со следующими параметрами:
- Встроенный или плавающий в определенном положении, например, **insert_image**
- Процентная шкала или пользовательский размер; кроме того, метод [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) возвращает объект [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), который был только что создан и вставлен, чтобы вы могли дополнительно изменять свойства объекта [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Вставка встроенного изображения

Передайте одну строку, представляющую файл, содержащий изображение, в [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), чтобы вставить изображение в документ в виде встроенного графического изображения.

В следующем примере кода показано, как вставить встроенное изображение в положение курсора в документе:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Вставка плавающего (абсолютно расположенного) Изображение

В следующем примере кода показано, как вставить плавающее изображение из файла или `URL` в указанное положение и размер:

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

## Как извлечь изображения из документа

Все изображения хранятся внутри [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) узлов в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Чтобы извлечь из документа все изображения или картинки определенного типа, выполните следующие действия:

- Используйте метод [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/), чтобы выбрать все узлы [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Выполните итерацию по результирующим наборам узлов.
- Проверьте логическое свойство [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Извлеките данные изображения, используя свойство [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Сохраните данные изображения в файл.

В следующем примере кода показано, как извлекать изображения из документа и сохранять их в виде файлов:

Вы можете скачать файл шаблона для этого примера с сайта [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Как вставить штрих-код на каждую страницу документа

В этом примере показано, как можно добавлять одинаковые или разные штрих-коды на все или определенные страницы документа Word. Прямого способа добавить штрих-коды на все страницы документа не существует, но вы можете использовать методы [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) и [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), чтобы перейти к любому разделу или верхним/нижним колонтитулам и вставить изображения штрих-кодов, как вы можете видеть в следующем коде.

В следующем примере кода изображение штрих-кода вставляется на каждую страницу документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Фиксируйте соотношение сторон изображения

Соотношение сторон геометрической фигуры - это соотношение ее размеров в разных измерениях. Вы можете настроить соотношение сторон изображения, используя [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Значение соотношения сторон фигуры по умолчанию зависит от [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Это `True` для [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) и `False` для других типов фигур.

В следующем примере кода показано, как работать с соотношением сторон:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Как получить фактические границы формы в точках

Если вы хотите, чтобы фактическая ограничивающая рамка фигуры отображалась на странице, вы можете добиться этого с помощью свойства [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

В следующем примере кода показано, как использовать это свойство:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Обрезка изображений

Обрезка изображения обычно означает удаление нежелательных внешних частей изображения, чтобы улучшить качество кадрирования. Она также используется для удаления некоторых частей изображения, чтобы увеличить фокусировку на определенной области.

В следующем примере кода показано, как этого добиться, используя Aspose.Words API:

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

## Сохранение изображений как WMF

Aspose.Words предоставляет функциональные возможности для сохранения всех доступных изображений в документе в [WMF](https://docs.fileformat.com/image/wmf/) форматируйте при преобразовании DOCX в RTF.

В следующем примере кода показано, как сохранять изображения как WMF с параметрами сохранения RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
