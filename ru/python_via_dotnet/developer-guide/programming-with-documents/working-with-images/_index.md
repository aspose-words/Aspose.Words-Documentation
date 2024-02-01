---
title: Работа с изображениями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
description: "Создавайте и управляйте изображениями различных форматов в документе с помощью Python."
type: docs
weight: 300
url: /ru/python-net/working-with-images/
---

Aspose.Words позволяет пользователям очень гибко работать с изображениями. В этой статье вы сможете изучить лишь некоторые возможности работы с изображениями.

## Вставка изображения

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет несколько перегрузок метода [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), которые позволяют вставлять встроенное или плавающее изображение. Если изображение представляет собой метафайл EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут храниться в формате PNG. Метод **вставить_изображение** может использовать изображения из разных источников:

- Из файла или `URL`, передав строковый параметр
- Из потока, передав параметр `Stream`
- Из массива байтов путем передачи параметра массива байтов

Для каждого из **вставить_изображение** методов существуют дополнительные перегрузки, которые позволяют вставлять изображение со следующими параметрами:
- Встроенное или плавающее в определенной позиции, например, **вставить_изображение**
- Процентная шкала или нестандартный размер; кроме того, метод [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) возвращает объект [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), который был только что создан и вставлен, поэтому вы можете дополнительно изменить свойства объекта [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Вставка встроенного изображения

Передайте одну строку, представляющую файл, содержащий изображение, в [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), чтобы вставить изображение в документ как встроенную графику.

В следующем примере кода показано, как вставить в документ встроенное изображение в позиции курсора:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Вставка плавающего (абсолютно позиционированного) изображения

В следующем примере кода показано, как вставить плавающее изображение из файла или `URL` в указанную позицию и размер:

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

Все изображения хранятся внутри узлов [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Чтобы извлечь из документа все изображения или изображения определенного типа, выполните следующие действия:

— Используйте метод [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/), чтобы выбрать все [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) узлов.
- Перебирать полученные коллекции узлов.
- Проверьте логическое свойство [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
— Извлеките данные изображения, используя свойство [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Сохранение данных изображения в файл.

В следующем примере кода показано, как извлечь изображения из документа и сохранить их в виде файлов:

Вы можете скачать файл шаблона этого примера по адресу [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Как вставить штрих-код на каждую страницу документа

В этом примере показано, как добавить одинаковые или разные штрих-коды на все или определенные страницы документа Word. Не существует прямого способа добавить штрих-коды на все страницы документа, но вы можете использовать методы [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) и [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/), чтобы перейти к любому разделу или верхним/нижним колонтитулам и вставить изображения штрих-кода, как вы можете видеть в следующем коде.

Следующий пример кода вставляет изображение штрих-кода на каждую страницу документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Зафиксировать соотношение сторон изображения

Соотношение сторон геометрической фигуры — это соотношение ее размеров в разных измерениях. Вы можете заблокировать соотношение сторон изображения, используя [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Значение соотношения сторон фигуры по умолчанию зависит от [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Оно составляет `True` для [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) и `False` для других типов фигур.

В следующем примере кода показано, как работать с соотношением сторон:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Как получить фактические границы формы в точках

Если вы хотите, чтобы фактическая ограничивающая рамка фигуры отображалась на странице, вы можете добиться этого, используя свойство [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

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

## Обрезать изображения

Под обрезкой изображения обычно подразумевают удаление ненужных внешних частей изображения для улучшения кадрирования. Он также используется для удаления некоторых частей изображения, чтобы сосредоточить внимание на определенной области.

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

## Сохранение изображений в формате WMF

Aspose.Words предоставляет возможность сохранять все доступные изображения в документе в формате [ВМФ](https://docs.fileformat.com/image/wmf/) при преобразовании DOCX в RTF.

В следующем примере кода показано, как сохранить изображения в формате WMF с параметрами сохранения RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
