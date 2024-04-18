---
title: Работа с форми в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с форми
linktitle: Работа с форми
description: "Въведение във формата маркиращ език, създаване на форми от различни видове използване C#."
type: docs
weight: 280
url: /bg/net/working-with-shapes/
---

Тази тема обсъжда как да се работи програмно с форми, използвайки Aspose.Words.

Форми в Aspose.Words представлява обект в рисувания слой, като AutoShape, текстова кутия, свободна форма, OLE обект, ActiveX контрол, или картина. Документът на Word може да съдържа една или повече различни форми. Форма в Aspose.Words са представени от [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Клас.

## Вмъкване на форма чрез създаване на документ

Можете да въведете в линия форма с определен тип и размер и свободно плаваща форма с определено положение, размер и текстова обвивка в документ с помощта на [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) метод. На **InsertShape** метод позволява въвеждане на DML форма в модела на документа. Документът трябва да бъде записан във формат, който поддържа DML форми, в противен случай, такива възли ще бъдат преобразувани във VML форма, докато документ спестяване.

Следният пример за код показва как да се вкарат тези видове форми в документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Задаване на заключване на съотношението

Използване Aspose.Words, Можете да посочите дали съотношението на аспекта е заключен през [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) собственост.

Следният пример с код показва как да работите с **AspectRatioLocked** собственост:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Задаване на форма в клетка

Можете също така да посочите дали формата се показва в таблица или извън нея с помощта на [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) собственост.

Следният пример с код показва как да работите с **IsLayoutInCell** собственост:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Създаване на наклонен ъгъл

Можете да създадете ъглов правоъгълник с помощта на Aspose.Words. Типовете форма са *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* and *DiagonalCornersRounded.*

Формата DML е създадена с помощта на **InsertShape** метод с тези видове форма. Тези видове не могат да бъдат използвани за създаване на VML форми. Опит за създаване на форма чрез използване на обществения конструктор на класа "Shape" повдига изключението "NotSupportedException."

Следният пример за код показва как да се вкарат тези форми в документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Получаване на реални граници на формата точки

Използване Aspose.Words API, Можете да получите местоположението и размера на формата, съдържаща блок в точки, спрямо котвата на най-горната форма. За целта използвайте [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) собственост.

Следният пример с код показва как да работите с **BoundsInPoints** собственост:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Вертикална котва

Можете да посочите вертикалното подравняване на текста във форма с помощта на [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) собственост.

Следният пример с код показва как да работите с **VerticalAnchor** собственост:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Открий умно Форма на изкуството

Aspose.Words също така позволява да се установи дали формата има `SmartArt` Възразявам. За целта използвайте [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) собственост.

Следният пример с код показва как да работите с **HasSmartArt** собственост:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Вмъкване на хоризонтално Член в документ

Можете да въведете хоризонтално правило форма в документ с помощта на [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) метод.

Следният пример с код показва как да направите това:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API осигурява [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) собственост за достъп до свойствата на хоризонталното правило. На [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) клас излага основни свойства като Височина, цвят, NoShade и т.н. за форматиране на хоризонтално правило.

Следният пример с код показва как да зададете **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Импортиране на форма с Math XML като форма в DOM

Можеш да използваш [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) Имотът да конвертирате формите с уравнениеXML да Office Математически обекти. По подразбиране стойността на този имот съответства на Microsoft Word поведение, т.е. форми с уравнение XML не се преобразуват в офис математически обекти.

Следният пример за код показва как да конвертирате форми в Office Математически обекти:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
