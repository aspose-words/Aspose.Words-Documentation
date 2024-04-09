---
title: Работа с формами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с формами
linktitle: Работа с формами
description: "Введение в язык разметки формы, создание форм разных типов с использованием C#."
type: docs
weight: 280
url: /ru/net/working-with-shapes/
---

Эта тема обсуждает, как программно работать с формами, используя Aspose.Words.

Формы в Aspose.Words представляют собой объект в слое рисунка, такой как AutoShape, текстовый ящик, свободная форма, объект OLE, управление ActiveX или изображение. Документ Word может содержать одну или несколько различных форм. Формы в Aspose.Words представлены в виде [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) класс.

## Вставка форм с помощью конструктора документов

Вы можете вставить встроенную форму с указанным типом и размером и свободно плавающую форму с указанным положением, размером и типом текстовой обертки в документ, используя [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) метод. The **InsertShape** Способ позволяет вставить форму DML в модель документа. Документ должен быть сохранен в формате, который поддерживает формы DML, в противном случае такие узлы будут преобразованы в форму VML, при этом сохраняется документ.

Следующий пример кода показывает, как вставить эти типы фигур в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Установить соотношение заперто

Использовать Aspose.Words, Вы можете указать, заблокировано ли соотношение сторон формы через [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) собственность.

Следующий пример показывает, как работать с **AspectRatioLocked** имущество:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Настройка формы Layout in Cell

Вы также можете указать, отображается ли форма внутри стола или снаружи стола. [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) собственность.

Следующий пример показывает, как работать с **IsLayoutInCell** имущество:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Создайте прямоугольник Snip Corner

Вы можете создать угловой прямоугольник с помощью Aspose.Words. Типы фигур: *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, * и *DiagonalCornersRounded.*

Форма DML создается с использованием **InsertShape** Метод с этими типами форм. Эти типы не могут быть использованы для создания форм VML. Попытка создать форму с помощью общественного конструктора класса "Форма" поднимает исключение "Неподдерживаемый Исключение".

Следующий пример кода показывает, как вставить эти типы фигур в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Получите реальные точки соприкосновения формы

Использовать Aspose.Words API, Вы можете получить расположение и размер формы, содержащей блок в точках, относительно якоря самой верхней формы. Чтобы сделать это, используйте [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) собственность.

Следующий пример показывает, как работать с **BoundsInPoints** имущество:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Укажите вертикальный якорь

Вы можете указать вертикальное выравнивание текста в форме, используя [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) собственность.

Следующий пример показывает, как работать с **VerticalAnchor** имущество:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Обнаружение Smart Форма искусства

Aspose.Words Также можно определить, имеет ли форма `SmartArt` объект. Чтобы сделать это, используйте [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) собственность.

Следующий пример показывает, как работать с **HasSmartArt** имущество:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Включить горизонтальный Правило в документе

Вы можете вставить горизонтальную форму правила в документ, используя [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) метод.

Следующий пример кода показывает, как это сделать:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API обеспечивает [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) свойство доступа к свойствам горизонтальной формы правила. The [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) Класс раскрывает основные свойства, такие как высота, цвет, NoShade и т.д. для форматирования горизонтального правила.

Следующий пример кода показывает, как установить **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Импорт форм с помощью Math XML в виде форм DOM

Вы можете использовать [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) свойство преобразовывать формы с помощью EquationXML в объекты Office Math. По умолчанию стоимость этого имущества соответствует Microsoft Word Формы с уравнением XML не преобразуются в объекты Office.

Следующий пример кода показывает, как конвертировать формы в объекты Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
