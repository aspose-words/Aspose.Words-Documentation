---
title: Робота з зображеннями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з зображеннями
linktitle: Робота з зображеннями
description: "Створення та керування зображеннями різних форматів у документі Pythonй"
type: docs
weight: 300
url: /uk/python-net/working-with-images/
---

Aspose.Words дозволяє користувачам працювати з зображеннями в дуже гнучкому режимі. У статті ви можете вивчити лише деякі можливості роботи з зображеннями.

## Вставка зображення

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) надає кілька перевантаженнях [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) метод, який дозволяє вставляти вбудований або плаваючий образ. Якщо зображення є метафілом EMF або WMF, він буде вставлятися в документ у форматі метафайлу. Всі інші зображення будуть зберігатися в форматі PNG. Про нас **вставка_зображення** метод може використовувати зображення з різних джерел:

- Від файлу або `URL` шляхом проходження параметра рядка
- Від потоку шляхом проходження `Stream` параметр
- Від байтного масиву шляхом проходження параметра байтного масиву

Для кожного **вставка_зображення** методи, є подальші перевантаження, які дозволяють вставляти зображення з такими опціями:
- Інлайн або плавлення на певній позиції, наприклад, **вставка_зображення**
- Процентна вага або користувацький розмір; далі, [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) метод повертає [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) об'єкт, який був просто створений і вставлений таким чином ви можете додатково змінювати властивості [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Вставляння Inline Зображення

Пройдіть один рядок, що представляє файл, який містить зображення [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) вставити зображення в документ як вбудована графіка.

Приклад наступного коду показує, як вставити образ в рядку в позицію курсора в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Вставляння Floating (розташовується) Зображення

Приклад наступного коду показує, як вставити плаваючу зображення з файлу або `URL` в зазначеному положенні і розмір:

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

## Як витягти зображення з документа

Всі зображення зберігаються всередині [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) вершини в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)й Щоб витягти всі зображення або зображення, які мають специфічний тип з документа, слідуйте за цими кроками:

- Використовуйте [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) спосіб вибрати всі [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) вершини.
- Зберігати за допомогою отриманих вершин.
- Перевірити [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) оленя майна.
- Вилучення даних зображень за допомогою [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) майно.
- Збережіть дані зображень в файл.

Приклад коду показує, як витягти зображення з документа і зберегти їх як файли:

Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx)й

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx)й

{{% /alert %}}

## Як вставити штрих-код на кожній сторінці документа

Цей приклад показує вам, щоб додати однакові або різні штрих-коди на всіх або специфічних сторінках документа Word. Немає прямого способу додавання штрих-кодів на всіх сторінках документа, але ви можете використовувати [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) і [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) методи переміщення в будь-який розділ або заголовки / нижній колонтитул і вставити зображення штрих-коду, як ви можете бачити в наступному коді.

Приклад наступного коду Вставте зображення штрих-коду на кожній сторінці документа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Lock Aspect Ratio Зображень

Співвідношення геометричної форми – співвідношення його розмірів в різних розмірах. Ви можете заблокувати співвідношення сторін зображення [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/)й Значення за замовчуванням співвідношення сторін форми залежить від [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)й Він `True` для [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) і `False` для інших типів форми.

Приклад коду показує, як працювати з співвідношенням сторін:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Як отримати реальні зв’язки форми в точках

Якщо ви хочете, щоб фактична обмежена коробка форми, як надана на сторінці, ви можете досягти цього, використовуючи [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) майно.

Приклад коду показує, як використовувати цю властивість:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Crop Зображення

Вирощування зображення зазвичай відноситься до видалення небажаних зовнішніх частин зображення, щоб допомогти поліпшити обрамлення. Також використовується для видалення деяких порцій зображення для збільшення фокусу на певній області.

Приклад коду показує, як досягти цього за допомогою Aspose.Words API:

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

## Збереження зображень як WMF

Aspose.Words забезпечує функціональність для збереження всіх доступних зображень в документі [ВМФ](https://docs.fileformat.com/image/wmf/) Формат при перетворенні DOCX в RTF.

Приклад коду показує, як зберегти зображення як WMF з параметрами збереження RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
