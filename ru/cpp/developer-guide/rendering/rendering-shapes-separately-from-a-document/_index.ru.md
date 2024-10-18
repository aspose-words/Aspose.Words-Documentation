---
title: Визуализация фигур отдельно от документа
second_title: Aspose.Words для C++
articleTitle: Визуализация фигур отдельно от документа
linktitle: Визуализация фигур отдельно от документа
description: "Извлекайте различные графические объекты, такие как изображения, текстовое поле, содержащее абзацы, или фигуры со стрелками, при обработке документа и экспортируйте их во внешнее хранилище."
type: docs
weight: 40
url: /ru/cpp/rendering-shapes-separately-from-a-document/
---

При обработке документов обычной задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее хранилище. Эта задача упрощается благодаря Aspose.Words API, который уже предоставляет функциональные возможности для извлечения и сохранения данных изображений. Однако иногда может потребоваться аналогичным образом извлечь графический контент других типов, представленный другим типом графического объекта, например, текстовое поле, содержащее абзацы, фигуры со стрелками и небольшое изображение. Простого способа визуализации этого объекта не существует, поскольку он представляет собой комбинацию отдельных элементов контента. Вы также можете столкнуться со случаем, когда содержимое было сгруппировано в объект, который выглядит как единое изображение.

Aspose.Words предоставляет функциональные возможности для извлечения этого типа содержимого таким же образом, как вы можете извлечь простое изображение из shape в качестве визуализируемого содержимого. В этой статье описывается, как использовать эту функциональность для визуализации фигур независимо от документа.

## Типы фигур в Aspose.Words

Все содержимое слоя рисования документа представлено узлом [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) в модуле объектов документа (DOM) Aspose.Words. Таким содержимым могут быть текстовые поля, изображения, AutoShapes OLE-объекты и т.д. Некоторые поля также импортируются в виде фигур, например, поле `INCLUDEPICTURE`.

Простое изображение представлено узлом **Shape** из [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Этот узел формы не имеет дочерних узлов, но к данным изображения, содержащимся в этом узле формы, можно получить доступ с помощью свойства [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). С другой стороны, фигура также может состоять из множества дочерних узлов. Например, форма текстового поля, которая представлена свойством [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), может состоять из множества узлов, таких как [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Большинство форм могут включать узлы **Paragraph** и **Table** на уровне блоков. Это те же узлы, что и в основной части документа. Фигуры всегда являются частями какого-либо абзаца, либо включенными непосредственно в текст, либо привязанными к **Paragraph,**, но "плавающими" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать фигуры, которые сгруппированы вместе. Группировку можно включить в Microsoft Word, выбрав несколько объектов и нажав "Сгруппировать" в контекстном меню.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words эти группы фигур представлены узлом `GroupShape`. Они также могут быть вызваны таким же образом, чтобы отобразить всю группу на изображении.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, такие как диаграммы. Эти фигуры также представлены с помощью узла **Shape** в Aspose.Words, который также предоставляет аналогичный метод для их отображения в виде изображений. По замыслу, фигура не может содержать другую фигуру в качестве дочерней, если только эта фигура не является изображением (**ShapeType.Image**). Например, Microsoft Word не позволяет вставлять текстовое поле внутрь другого текстового поля.

Типы фигур, описанные выше, предоставляют специальный метод для визуализации фигур с помощью класса [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Экземпляр класса **ShapeRenderer** извлекается для **Shape** или **GroupShape** с помощью метода **GetShapeRenderer** или путем передачи **Shape** конструктору класса **ShapeRenderer**. Этот класс предоставляет доступ к элементам, которые позволяют отображать форму следующим образом:

- Файл на диске с использованием метода перегрузки [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- Поток с использованием перегрузки метода [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- Объект `Graphics` с помощью методов [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) и [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

При рендеринге **Shape** он должен быть частью иерархии документов. Если **Shape** не является частью дерева документов, то после вызова методов **ShapeRenderer** вывод, отображаемый при рендеринге, будет пустым.

{{% /alert %}}

## Рендеринг в файл или поток

Метод [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) предоставляет перегрузки, которые отображают фигуру непосредственно в файл или поток. Обе перегрузки поддерживают экземпляр класса [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), который позволяет определять параметры для отображения фигуры. Это работает так же, как и метод [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Несмотря на то, что этот параметр является обязательным, вы можете передать нулевое значение, указав, что пользовательских параметров нет.

Фигура может быть экспортирована в любом графическом формате, указанном в перечислении [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Например, изображение можно отобразить как растровое, например, в формате JPEG, указав значение `SaveFormat.Jpeg`, или как векторное, например, в формате EMF, указав значение `SaveFormat.Emf`.

Приведенный ниже пример кода иллюстрирует рендеринг фигуры в EMF-изображении отдельно от документа и сохранение на диск:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Приведенный ниже пример кода иллюстрирует рендеринг фигуры в формате JPEG отдельно от документа и сохранение в потоке:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Класс **ImageSaveOptions** позволяет задать множество параметров, управляющих отображением изображения. Функциональность, описанная выше, может быть применена таким же образом к узлам **GroupShape** и **Shape**.

## Рендеринг в графический объект .NET

Визуализация непосредственно в объект **Graphics** позволяет вам определить свои собственные настройки и состояние объекта **Graphics**. Обычный сценарий предполагает визуализацию фигуры непосредственно в объект **Graphics**, полученный из Windows Form или растрового изображения. При отображении узла **Shape** параметры будут влиять на внешний вид фигуры. Например, вы можете поворачивать или масштабировать фигуру, используя методы **RotateTransform** или **ScaleTransform** для объекта **Graphics**.

В приведенном ниже примере показано, как отрисовать фигуру для объекта .**NET Graphics** отдельно от документа и применить поворот к отрисованному изображению:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Аналогично методу [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), метод [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/), унаследованный от метода [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/), полезен для создания эскизов содержимого документа. Размер фигуры задается с помощью конструктора. Метод **RenderToSize** принимает объект **Graphics**, координаты X и Y положения изображения и размер изображения (ширина и высота), которые будут отображены на объекте **Graphics**.

Изображение **Shape** может быть отрисовано в определенном масштабе с помощью метода [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/), унаследованного от класса [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). Это аналогично методу [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/), который принимает те же основные параметры. Разница между этими двумя методами заключается в том, что при использовании метода **ShapeRenderer.RenderToScale** вместо буквального размера вы выбираете значение с плавающей точкой, которое масштабирует фигуру во время ее рендеринга. Если значение с плавающей точкой равно 1.0 приводит к отображению фигуры в 100% своего первоначального размера. Значение с плавающей запятой, равное 0.5, уменьшит размер изображения вдвое.

## Рендеринг изображения фигуры

Класс [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) представляет объекты на уровне рисования, такие как AutoShape, текстовое поле, произвольная форма, OLE-объект, элемент управления ActiveX или изображение. Используя класс **Shape**, вы можете создавать или изменять фигуры в документе Microsoft Word. Важным свойством фигуры является ее значение [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Фигуры разных типов могут иметь разные возможности в документе Word. Например, только изображения и OLE-фигуры могут содержать изображения внутри себя, в то время как большинство фигур могут содержать только текст.

В следующем примере показано, как преобразовать изображение фигуры в формат JPEG отдельно от документа и сохранить его на диск:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Получение размера фигуры

Класс [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) также предоставляет функциональные возможности для получения размера фигуры в пикселях с помощью метода [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Этот метод принимает два параметра типа float (одиночных) – масштаб и DPI, которые используются при расчете размера фигуры при ее визуализации. Метод возвращает объект `Size`, который содержит ширину и высоту вычисленного размера. Это полезно, когда требуется заранее знать размер визуализируемой фигуры, например, при создании нового растрового изображения на основе результатов визуализации.

В приведенном ниже примере показано, как создать новое растровое изображение и графический объект с шириной и высотой фигуры, которая будет отображаться:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

При использовании методов **RenderToSize** или **RenderToScale** размер отображаемого изображения также возвращается в объект [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). Это значение можно присвоить переменной и использовать при необходимости.

Свойство **SizeInPoints** возвращает размер фигуры, измеренный в точках (см. [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Результатом является объект `SizeF`, содержащий ширину и высоту.
