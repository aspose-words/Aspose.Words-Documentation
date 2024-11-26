---
title: Робота з фігурами в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з фігурами
linktitle: Робота з фігурами
description: "Вступ до форми розмітки мови, створення форм різних типів C#й"
type: docs
weight: 280
url: /uk/net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Ця тема обговорює, як працювати программатично з формами за допомогою Aspose.Wordsй

Форми в Aspose.Words представляє об'єкт в шарі малювання, такі як AutoShape, текстова коробка, форма, об'єкт OLE, управління ActiveX або малюнок. Документ Word може містити одну або іншу форму. Шпильки в Aspose.Words представлені [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) клас.

## Вставки за допомогою конструктора документів

Ви можете вставляти в лінію форму з вказаним типом і розміром і вільно плаваючою формою з вказаним положенням, розміром і типом текстового обгортання в документ, використовуючи вказаний тип і розмір і форму вільного плавлення з вказаним положенням, розміром і типом текстового обгортання в документі, використовуючи вказану форму і розмір і форму безкоштовної плавки з вказаним положенням, розмір і тип текстового обгортання в документі, використовуючи вказану форму і розмір і форму безкоштовної плавки з вказаним положенням, розмір і тип обгортання тексту в документі за допомогою документа [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) метод. Про нас **InsertShape** метод дозволяє вставляти DML форму в документ модель. Документ повинен бути збережений у форматі, який підтримує форми DML, інакше такі вершини будуть перетворені на форму VML, при цьому збереження документа.

Приклад коду показує, як вставити ці типи форм у документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Набір Aspect Ratio Locked

Використання Aspose.Words, Ви можете вказати, чи заблоковано співвідношення форми через [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) майно.

Приклад наступного коду показує, як працювати з **AspectRatioLocked** майно:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Встановити Shape Layout В клітинку

Ви також можете вказати, чи відображається форма всередині таблиці або зовні його за допомогою [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) майно.

Приклад наступного коду показує, як працювати з **IsLayoutInCell** майно:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Створення Snip Corner прямокутника

Ви можете створити прямокутний прямокутний прямокутник за допомогою Aspose.Wordsй Типи форми *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* і *DiagonalCornersRounded.*

Форма DML створюється за допомогою **InsertShape** метод з цими типами форми. Ці типи не можуть використовуватися для створення VML-форм. Приєднатися до створення форми за допомогою публічного конструктора класу "Шапе".

Приклад коду показує, як вставити ці форми в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Отримувати Фактичні точки фігури

Використання Aspose.Words API, Ви можете отримати місце розташування і розмір форми, що містить блок в точках, відносно анкеру верхньої форми. Для цього використовуйте [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) майно.

Приклад наступного коду показує, як працювати з **BoundsInPoints** майно:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Вказати Вертикальний Якір

Ви можете вказати текст вертикального вирівнювання у вигляді форми за допомогою [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) майно.

Приклад наступного коду показує, як працювати з **VerticalAnchor** майно:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Детект Смарт Арт форма

Aspose.Words також дозволяє виявити, чи має форму `SmartArt` об'єкт. Для цього використовуйте [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) майно.

Приклад наступного коду показує, як працювати з **HasSmartArt** майно:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Вставити горизонтальний Рулі в документі

Ви можете вставити форму горизонтального правила в документ, використовуючи [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) метод.

Приклад наступного коду показує, як це зробити:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API забезпечує [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) властивість доступу до властивостей горизонтальної форми правила. Про нас [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) клас визначає основні властивості, такі як Висота, колір, NoShade тощо для форматування горизонтального правила.

Приклад наступного коду показує, як встановити **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Імпортні фігури з Math XML як форма в DOM

Ви можете використовувати [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) об'єкти Office Math. Значення за замовчуванням цього майна відповідає Microsoft Word поведінка, тобто форми з рівнянням XML не перетворюються на об'єкти математики Office.

Приклад коду показує, як перетворити форму на об'єкти Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
