---
title: Оформление форм Отдельно от документа
second_title: Aspose.Words для .NET
articleTitle: Оформление форм Отдельно от документа
linktitle: Оформление форм Отдельно от документа
description: "Извлекать различные графические объекты, такие как изображения, текстовый ящик, содержащий абзацы, или формы стрелок, при обработке документа, и экспортировать их во внешнее местоположение с помощью C#."
type: docs
weight: 40
url: /ru/net/rendering-shapes-separately-from-a-document/
---

При обработке документов общей задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее место. Эта задача становится простой с Aspose.Words API, который уже обеспечивает функциональность для извлечения и сохранения данных изображения. Тем не менее, иногда вы можете аналогично извлечь другие типы графического контента, которые представлены другим типом объекта рисования, например, текстовый ящик, содержащий абзацы, формы стрелок и небольшое изображение. Не существует простого способа отображения этого объекта, поскольку он представляет собой комбинацию отдельных элементов контента. Вы также можете столкнуться с случаем, когда содержимое было сгруппировано в объект, который выглядит как одно изображение.

Aspose.Words Предоставляет функциональность для извлечения этого типа контента таким же образом, как вы можете извлечь простое изображение из формы. В этой статье описывается, как использовать эту функциональность для отображения форм независимо от документа.

## Типы форм в Aspose.Words

Все содержимое в слое чертежа документа представлено [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) Узел в узле Aspose.Words Модуль объекта документаDOM). Таким контентом могут быть текстовые поля, изображения, автоформы, объекты OLE и т.д. Некоторые поля также импортируются в качестве форм, например `INCLUDEPICTURE` поле.

Простое изображение представлено a **Shape** узел [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Этот узел формы не имеет дочерних узлов, но данные изображения, содержащиеся в этом узле формы, могут быть доступны через [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) собственность. С другой стороны, форма также может состоять из многих детских узлов. Например, форма текстового ящика, которая представлена [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) свойство, может состоять из множества узлов, таких как [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). Большинство форм могут включать **Paragraph** и **Table** Узлы блочного уровня. Это те же узлы, что и в основном теле. Формы всегда являются частями какого-либо абзаца, либо включены непосредственно в строку, либо прикреплены к **Пункт,** "Плыть" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать формы, которые сгруппированы вместе. Groupможно включить в Microsoft Word путем выбора нескольких объектов и щелчка "Group" в меню правого клика.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words, Эти группы форм представлены [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) Узел. Они также могут быть использованы таким же образом, чтобы визуализировать всю группу.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, такие как диаграммы или диаграммы. Эти формы также представлены через **Shape** узел Aspose.Words, Это также обеспечивает аналогичный метод для визуализации их в виде изображений. По замыслу, форма не может содержать другую форму в детстве, если только эта форма не является изображением.**ShapeType.Image**). Например, Microsoft Word Не позволяет вставить текстовый ящик в другой текстовый ящик.

Типы формы, описанные выше, обеспечивают специальный метод для рендеринга форм через [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) класс. Примером этого является **ShapeRenderer** Класс извлекается для **Shape** или **GroupShape** через **GetShapeRenderer** методом или путем прохождения **Shape** Для строителя этого **ShapeRenderer** класс. Этот класс обеспечивает доступ к членам, что позволяет придать форму следующим элементам:

- Файл на диске с использованием [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) метод перегрузки
- Поток с использованием [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) метод перегрузки
- .NET графика Объект, используя [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) и [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) методы

{{% alert color="primary" %}}

При оформлении <p notrans="<p notrans=" **Shape**"=""></p>"> Это должно быть частью иерархии документов. Если **Shape** не является частью дерева документов, тогда отданный результат будет пустым после вызова **ShapeRenderer** методы.

{{% /alert %}}

## Отображение в File или Stream

The [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) Способ обеспечивает перегрузки, которые отображают форму непосредственно в файл или поток. Обе перегрузки принимают пример [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) класс, что позволяет определить варианты рендеринга формы. Это работает так же, как и [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) метод. Несмотря на то, что этот параметр необходим, вы можете передать нулевое значение, указав, что нет пользовательских опций.

Форма может быть экспортирована в любом формате изображения, указанном в [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) перечисление. Например, изображение может быть визуализировано как растровое изображение, такое как JPEG, путем указания [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) перечисление, или как векторное изображение, такое как ЭМП, путем указания [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Приведенный ниже пример кода иллюстрирует отображение формы изображения ЭМП отдельно от документа и сохранение на диск:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Приведенный ниже пример кода иллюстрирует преобразование формы в изображение JPEG отдельно от документа и сохранение в потоке:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

The **ImageSaveOptions** Класс позволяет указать множество опций, которые контролируют, как визуализируется изображение. Описанная выше функциональность может быть применена таким же образом к **GroupShape** и **Shape** Узлы.

## Обращаясь к a .NET Графический объект

Передача непосредственно в a **Graphics** объект позволяет определить собственные настройки и состояние для **Graphics** объект. Общий сценарий включает в себя преобразование формы непосредственно в **Graphics** объект, извлеченный из Windows Форма или Bitmap. Когда **Shape** Узел визуализируется, настройки будут влиять на внешний вид формы. Например, вы можете повернуть или масштабировать форму, используя **RotateTransform** или **ScaleTransform** методы для **Graphics** объект.

Приведенный ниже пример показывает, как придать форму.**NET Graphics** объект отдельно от документа и применить ротацию к визуализируемому изображению:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Точно так же и для [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) метод, [Размер](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)Метод, унаследованный от [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) полезен для создания миниатюр контента документа. Размер формы определяется через конструктор. The **RenderToSize** Метод принимает **Graphics** объект, координаты X и Y положения изображения, а также размер изображения (ширина и высота), который будет нарисован на **Graphics** объект.

The **Shape** могут быть выполнены в определенном масштабе с использованием [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) Метод, унаследованный от [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) класс. Это подобно тому, как [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) Метод, который принимает те же основные параметры. Разница между этими двумя методами заключается в том, что **ShapeRenderer.RenderToScale** метод, вместо буквального размера, вы выбираете поплавковое значение, которое масштабирует форму во время ее рендеринга. Если значение поплавка равно 1,0, то форма должна быть выполнена на 100% от ее первоначального размера. Поплавковое значение 0,5 уменьшит размер изображения вдвое.

## Изображение в форме

The [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Класс представляет объекты в слое рисунка, такие как AutoShape, текстовое поле, свободная форма, объект OLE, управление ActiveX или изображение. Используя **Shape** Вы можете создавать или изменять формы в Microsoft Word Документ. Важным свойством формы является ее [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). Формы разных типов могут иметь разные возможности в документе Word. Например, только изображения и формы OLE могут иметь изображения внутри них, в то время как большинство форм могут иметь только текст.

В следующем примере показано, как визуализировать изображение формы на изображение JPEG отдельно от документа и сохранить его на диске:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Восстановление размера формы

The [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) Класс также предоставляет функциональность для извлечения размера формы в пикселях через [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) метод. Этот метод принимает два поплавковых (единых) параметра – масштаб и DPI, которые используются при расчете размера формы при рендеринге формы. Метод возвращает [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) объект, который содержит ширину и высоту расчетного размера. Это полезно, когда требуется заранее знать размер отображаемой формы, например, при создании новой Bitmap из отображаемого вывода.

Приведенный ниже пример показывает, как создать новый объект Bitmap и Graphics с шириной и высотой формы, которая будет отображаться:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

При использовании **RenderToSize** или **RenderToScale** методы, отображаемый размер изображения также возвращается в [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) объект. Это может быть присвоено переменной и использовано при необходимости.

The **SizeInPoints** свойство возвращает размер формы, измеренный в точках (см. [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Результатом является `SizeF` Объект, содержащий ширину и высоту.
