---
title: Работа с изображениями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с изображениями
linktitle: Работа с изображениями
description: "Создание и управление изображениями различных форматов в документе с использованием Python."
type: docs
weight: 300
url: /ru/python-net/working-with-images/
---

Aspose.Words Это позволяет пользователям работать с изображениями очень гибко. В этой статье вы можете изучить только некоторые возможности работы с изображениями.

## Вставить изображение

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Это приводит к нескольким перегрузкам в [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) Способ, позволяющий вставить входящее или плавающее изображение. Если изображение является метафайлом EMF или WMF, оно будет вставлено в документ в формате метафайла. Все остальные изображения будут храниться в формате PNG. The **Вставить_изображение** Метод может использовать изображения из разных источников:

- из файла или `URL` Пройдя струнный параметр
- из ручья, проходя мимо `Stream` параметр
- из байтового массива путем пропускания параметра байтового массива

Для каждого из них **Вставить_изображение** Есть дополнительные перегрузки, которые позволяют вставить изображение со следующими опциями:
- наклонные или плавающие в определенном положении, например, **Вставить_изображение**
- Процентная шкала или пользовательский размер; кроме того, [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) Способ возвращает [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) объект, который был только что создан и вставлен, чтобы вы могли дополнительно изменять свойства объекта. [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Вставить встроенное изображение

Передайте одну строку, представляющую файл, который содержит изображение для [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) вставить изображение в документ в виде встроенной графики.

Следующий пример кода показывает, как вставить встроенное изображение в положение курсора в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Вставить плавающее (абсолютно позиционированное) изображение

Следующий пример кода показывает, как вставить плавающее изображение из файла или `URL` в определенном положении и размере:

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

Все изображения хранятся внутри [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) узлы в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Чтобы извлечь из документа все изображения или изображения определенного типа, выполните следующие действия:

- Используйте [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) Способ выбрать все [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Узлы.
- Итерировать через результирующие коллекции узлов.
- Проверьте. [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) Булева собственность.
- Извлекать данные изображения с помощью [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) собственность.
- Сохранить данные изображения в файл.

Следующий пример кода показывает, как извлечь изображения из документа и сохранить их в виде файлов:

Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Как вставить штрих-код на каждой странице документа

Этот пример показывает, что вы добавляете одинаковые или разные штрих-коды на все или конкретные страницы документа Word. Нет прямого способа добавить штрих-коды на всех страницах документа, но вы можете использовать штрих-коды. [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) и [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) Способы перемещения в любой раздел или заголовки/футеры и вставки изображений штрих-кода, как вы можете видеть в следующем коде.

Следующий пример кода вставляет изображение штрих-кода на каждую страницу документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Соотношение сторон изображения

Соотношение сторон геометрической формы - это отношение ее размеров в разных размерах. Вы можете заблокировать соотношение сторон изображения с помощью [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Значение по умолчанию отношения сторон формы зависит от [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Это `True` для [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) и `False` для других типов форм.

Следующий пример кода показывает, как работать с соотношением сторон:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Как получить реальные границы формы в точках

Если вы хотите, чтобы фактическая ограничительная коробка формы отображалась на странице, вы можете достичь этого, используя [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) собственность.

Следующий пример кода показывает, как использовать это свойство:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Изображения Crop

Обрезка изображения обычно относится к удалению нежелательных внешних частей изображения, чтобы помочь улучшить обрамление. Он также используется для удаления некоторых частей изображения, чтобы увеличить фокус на определенной области.

Следующий пример кода показывает, как достичь этого с помощью Aspose.Words API:

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

Aspose.Words обеспечивает функциональность для сохранения всех доступных изображений в документе [WMF](https://docs.fileformat.com/image/wmf/) Преобразование DOCX в RTF.

Следующий пример кода показывает, как сохранить изображения как WMF с опциями сохранения RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
