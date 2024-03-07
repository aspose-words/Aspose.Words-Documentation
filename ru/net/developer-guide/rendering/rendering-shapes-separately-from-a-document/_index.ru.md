---
title: Рендеринг фигур отдельно от документа
second_title: Aspose.Words для .NET
articleTitle: Рендеринг фигур отдельно от документа
linktitle: Рендеринг фигур отдельно от документа
description: "Извлекайте различные графические объекты, такие как изображения, текстовое поле, содержащее абзацы, или формы стрелок, при обработке документа, и экспортируйте их во внешнее расположение с помощью C#."
type: docs
weight: 40
url: /ru/net/rendering-shapes-separately-from-a-document/
---

При обработке документов обычной задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее расположение. Эта задача упрощается с помощью модели Aspose.Words API, которая уже обеспечивает функции извлечения и сохранения данных изображения. Однако иногда вам может потребоваться аналогичным образом извлечь другие типы графического содержимого, представленные объектом рисования другого типа, например текстовым полем, содержащим абзацы, фигуры стрелок и небольшое изображение. Не существует простого способа визуализации этого объекта, поскольку он представляет собой комбинацию отдельных элементов контента. Вы также можете столкнуться со случаем, когда содержимое было сгруппировано в объект, похожий на одно изображение.

Aspose.Words предоставляет функциональные возможности для извлечения этого типа контента таким же образом, как вы можете извлечь простое изображение из фигуры как визуализированное содержимое. В этой статье описывается, как использовать эту функцию для визуализации фигур независимо от документа.

## Типы фигур в Aspose.Words

Все содержимое слоя рисования документа представлено узлом [Shape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/groupshape/) в объектном модуле документа Aspose.Words (DOM). Таким содержимым могут быть текстовые поля, изображения, автофигуры, объекты OLE и т.д. Некоторые поля также импортируются как фигуры, например поле `INCLUDEPICTURE`.

Простое изображение представлено узлом **Shape** из [ShapeType.Image](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapetype/). Этот узел формы не имеет дочерних узлов, но к данным изображения, содержащимся в этом узле формы, можно получить доступ с помощью свойства [Shape.ImageData](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/imagedata/). С другой стороны, фигура также может состоять из множества дочерних узлов. Например, фигура текстового поля, представленная свойством [ShapeType.TextBox](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapetype/), может состоять из множества узлов, например [Paragraph](https://reference.aspose.com/words/ru/net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/). Большинство фигур могут включать узлы блочного уровня **Paragraph** и **Table**. Это те же узлы, что и в основной части. Фигуры всегда являются частями какого-либо абзаца, либо включены непосредственно в строку, либо привязаны к **Параграф,**, но "плавают" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать фигуры, сгруппированные вместе. Grouping можно включить в Microsoft Word, выбрав несколько объектов и нажав "Group" в контекстном меню.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words эти группы фигур представлены узлом [GroupShape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/groupshape/). Их также можно вызвать таким же образом, чтобы отобразить всю группу в изображении.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, например диаграммы или диаграммы. Эти формы также представлены через узел **Shape** в Aspose.Words, который также предоставляет аналогичный метод для их рендеринга в виде изображений. По замыслу фигура не может содержать другую дочернюю фигуру, если только эта фигура не является изображением (**ShapeType.Image**). Например, Microsoft Word не позволяет вставлять текстовое поле в другое текстовое поле.

Описанные выше типы фигур предоставляют специальный метод для визуализации фигур с помощью класса [ShapeRenderer](https://reference.aspose.com/words/ru/net/aspose.words.rendering/shaperenderer/). Экземпляр класса **ShapeRenderer** извлекается для **Shape** или **GroupShape** с помощью метода **GetShapeRenderer** или путем передачи **Shape** конструктору класса **ShapeRenderer**. Этот класс предоставляет доступ к членам, которые позволяют визуализировать фигуру следующим образом:

- Файл на диске с использованием перегрузки метода [Save](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/save/)
— Потоковая передача с использованием перегрузки метода [Save](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/save/)
— Графический объект .NET с использованием методов [RenderToSize](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/rendertosize/) и [RenderToScale](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

При рендеринге **Shape** он должен быть частью иерархии документов. Если **Shape** не является частью дерева документа, то визуализированный вывод будет пустым после вызова методов **ShapeRenderer**.

{{% /alert %}}

## Рендеринг в файл или поток

Метод [Save](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/save/) предоставляет перегрузки, которые визуализируют фигуру непосредственно в файл или поток. Обе перегрузки принимают экземпляр класса [ImageSaveOptions](https://reference.aspose.com/words/ru/net/aspose.words.saving/imagesaveoptions/), который позволяет определять параметры рендеринга фигуры. Это работает так же, как метод [Document.Save](https://reference.aspose.com/words/ru/net/aspose.words/document/save/#save). Несмотря на то, что этот параметр является обязательным, вы можете передать нулевое значение, указав, что настраиваемых параметров нет.

Фигуру можно экспортировать в любой формат изображения, указанный в перечислении [SaveFormat](https://reference.aspose.com/words/ru/net/aspose.words/saveformat/). Например, изображение можно визуализировать как растровое изображение, например JPEG, указав перечисление [SaveFormat.Jpeg](https://reference.aspose.com/words/ru/net/aspose.words/saveformat/), или как векторное изображение, например EMF, указав число [SaveFormat.Emf](https://reference.aspose.com/words/ru/net/aspose.words/saveformat/).

Пример кода ниже иллюстрирует рендеринг формы в изображение EMF отдельно от документа и сохранение на диск:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

В приведенном ниже примере кода показано преобразование фигуры в изображение JPEG отдельно от документа и сохранение в поток:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

Класс **ImageSaveOptions** позволяет указать различные параметры, управляющие отрисовкой изображения. Описанные выше функциональные возможности можно применить таким же образом к узлам **GroupShape** и **Shape**.

## Рендеринг в графический объект .NET

Непосредственный рендеринг объекта **Graphics** позволяет вам определить собственные настройки и состояние объекта **Graphics**. Распространенный сценарий включает в себя рендеринг фигуры непосредственно в объект **Graphics**, полученный из формы Windows или растрового изображения. Когда узел **Shape** визуализируется, настройки повлияют на внешний вид фигуры. Например, вы можете повернуть или масштабировать фигуру, используя методы **RotateTransform** или **ScaleTransform** для объекта **Graphics**.

В приведенном ниже примере показано, как визуализировать фигуру в объекте .**NET Graphics** отдельно от документа и применить поворот к визуализированному изображению:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Аналогично методу [RenderToSize](https://reference.aspose.com/words/ru/net/aspose.words/document/rendertosize/), метод [Рендертосазе](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/rendertosize/), унаследованный от [NodeRendererBase](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/), полезен для создания миниатюр содержимого документа. Размер фигуры задается через конструктор. Метод **RenderToSize** принимает объект **Graphics**, координаты X и Y положения изображения, а также размер изображения (ширину и высоту), которое будет нарисовано на объекте **Graphics**.

Число **Shape** можно отобразить в определенном масштабе с помощью метода [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/rendertoscale/), унаследованного от класса [NodeRendererBase](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/). Это похоже на метод [Document.RenderToScale](https://reference.aspose.com/words/ru/net/aspose.words/document/rendertoscale/), который принимает те же основные параметры. Разница между этими двумя методами заключается в том, что в методе **ShapeRenderer.RenderToScale** вместо буквального размера вы выбираете значение с плавающей запятой, которое масштабирует фигуру во время ее рендеринга. Если значение float равно 1,0, фигура будет отображаться в размере 100 % от ее исходного размера. Значение с плавающей запятой 0,5 уменьшит размер изображения вдвое.

## Рендеринг изображения формы

Класс [Shape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/) представляет объекты на уровне рисования, такие как автофигура, текстовое поле, произвольная форма, объект OLE, элемент управления ActiveX или изображение. Используя класс **Shape**, вы можете создавать или изменять фигуры в документе Microsoft Word. Важным свойством фигуры является ее номер [ShapeType](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/base/properties/shapetype). Фигуры разных типов могут иметь разные возможности в документе Word. Например, только изображения и фигуры OLE могут содержать изображения внутри, тогда как большинство фигур могут содержать только текст.

В следующем примере показано, как преобразовать изображение Shape в изображение JPEG отдельно от документа и сохранить его на диск:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Получение размера фигуры

Класс [ShapeRenderer](https://reference.aspose.com/words/ru/net/aspose.words.rendering/shaperenderer/) также предоставляет функциональные возможности для получения размера фигуры в пикселях с помощью метода [GetSizeInPixels](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Этот метод принимает два параметра с плавающей запятой (Single) — масштаб и DPI, которые используются при вычислении размера фигуры при ее визуализации. Метод возвращает объект [Size](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), который содержит ширину и высоту вычисленного размера. Это полезно, когда необходимо заранее знать размер визуализированной фигуры, например, при создании нового растрового изображения из визуализированного вывода.

В приведенном ниже примере показано, как создать новый объект Bitmap и Graphics с шириной и высотой отображаемой фигуры:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

При использовании методов **RenderToSize** или **RenderToScale** размер визуализированного изображения также возвращается в объекте [SizeF](https://reference.aspose.com/words/ru/net/aspose.words.rendering/noderendererbase/rendertoscale/). Его можно присвоить переменной и использовать при необходимости.

Свойство **SizeInPoints** возвращает размер фигуры, измеренный в точках (см. [ShapeRenderer](https://reference.aspose.com/words/ru/net/aspose.words.rendering/shaperenderer/). Результатом является объект `SizeF`, содержащий ширину и высоту.
