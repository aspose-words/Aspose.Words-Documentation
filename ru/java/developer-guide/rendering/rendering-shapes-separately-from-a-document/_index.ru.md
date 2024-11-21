---
title: Оформление форм Отдельно от документа
second_title: Aspose.Words для Java
articleTitle: Оформление форм Отдельно от документа
linktitle: Оформление форм Отдельно от документа
description: "Извлеките различные графические объекты, такие как изображения, текстовый ящик, содержащий абзацы, или формы стрелок, при обработке документа, и экспортируйте их во внешнее местоположение с помощью Java."
type: docs
weight: 40
url: /ru/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

При обработке документов общей задачей является извлечение всех изображений, найденных в документе, и экспорт их во внешнее место. Эта задача становится простой с Aspose.Words API, который уже обеспечивает функциональность для извлечения и сохранения данных изображения. Тем не менее, иногда вы можете аналогично извлечь другие типы графического контента, которые представлены другим типом объекта рисования, например, текстовый ящик, содержащий абзацы, формы стрелок и небольшое изображение. Не существует простого способа отображения этого объекта, поскольку он представляет собой комбинацию отдельных элементов контента. Вы также можете столкнуться с случаем, когда содержимое было сгруппировано в объект, который выглядит как одно изображение.

Aspose.Words Предоставляет функциональность для извлечения этого типа контента таким же образом, как вы можете извлечь простое изображение из формы. В этой статье описывается, как использовать эту функциональность для отображения форм независимо от документа.

## Типы форм в Aspose.Words

Все содержимое в уровне чертежа документа представлено [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) или [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Узел в узле Aspose.Words Модуль объекта документаDOM). Таким контентом могут быть текстовые поля, изображения, автоформы, объекты OLE и т.д. Некоторые поля также импортируются в качестве форм, например, `INCLUDEPICTURE` поле.

Простое изображение представлено a **Shape** узел [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Этот узел формы не имеет дочерних узлов, но данные изображения, содержащиеся в этом узле формы, могут быть доступны через [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) собственность. С другой стороны, форма также может состоять из многих детских узлов. Например, форма текстового ящика, которая представлена [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) свойство, может состоять из множества узлов, таких как [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Большинство форм могут включать **Paragraph** и **Table** Узлы блочного уровня. Это те же узлы, что и в основном теле. Формы всегда являются частями какого-либо абзаца, либо включены непосредственно в строку, либо прикреплены к **Пункт,** "Плыть" в любом месте страницы документа.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ также может содержать формы, которые сгруппированы вместе. Groupможно включить в Microsoft Word путем выбора нескольких объектов и щелчка "Group" в меню правого клика.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words, Эти группы форм представлены [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Узел. Они также могут быть использованы таким же образом для отображения всей группы на изображении.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX может содержать специальные типы изображений, такие как диаграммы или диаграммы. Эти формы также представлены через **Shape** узел Aspose.Words, Это также обеспечивает аналогичный метод для визуализации их в виде изображений. По замыслу, форма не может содержать другую форму в детстве, если только эта форма не является изображением.**ShapeType.Image**). Например, Microsoft Word Не позволяет вставить текстовый ящик в другой текстовый ящик.

Типы формы, описанные выше, обеспечивают специальный метод для рендеринга форм через [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) класс. Примером этого является **ShapeRenderer** Класс извлекается для **Shape** или **GroupShape** через **GetShapeRenderer** методом или путем прохождения **Shape** Для строителя этого **ShapeRenderer** класс. Этот класс обеспечивает доступ к членам, что позволяет придать форму следующим элементам:

- Файл на диске с использованием [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) метод перегрузки
- Поток с использованием [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) метод перегрузки
- Графика Объект, используя [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) и [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) методы

{{% alert color="primary" %}}

При оформлении <span notrans="<span notrans=" **Shape**"=""></span>"> Это должно быть частью иерархии документов. Если **Shape** не является частью дерева документов, тогда отданный результат будет пустым после вызова **ShapeRenderer** методы.

{{% /alert %}}

## Отображение в File или Stream

The [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) Способ обеспечивает перегрузки, которые отображают форму непосредственно в файл или поток. Обе перегрузки принимают пример [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) класс, что позволяет определить варианты рендеринга формы. Это работает так же, как и [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. Несмотря на то, что этот параметр необходим, вы можете передать нулевое значение, указав, что нет пользовательских опций.

Форма может быть экспортирована в любом формате изображения, указанном в [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) перечисление. Например, изображение может быть визуализировано как растровое изображение, такое как JPEG, путем указания [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) перечисление, или в качестве векторного изображения, такого как ЭМП, путем указания [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Приведенный ниже пример кода иллюстрирует отображение формы изображения ЭМП отдельно от документа и сохранение на диск:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Приведенный ниже пример кода иллюстрирует преобразование формы в изображение JPEG отдельно от документа и сохранение в потоке:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

The **ImageSaveOptions** Класс позволяет указать множество опций, которые контролируют, как визуализируется изображение. Описанная выше функциональность может быть применена таким же образом к **GroupShape** и **Shape** Узлы.

## Перейти к a `Graphics` Объект

Передача непосредственно в a **Graphics** объект позволяет определить собственные настройки и состояние для **Graphics** объект. Общий сценарий включает в себя преобразование формы непосредственно в **Graphics** объект, извлеченный из Windows Форма или Bitmap. Когда **Shape** Узел визуализируется, настройки будут влиять на внешний вид формы. Например, вы можете повернуть или масштабировать форму, используя **RotateTransform** или **ScaleTransform** Методы для **Graphics** объект.

Приведенный ниже пример показывает, как придать форму **Graphics** объект отдельно от документа и применить ротацию к визуализируемому изображению:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Точно так же и для [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) метод, [Размер](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)Метод, унаследованный от [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) полезен для создания миниатюр контента документа. Размер формы определяется через конструктор. The **RenderToSize** Метод принимает **Graphics** объект, координаты X и Y положения изображения, а также размер изображения (ширина и высота), который будет нарисован на **Graphics** объект.

The **Shape** могут быть выполнены в определенном масштабе с использованием [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) Метод, унаследованный от [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) класс. Это подобно тому, как [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) Метод, который принимает те же основные параметры. Разница между этими двумя методами заключается в том, что **ShapeRenderer.RenderToScale** Вместо буквального размера вы выбираете значение, которое масштабирует форму во время ее рендеринга. Если значение поплавка равно 1,0, то форма должна быть выполнена на 100% от ее первоначального размера. Поплавковое значение 0,5 уменьшит размер изображения вдвое.

## Изображение в форме

The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Класс представляет объекты в слое рисунка, такие как AutoShape, текстовое поле, свободная форма, объект OLE, управление ActiveX или изображение. Используя **Shape** Вы можете создавать или изменять формы в Microsoft Word Документ. Важным свойством формы является ее [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Формы разных типов могут иметь разные возможности в документе Word. Например, только изображения и формы OLE могут иметь изображения внутри них, в то время как большинство форм могут иметь только текст.

Следующий пример показывает, как визуализировать изображение формы в JPEG-изображение отдельно от документа и сохранить его на диске:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Восстановление размера формы

The [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) Класс также предоставляет функциональность для извлечения размера формы в пикселях через [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) метод. Этот метод принимает два поплавковых (единых) параметра – масштаб и DPI, которые используются при расчете размера формы при рендеринге формы. Метод возвращает [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) объект, который содержит ширину и высоту расчетного размера. Это полезно, когда требуется заранее знать размер отображаемой формы, например, при создании новой Bitmap из отображаемого вывода.

Приведенный ниже пример показывает, как создать новый объект Bitmap и Graphics с шириной и высотой формы, которая будет отображаться:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

При использовании **RenderToSize** или **RenderToScale** методы, отображаемый размер изображения также возвращается в [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) объект. Это может быть назначено переменной и использовано при необходимости.

The **SizeInPoints** свойство возвращает размер формы, измеренный в точках (см. [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Результатом является `SizeF` Объект, содержащий ширину и высоту.
