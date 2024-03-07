---
title: Работа с фигурами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с фигурами
linktitle: Работа с фигурами
description: "Знакомство с языком разметки фигур, создание фигур разных типов с помощью C#."
type: docs
weight: 280
url: /ru/net/working-with-shapes/
---

В этом разделе обсуждается, как программно работать с фигурами, используя Aspose.Words.

Фигуры в Aspose.Words представляют объект в слое рисования, например автофигуру, текстовое поле, произвольную форму, объект OLE, элемент управления ActiveX или изображение. Документ Word может содержать одну или несколько различных фигур. Фигуры из Aspose.Words представлены классом [Shape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/).

## Вставка фигур с помощью Document Builder

Вы можете вставить в документ встроенную фигуру указанного типа и размера, а также свободно плавающую фигуру с указанным положением, размером и типом переноса текста, используя метод [InsertShape](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertshape/). Метод **InsertShape** позволяет вставлять форму DML в модель документа. Документ должен быть сохранен в формате, поддерживающем формы DML, иначе при сохранении документа такие узлы будут преобразованы в форму VML.

В следующем примере кода показано, как вставить фигуры этих типов в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Установить соотношение сторон заблокировано

Используя Aspose.Words, вы можете указать, заблокировано ли соотношение сторон фигуры с помощью свойства [AspectRatioLocked](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapebase/aspectratiolocked/).

В следующем примере кода показано, как работать со свойством **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Установить макет фигуры в ячейке

Вы также можете указать, будет ли фигура отображаться внутри таблицы или за ее пределами, используя свойство [IsLayoutInCell](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapebase/islayoutincell/).

В следующем примере кода показано, как работать со свойством **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Создать прямоугольник с отрезанным углом

Вы можете создать прямоугольник с отрезанным углом, используя Aspose.Words. Типы фигур: *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* и *DiagonalCornersRounded.*

Форма DML создается с использованием метода **InsertShape** с использованием этих типов фигур. Эти типы нельзя использовать для создания фигур VML. Попытка создать фигуру с помощью открытого конструктора класса Shape вызывает исключение NotSupportedException.

В следующем примере кода показано, как вставить фигуры такого типа в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Получите фактические точки границ формы

Используя Aspose.Words API, вы можете получить местоположение и размер фигуры, содержащей блок, в точках относительно привязки самой верхней фигуры. Для этого используйте свойство [BoundsInPoints](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapebase/boundsinpoints/).

В следующем примере кода показано, как работать со свойством **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Укажите вертикальную привязку

Вы можете указать вертикальное выравнивание текста внутри фигуры, используя свойство [VerticalAnchor](https://reference.aspose.com/words/ru/net/aspose.words.drawing/textbox/verticalanchor/).

В следующем примере кода показано, как работать со свойством **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Обнаружение формы SmartArt

Aspose.Words также позволяет определить, есть ли в Shape объект `SmartArt`. Для этого используйте свойство [HasSmartArt](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/hassmartart/).

В следующем примере кода показано, как работать со свойством **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Вставьте горизонтальное правило в документ

Вы можете вставить фигуру горизонтальной линейки в документ, используя метод [InsertHorizontalRule](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/inserthorizontalrule/).

В следующем примере кода показано, как это сделать:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API предоставляет свойство [HorizontalRuleFormat](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/horizontalruleformat/) для доступа к свойствам формы горизонтальной линейки. Класс [HorizontalRuleFormat](https://reference.aspose.com/words/ru/net/aspose.words.drawing/horizontalruleformat/) предоставляет базовые свойства, такие как высота, цвет, отсутствие тени и т.д., для форматирования горизонтальной линейки.

В следующем примере кода показано, как установить **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Импортируйте фигуры с помощью Math XML как фигуры в DOM

Вы можете использовать свойство [ConvertShapeToOfficeMath](https://reference.aspose.com/words/ru/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) для преобразования фигур с помощью EquationXML в объекты Office Math. Значение этого свойства по умолчанию соответствует поведению Microsoft Word, т. е. фигуры с XML-уравнениями не преобразуются в математические объекты Office.

В следующем примере кода показано, как преобразовать фигуры в объекты Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
