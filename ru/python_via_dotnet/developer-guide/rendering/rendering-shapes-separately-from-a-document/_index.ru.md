---
title: Фигуры отдельно от документа
second_title: Aspose.Words для Python via .NET
articleTitle: Визуализация фигур отдельно от документа
linktitle: Визуализация фигур отдельно от документа
description: "Извлекайте различные графические объекты, такие как изображения, текстовое поле, содержащее абзацы, или фигуры со стрелками, при обработке документа и экспортируйте их во внешнее расположение с помощью Python."
type: docs
weight: 40
url: /ru/python-net/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

При обработке документов обычной задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее хранилище. Эта задача упрощается с помощью функции Aspose.Words API, которая уже предоставляет функциональные возможности для извлечения и сохранения данных изображений. Однако иногда может потребоваться аналогичным образом извлечь графический контент других типов, представленный другим типом графического объекта, например, текстовое поле, содержащее абзацы, фигуры со стрелками и небольшое изображение. Простого способа визуализации этого объекта не существует, поскольку он представляет собой комбинацию отдельных элементов контента. Вы также можете столкнуться со случаем, когда содержимое было сгруппировано в объект, который выглядит как единое изображение.

Aspose.Words предоставляет функциональные возможности для извлечения этого типа содержимого таким же образом, как вы можете извлечь простое изображение из фигуры в качестве визуализируемого содержимого. В этой статье описывается, как использовать эту функциональность для визуализации фигур независимо от документа.

## Типы фигур в Aspose.Words

Все содержимое слоя рисования документа представлено узлом [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) в модуле объектов документа Aspose.Words (DOM). Таким содержимым могут быть текстовые поля, изображения, объекты AutoShapes, OLE и т.д. Некоторые поля также импортируются в виде фигур, например, поле `INCLUDEPICTURE`.

Простое изображение представлено узлом [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) из [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Этот узел формы не имеет дочерних узлов, но к данным изображения, содержащимся в этом узле формы, можно получить доступ с помощью свойства [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). С другой стороны, фигура также может состоять из множества дочерних узлов. Например, форма текстового поля, которая представлена свойством [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), может состоять из множества узлов, таких как [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Большинство форм могут включать узлы [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) на уровне блоков. Это те же узлы, что и в основной части документа. Фигуры всегда являются частями какого-либо абзаца, либо включенными непосредственно в текст, либо привязанными к [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), но "плавающими" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document_1](rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать фигуры, которые сгруппированы вместе. Группировку можно включить в Microsoft Word, выбрав несколько объектов и нажав "Сгруппировать" в контекстном меню.

![rendering-shapes-separately-from-a-document_2](rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words эти группы фигур представлены узлом [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Они также могут быть вызваны таким же образом, чтобы преобразовать всю группу в изображение.

![rendering-shapes-separately-from-a-document_3](rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, такие как диаграммы. Эти фигуры также представлены с помощью узла [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) в Aspose.Words, который также предоставляет аналогичный метод для их отображения в виде изображений. По замыслу, фигура не может содержать другую фигуру в качестве дочерней, если только эта фигура не является изображением ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Например, Microsoft Word не позволяет вставлять текстовое поле в другое текстовое поле.

Типы фигур, описанные выше, предоставляют специальный метод для визуализации фигур с помощью класса [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Экземпляр класса [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) извлекается для [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) с помощью метода [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) или путем передачи [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) конструктору класса [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Этот класс предоставляет доступ к элементам, которые позволяют отображать форму следующим образом:

- Файл на диске
- Течение

{{% alert color="primary" %}}

При отображении [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) он должен быть частью иерархии документов. Если [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) не является частью дерева документов, то после вызова методов [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) отображаемый результат будет пустым.

{{% /alert %}}

## Рендеринг в файл или поток

Метод [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) предоставляет перегрузки, которые отображают фигуру непосредственно в файл или поток. Обе перегрузки поддерживают экземпляр класса [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), который позволяет определять параметры для отображения фигуры. Это работает так же, как и метод [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Несмотря на то, что этот параметр является обязательным, вы можете передать нулевое значение, указав, что пользовательских параметров нет.

Фигура может быть экспортирована в любом графическом формате, указанном в перечислении [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Например, изображение можно отобразить как растровое, например, JPEG, указав перечисление [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), или как векторное, например, EMF, указав [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Приведенный ниже пример кода иллюстрирует рендеринг фигуры в виде изображения EMF отдельно от документа и сохранение на диск:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Приведенный ниже пример кода иллюстрирует рендеринг фигуры в виде изображения JPEG отдельно от документа и сохранение в потоке:

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

Класс [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) позволяет задать множество параметров, управляющих отображением изображения. Функциональность, описанная выше, может быть применена таким же образом к узлам [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) и [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Рендеринг изображения фигуры

Класс [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) представляет объекты на уровне рисования, такие как AutoShape, текстовое поле, произвольная форма, объект OLE, элемент управления ActiveX или изображение. Используя класс [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), вы можете создавать или изменять фигуры в документе Microsoft Word. Важным свойством фигуры является ее значение [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Фигуры разных типов могут иметь разные возможности в документе Word. Например, только фигуры image и OLE могут содержать изображения внутри себя, в то время как большинство фигур могут содержать только текст.

В следующем примере показано, как преобразовать изображение фигуры в изображение JPEG отдельно от документа и сохранить его на диске:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Получение размера фигуры

Класс [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) также предоставляет функциональные возможности для получения размера фигуры в пикселях с помощью метода [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Этот метод принимает два плавающих (одиночных) параметра – масштаб и DPI, которые используются при расчете размера фигуры при ее визуализации. Метод возвращает объект **Size**, который содержит ширину и высоту вычисленного размера. Это полезно, когда требуется заранее знать размер отображаемой фигуры. Свойство [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) возвращает размер фигуры, измеренный в точках. В результате получится объект **SizeF**, содержащий значения ширины и высоты. Также вы можете использовать свойство [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) для получения фактических границ фигуры.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


