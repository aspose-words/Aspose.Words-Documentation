---
title: Фигуры отдельно от документа
second_title: Aspose.Words для Python via .NET
articleTitle: Рендеринг фигур отдельно от документа
linktitle: Рендеринг фигур отдельно от документа
description: "Извлекайте различные графические объекты, такие как изображения, текстовое поле, содержащее абзацы, или формы стрелок, при обработке документа, и экспортируйте их во внешнее расположение с помощью Python."
type: docs
weight: 40
url: /ru/python-net/rendering-shapes-separately-from-a-document/
---

При обработке документов обычной задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее расположение. Эта задача упрощается с помощью модели Aspose.Words API, которая уже обеспечивает функциональность для извлечения и сохранения данных изображения. Однако иногда вам может потребоваться аналогичным образом извлечь другие типы графического содержимого, представленные объектом рисования другого типа, например текстовое поле, содержащее абзацы, фигуры стрелок и небольшое изображение. Не существует простого способа визуализации этого объекта, поскольку он представляет собой комбинацию отдельных элементов контента. Вы также можете столкнуться со случаем, когда содержимое было сгруппировано в объект, похожий на одно изображение.

Aspose.Words предоставляет функциональные возможности для извлечения этого типа контента таким же образом, как вы можете извлечь простое изображение из фигуры как визуализированное содержимое. В этой статье описывается, как использовать эту функцию для визуализации фигур независимо от документа.

## Типы фигур в Aspose.Words

Все содержимое слоя рисования документа представлено узлом [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) в объектном модуле документа Aspose.Words (DOM). Таким содержимым могут быть текстовые поля, изображения, автофигуры, объекты OLE и т.д. Некоторые поля также импортируются как фигуры, например поле `INCLUDEPICTURE`.

Простое изображение представлено узлом [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) из [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Этот узел формы не имеет дочерних узлов, но к данным изображения, содержащимся в этом узле формы, можно получить доступ с помощью свойства [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). С другой стороны, фигура также может состоять из множества дочерних узлов. Например, фигура текстового поля, представленная свойством [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), может состоять из множества узлов, например [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Большинство фигур могут включать узлы блочного уровня [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Это те же узлы, что и в основной части. Фигуры всегда являются частями какого-либо абзаца, либо включенными непосредственно в строку, либо привязанными к номеру [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), но "плавающими" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать фигуры, сгруппированные вместе. Grouping можно включить в Microsoft Word, выбрав несколько объектов и нажав "Group" в контекстном меню.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words эти группы фигур представлены узлом [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Их также можно вызвать таким же образом, чтобы отобразить всю группу в изображении.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, например диаграммы или диаграммы. Эти формы также представлены через узел [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) в Aspose.Words, который также предоставляет аналогичный метод для их рендеринга в виде изображений. По замыслу фигура не может содержать другую дочернюю фигуру, если только эта фигура не является изображением ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Например, Microsoft Word не позволяет вставлять текстовое поле в другое текстовое поле.

Описанные выше типы фигур предоставляют специальный метод для визуализации фигур с помощью класса [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Экземпляр класса [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) извлекается для [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) с помощью метода [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) или путем передачи [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) конструктору класса [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Этот класс предоставляет доступ к членам, которые позволяют визуализировать фигуру следующим образом:

- Файл на диске
- Транслировать

{{% alert color="primary" %}}

При рендеринге [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) он должен быть частью иерархии документов. Если [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) не является частью дерева документа, то визуализированный вывод будет пустым после вызова методов [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Рендеринг в файл или поток

Метод [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) предоставляет перегрузки, которые визуализируют фигуру непосредственно в файл или поток. Обе перегрузки принимают экземпляр класса [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), который позволяет определять параметры рендеринга фигуры. Это работает так же, как метод [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Несмотря на то, что этот параметр является обязательным, вы можете передать нулевое значение, указав, что настраиваемых параметров нет.

Фигуру можно экспортировать в любой формат изображения, указанный в перечислении [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Например, изображение можно визуализировать как растровое изображение, например JPEG, указав перечисление [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), или как векторное изображение, например EMF, указав число [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

В приведенном ниже примере кода показано преобразование формы в изображение EMF отдельно от документа и сохранение на диск:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

В приведенном ниже примере кода показано преобразование фигуры в изображение JPEG отдельно от документа и сохранение в поток:

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

Класс [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) позволяет указать различные параметры, управляющие отрисовкой изображения. Описанные выше функциональные возможности можно применить таким же образом к узлам [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) и [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Рендеринг изображения формы

Класс [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) представляет объекты в слое рисования, такие как автофигура, текстовое поле, произвольная форма, объект OLE, элемент управления ActiveX или изображение. Используя класс [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), вы можете создавать или изменять фигуры в документе Microsoft Word. Важным свойством фигуры является ее номер [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Фигуры разных типов могут иметь разные возможности в документе Word. Например, только изображения и фигуры OLE могут содержать изображения внутри, тогда как большинство фигур могут содержать только текст.

В следующем примере показано, как преобразовать изображение Shape в изображение JPEG отдельно от документа и сохранить его на диск:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Получение размера фигуры

Класс [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) также предоставляет функциональные возможности для получения размера фигуры в пикселях с помощью метода [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Этот метод принимает два параметра с плавающей запятой (Single) — масштаб и DPI, которые используются при вычислении размера фигуры при ее визуализации. Метод возвращает объект **Size**, который содержит ширину и высоту вычисленного размера. Это полезно, когда необходимо заранее знать размер визуализируемой фигуры. Свойство [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) возвращает размер фигуры, измеренный в точках. Результатом является объект **SizeF**, содержащий ширину и высоту. Также вы можете использовать свойство [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/), чтобы получить фактические границы фигуры.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


