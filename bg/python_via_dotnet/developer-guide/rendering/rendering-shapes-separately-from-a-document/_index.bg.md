---
title: Форми отделно от документ
second_title: Aspose.Words вместо Python via .NET
articleTitle: Преносими форми Отделно от документ
linktitle: Преносими форми Отделно от документ
description: "Извличане на различни графични обекти, като изображения, текстова кутия, съдържаща параграфи, или форми на стрелки, при обработка на документ, и ги експортират към външно място, използвайки Python."
type: docs
weight: 40
url: /bg/python-net/rendering-shapes-separately-from-a-document/
---

При обработката на документи, обща задача е да се извлекат всички изображения, намерени в документа и да се изнасят на външно място. Тази задача става проста с Aspose.Words API, която вече осигурява функционалността за извличане и запазване на данните от изображенията. Въпреки това, понякога може да искате да извлечете по подобен начин други видове графично съдържание, което е представено от различен тип рисуващ обект, например текстова кутия, съдържаща параграфи, форми на стрелки и малко изображение. Няма лесен начин да се направи този обект, тъй като той е комбинация от отделни елементи на съдържанието. Можете също така да се сблъскате със случай, когато съдържанието е групирано заедно в обекта, който изглежда като едно изображение.

Aspose.Words осигурява функционалност за извличане на този тип съдържание по същия начин, по който можете да извлечете просто изображение от форма като преведено съдържание. Тази статия описва как да се използва тази функционалност, за да се направят форми независимо от документа.

## Видове форма в Aspose.Words

Цялото съдържание в слой за рисуване на документи се представя от [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) възел в Aspose.Words Модул на обекта на документа (DOM). Такова съдържание могат да бъдат текстови кутии, изображения, AutoShapes, OLE обекти и др. Някои полета също се внасят като форми, например `INCLUDEPICTURE` поле.

Прост образ е представен от [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) възел на [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Тази форма възел няма детски възли, но данните от изображението, съдържащи се в тази форма възел може да бъде достъпен от [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) собственост. От друга страна, формата може да бъде съставена и от много детски възли. Например, формата текст кутия, която е представена от [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) имоти, могат да бъдат съставени от много възли, като [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) както и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Повечето форми могат да включват [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) както и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Блокови възли. Това са същите възли като тези, които се появяват в основното тяло. Формулите са винаги части от някой параграф, включени директно в линия или закотвени към [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), но. .. .. ..

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документът може да съдържа и форми, които са групирани заедно. Grouping може да бъде активиран в Microsoft Word чрез избор на няколко обекта и щракване върху гоGroupВ дясното меню.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words, Тези групи форми са представени от [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Възел. Те могат да бъдат използвани по същия начин, за да се направи цялата група да се образира.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Форматът DOX може да съдържа специални видове изображения, като диаграми или диаграми. Тези форми също са представени чрез [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Възел в Aspose.Words, който също така осигурява подобен метод за тяхното представяне като изображения. По дизайн формата не може да съдържа друга форма като дете, освен ако тази форма не е изображение ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Например, Microsoft Word не ви позволява да поставите текстова кутия в друга текстова кутия.

Типовете форма, описани по-горе, осигуряват специален метод за превръщане на формите през [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) Клас. Пример за [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) Класът се получава за a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) през [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) метод или чрез преминаване на [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) до конструктора на [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) Клас. Този клас осигурява достъп до членове, които позволяват да се направи форма на следното:

- Файл на диска
- Поток

{{% alert color="primary" %}}

Когато правите <span notrans="<span notrans=" [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)"=""></span>,"> трябва да е част от йерархията на документите. Ако [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) не е част от дървото на документа, след което преведената продукция ще бъде празна след като бъде призована [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) методи.

{{% /alert %}}

## Превръщане във файл или поток

На [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) метод осигурява претоварване, което прави формата директно към файл или поток. И двете претоварвания приемат случай на [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас, който позволява да се определят опции за представяне на формата. Това работи по същия начин като [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. Въпреки че този параметър е необходим, можете да преминете към нулева стойност, като посочите, че няма потребителски опции.

Форматът може да бъде изнесен във всеки формат на изображението, посочен в [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) Изброяване. Например, изображението може да бъде преведено като образ на растер, като JPEG чрез определяне на [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) изброяване или като векторно изображение, като EMF, като се посочва [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Примерът с кода по-долу илюстрира формата на изображение с EMF отделно от документ и запис на диск:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Примерът с кода по-долу илюстрира формата на изображение на JPEG отделно от документа и спестяване към поток:

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

На [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас ви позволява да посочите различни опции, които контролират как изображението се предава. Функционалността, описана по-горе, може да се прилага по същия начин към [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) както и [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Възли.

## Образуване на изображение

На [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) класът представлява обекти в рисувания слой, като AutoShape, текстова кутия, свободна форма, OLE обект, ActiveX контрол, или картина. Използване на [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас, можете да създавате или променяте форми в Microsoft Word документ. Важно свойство на формата е неговото [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Форми от различни типове могат да имат различни възможности в документ на Word. Например, само образ и OLE форми могат да имат изображения вътре в тях, докато повечето от формите могат да имат само текст.

Следният пример показва как да се направи изображение на формата на JPEG изображение отделно от документа и да се запази на диска:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Изтегляне на размера на формата

На [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) клас също така осигурява функционалност за извличане на размера на формата в пиксели през [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) метод. Този метод приема два параметъра на float (Single) - мащабът и kniff, които се използват при изчисляването на размера на формата, когато формата е предадена. Методът връща **Size** обект, който съдържа ширината и височината на изчисления размер. Това е полезно, когато е необходимо да знаете размера на формата предварително. На [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) имот връща размера на формата, измерен в точки. Резултатът е **SizeF** обект, съдържащ ширината и височината. Също така можете да използвате [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) собственост, за да получите реални граници на формата.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


