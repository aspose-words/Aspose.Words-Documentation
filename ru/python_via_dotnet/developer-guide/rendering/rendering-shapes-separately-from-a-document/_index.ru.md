---
title: Формы отдельно от документа
second_title: Aspose.Words для Python via .NET
articleTitle: Оформление форм Отдельно от документа
linktitle: Оформление форм Отдельно от документа
description: "Извлекать различные графические объекты, такие как изображения, текстовый ящик, содержащий абзацы, или формы стрелок, при обработке документа, и экспортировать их во внешнее местоположение с помощью Python."
type: docs
weight: 40
url: /ru/python-net/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

При обработке документов общей задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее место. Эта задача становится простой с Aspose.Words API, который уже обеспечивает функциональность для извлечения и сохранения данных изображения. Тем не менее, иногда вы можете аналогично извлечь другие типы графического контента, которые представлены другим типом объекта рисования, например, текстовый ящик, содержащий абзацы, формы стрелок и небольшое изображение. Не существует простого способа отображения этого объекта, поскольку он представляет собой комбинацию отдельных элементов контента. Вы также можете столкнуться с случаем, когда содержимое было сгруппировано в объект, который выглядит как одно изображение.

Aspose.Words Предоставляет функциональность для извлечения этого типа контента таким же образом, как вы можете извлечь простое изображение из формы. В этой статье описывается, как использовать эту функциональность для отображения форм независимо от документа.

## Типы форм в Aspose.Words

Все содержимое в слое чертежа документа представлено [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Узел в узле Aspose.Words Модуль объекта документаDOM). Таким контентом могут быть текстовые поля, изображения, автоформы, объекты OLE и т.д. Некоторые поля также импортируются в качестве форм, например `INCLUDEPICTURE` поле.

Простое изображение представлено a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) узел [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Этот узел формы не имеет дочерних узлов, но данные изображения, содержащиеся в этом узле формы, могут быть доступны через [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) собственность. С другой стороны, форма также может состоять из многих детских узлов. Например, форма текстового ящика, которая представлена [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) свойство, может состоять из множества узлов, таких как [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Большинство форм могут включать [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Узлы блочного уровня. Это те же узлы, что и в основном теле. Формы всегда являются частями какого-либо абзаца, либо включены непосредственно в строку, либо прикреплены к [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), но "плавающий" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать формы, которые сгруппированы вместе. Groupможно включить в Microsoft Word путем выбора нескольких объектов и щелчка "Group" в меню правого клика.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words, Эти группы форм представлены [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) Узел. Они также могут быть использованы таким же образом, чтобы визуализировать всю группу.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, такие как диаграммы или диаграммы. Эти формы также представлены через [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) узел Aspose.Words, Это также обеспечивает аналогичный метод для визуализации их в виде изображений. По замыслу, форма не может содержать другую форму в детстве, если только эта форма не является изображением.[ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Например, Microsoft Word Не позволяет вставить текстовый ящик в другой текстовый ящик.

Типы формы, описанные выше, обеспечивают специальный метод для рендеринга форм через [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) класс. Примером этого является [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) Класс извлекается для [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) через [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) методом или путем прохождения [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Для строителя этого [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) класс. Этот класс обеспечивает доступ к членам, что позволяет придать форму следующим элементам:

- Файл на диске
- Поток

{{% alert color="primary" %}}

При оформлении [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Это должно быть частью иерархии документов. Если [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) не является частью дерева документов, тогда отданный результат будет пустым после вызова [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) методы.

{{% /alert %}}

## Отображение в File или Stream

The [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) Способ обеспечивает перегрузки, которые отображают форму непосредственно в файл или поток. Обе перегрузки принимают пример [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) класс, что позволяет определить варианты рендеринга формы. Это работает так же, как и [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. Несмотря на то, что этот параметр необходим, вы можете передать нулевое значение, указав, что нет пользовательских опций.

Форма может быть экспортирована в любом формате изображения, указанном в [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) перечисление. Например, изображение может быть визуализировано как растровое изображение, такое как JPEG, путем указания [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) перечисление, или как векторное изображение, такое как ЭМП, путем указания [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Приведенный ниже пример кода иллюстрирует отображение формы изображения ЭМП отдельно от документа и сохранение на диск:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Приведенный ниже пример кода иллюстрирует преобразование формы в изображение JPEG отдельно от документа и сохранение в потоке:

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

The [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) Класс позволяет указать множество опций, которые контролируют, как визуализируется изображение. Описанная выше функциональность может быть применена таким же образом к [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) и [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Узлы.

## Изображение в форме

The [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Класс представляет объекты в слое рисунка, такие как AutoShape, текстовое поле, свободная форма, объект OLE, управление ActiveX или изображение. Используя [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Вы можете создавать или изменять формы в Microsoft Word Документ. Важным свойством формы является ее [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Формы разных типов могут иметь разные возможности в документе Word. Например, только изображения и формы OLE могут иметь изображения внутри них, в то время как большинство форм могут иметь только текст.

В следующем примере показано, как визуализировать изображение формы на изображение JPEG отдельно от документа и сохранить его на диске:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Восстановление размера формы

The [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) Класс также предоставляет функциональность для извлечения размера формы в пикселях через [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) метод. Этот метод принимает два поплавковых (единых) параметра – масштаб и DPI, которые используются при расчете размера формы при рендеринге формы. Метод возвращает **Size** объект, который содержит ширину и высоту расчетного размера. Это полезно, когда необходимо заранее знать размер отрисованной формы. The [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) свойство возвращает размер формы, измеренный в точках. Результатом является **SizeF** Объект, содержащий ширину и высоту. Также вы можете использовать [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) свойство получать реальные границы формы.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


