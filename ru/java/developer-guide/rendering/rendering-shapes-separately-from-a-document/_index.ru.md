---
title: Визуализация фигур отдельно от документа
second_title: Aspose.Words для Java
articleTitle: Визуализация фигур отдельно от документа
linktitle: Визуализация фигур отдельно от документа
description: "Извлекайте различные графические объекты, такие как изображения, текстовое поле, содержащее абзацы, или фигуры со стрелками, при обработке документа и экспортируйте их во внешнее расположение с помощью Java."
type: docs
weight: 40
url: /ru/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

При обработке документов обычной задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее хранилище. Эта задача упрощается с помощью функции Aspose.Words API, которая уже предоставляет функциональные возможности для извлечения и сохранения данных изображений. Однако иногда может потребоваться аналогичным образом извлечь другие типы графического содержимого, которые представлены другим типом графического объекта, например текстовое поле, содержащее абзацы, фигуры со стрелками и небольшое изображение. Простого способа визуализации этого объекта не существует, поскольку он представляет собой комбинацию отдельных элементов содержимого. Вы также можете столкнуться со случаем, когда содержимое было сгруппировано в объект, который выглядит как единое изображение.

Aspose.Words предоставляет функциональные возможности для извлечения этого типа содержимого таким же образом, как вы можете извлечь простое изображение из shape в качестве визуализируемого содержимого. В этой статье описывается, как использовать эту функциональность для визуализации фигур независимо от документа.

## Типы фигур в Aspose.Words

Все содержимое слоя рисования документа представлено узлом [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) или [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) в модуле объектов документа Aspose.Words (DOM). Таким содержимым могут быть текстовые поля, изображения, AutoShapes, OLE объекты и т.д. Некоторые поля также импортируются в виде фигур, например, поле `INCLUDEPICTURE`.

Простое изображение представлено узлом **Shape** из [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Этот узел формы не имеет дочерних узлов, но к данным изображения, содержащимся в этом узле формы, можно получить доступ с помощью свойства [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData). С другой стороны, фигура также может состоять из множества дочерних узлов. Например, форма текстового поля, которая представлена свойством [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX), может состоять из множества узлов, таких как [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Большинство форм могут включать узлы блочного уровня **Paragraph** и **Table**. Это те же узлы, что и в основной части документа. Фигуры всегда являются частями какого-либо абзаца, либо включенными непосредственно в текст, либо привязанными к **Paragraph,**, но "плавающими" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать фигуры, которые сгруппированы вместе. Группировку можно включить в Microsoft Word, выбрав несколько объектов и нажав "Сгруппировать" в контекстном меню.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words эти группы фигур представлены узлом [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). Они также могут быть вызваны таким же образом, чтобы отобразить всю группу на изображении.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, такие как диаграммы. Эти фигуры также представлены с помощью узла **Shape** в Aspose.Words, который также предоставляет аналогичный метод для их отображения в виде изображений. По замыслу, фигура не может содержать другую фигуру в качестве дочерней, если только эта фигура не является изображением (**ShapeType.Image**). Например, Microsoft Word не позволяет вставлять текстовое поле в другое текстовое поле.

Типы фигур, описанные выше, предоставляют специальный метод для визуализации фигур с помощью класса [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/). Экземпляр класса **ShapeRenderer** извлекается для **Shape** или **GroupShape** с помощью метода **GetShapeRenderer** или путем передачи **Shape** конструктору класса **ShapeRenderer**. Этот класс предоставляет доступ к элементам, которые позволяют отображать форму следующим образом:

- Файл на диске с использованием метода перегрузки [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions)
- Поток с использованием перегрузки метода [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions)
- Графический объект с использованием методов [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) и [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)

{{% alert color="primary" %}}

При отображении **Shape** он должен быть частью иерархии документов. Если **Shape** не является частью дерева документов, то после вызова методов **ShapeRenderer** отображаемый результат будет пустым.

{{% /alert %}}

## Рендеринг в файл или поток

Метод [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) предоставляет перегрузки, которые отображают фигуру непосредственно в файл или поток. Обе перегрузки поддерживают экземпляр класса [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), который позволяет определять параметры для отображения фигуры. Это работает так же, как и метод [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Несмотря на то, что этот параметр является обязательным, вы можете передать нулевое значение, указав, что пользовательских параметров нет.

Фигура может быть экспортирована в любом графическом формате, указанном в перечислении [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Например, изображение можно отобразить как растровое, например, JPEG, указав перечисление [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG), или как векторное, например, EMF, указав [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Приведенный ниже пример кода иллюстрирует рендеринг фигуры в виде изображения EMF отдельно от документа и сохранение на диск:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Приведенный ниже пример кода иллюстрирует рендеринг фигуры в виде изображения JPEG отдельно от документа и сохранение в потоке:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Класс **ImageSaveOptions** позволяет задать множество параметров, управляющих отображением изображения. Функциональность, описанная выше, может быть применена таким же образом к узлам **GroupShape** и **Shape**.

## Рендеринг в объект `Graphics`

Визуализация непосредственно в объект **Graphics** позволяет вам определить свои собственные настройки и состояние объекта **Graphics**. Обычный сценарий предполагает визуализацию фигуры непосредственно в объект **Graphics**, полученный из формы Windows или растрового изображения. При отображении узла **Shape** параметры будут влиять на внешний вид фигуры. Например, вы можете поворачивать или масштабировать фигуру, используя методы **RotateTransform** или **ScaleTransform** для объекта **Graphics**.

В приведенном ниже примере показано, как отрисовать фигуру для объекта **Graphics** отдельно от документа и применить поворот к отрисованному изображению:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Аналогично методу [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float), метод [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float), унаследованный от метода [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/), полезен для создания эскизов содержимого документа. Размер фигуры задается с помощью конструктора. Метод **RenderToSize** принимает объект **Graphics**, координаты X и Y положения изображения и размер изображения (ширина и высота), которые будут отображены на объекте **Graphics**.

Изображение **Shape** может быть отрисовано в определенном масштабе с помощью метода [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float), унаследованного от класса [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/). Это аналогично методу [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float), который принимает те же основные параметры. Разница между этими двумя методами заключается в том, что при использовании метода **ShapeRenderer.RenderToScale** вместо буквального размера вы выбираете значение с плавающей точкой, которое масштабирует фигуру во время ее рендеринга. Если значение с плавающей точкой равно 1.0, форма будет отображаться на 100% от ее первоначального размера. Значение с плавающей запятой, равное 0.5, уменьшит размер изображения вдвое.

## Рендеринг изображения фигуры

Класс [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) представляет объекты на уровне рисования, такие как AutoShape, текстовое поле, произвольная форма, объект OLE, элемент управления ActiveX или изображение. Используя класс **Shape**, вы можете создавать или изменять фигуры в документе Microsoft Word. Важным свойством фигуры является ее значение [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Фигуры разных типов могут иметь разные возможности в документе Word. Например, только изображения и OLE фигуры могут содержать изображения внутри себя, в то время как большинство фигур могут содержать только текст.

В следующем примере показано, как преобразовать изображение фигуры в изображение JPEG отдельно от документа и сохранить его на диске:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Получение размера фигуры

Класс [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) также предоставляет функциональные возможности для получения размера фигуры в пикселях с помощью метода [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float). Этот метод принимает два плавающих (одиночных) параметра – масштаб и DPI, которые используются при расчете размера фигуры при ее визуализации. Метод возвращает объект [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float), который содержит ширину и высоту вычисленного размера. Это полезно, когда требуется заранее знать размер визуализируемой фигуры, например, при создании нового растрового изображения на основе результатов визуализации.

В приведенном ниже примере показано, как создать новое растровое изображение и графический объект с шириной и высотой фигуры, которая будет отображаться:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

При использовании методов **RenderToSize** или **RenderToScale** размер отображаемого изображения также возвращается в объект [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float). Это значение можно присвоить переменной и использовать при необходимости.

Свойство **SizeInPoints** возвращает размер фигуры, измеренный в точках (см. [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Результатом является объект `SizeF`, содержащий ширину и высоту.
