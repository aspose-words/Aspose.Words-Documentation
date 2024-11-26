---
title: Работа с форми в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с форми
linktitle: Работа с форми
type: docs
description: "Въведение във формата маркиращ език, създаване на форми от различни видове използване Java."
weight: 280
url: /bg/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Тази тема обсъжда как да се работи програмно с форми, използвайки Aspose.Words.

Форми в Aspose.Words представлява обект в рисувания слой, като AutoShape, текстова кутия, свободна форма, OLE обект, ActiveX контрол, или картина. Документът на Word може да съдържа една или повече различни форми. Форматите на документа са представени от [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Клас.

## Вмъкване на форма с помощта на строител на документи

Можете да въведете в линия форма с определен тип и размер и свободно плаваща форма с определено положение, размер и текстова обвивка в документ с помощта на [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) метод. На **InsertShape** метод позволява въвеждане на DML форма в модела документ. Документът трябва да бъде записан във формат, който поддържа DML форми, в противен случай, такива възли ще бъдат преобразувани във VML форма, докато документ спестяване.

Следният пример за код показва как да вмъкнете тези видове форми в документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Задаване на заключване на съотношението

Използване Aspose.Words, Можете да посочите дали съотношението на аспекта е заключен през [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) собственост.

Следният пример с код показва как да работите с **AspectRatioLocked** собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Задаване на форма в клетка

Можете също така да посочите дали формата се показва в таблица или извън нея с помощта на [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) собственост.

Следният пример с код показва как да работите с **IsLayoutInCell** собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Добавяне на завоите

Можете да създадете ъглов правоъгълник с клъцване Aspose.Words. Типовете форма са *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* and *DiagonalCornersRounded.*

DML формата е създадена с помощта на **InsertShape** метод с тези видове форма. Тези типове не могат да бъдат използвани за създаване на VML форми. Опит за създаване на форма чрез използване на обществения конструктор на класа "Shape" повдига изключението "NotSupportedException."

Следният пример за код показва как да се вкарат тези форми в документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Получаване на реални граници на форма

Използване Aspose.Words API, Можете да получите местоположението и размера на формата, съдържаща блок в точки, спрямо котвата на най-горната форма. За целта използвайте [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) собственост.

Следният пример с код показва как да работите с **BoundsInPoints** собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Посочете вертикалната котва

Можете да посочите вертикалното подравняване на текста във форма с помощта на [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) собственост.

Следният пример с код показва как да работите с **VerticalAnchor** собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Търсене на Smart Форма на изкуството

Aspose.Words също така позволява да се открие, ако формата има `SmartArt` Възразявам. За целта използвайте [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) собственост.

Следният пример с код показва как да работите с **HasSmartArt** собственост:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Формат на хоризонталното правило

Можете да въведете хоризонтално правило форма в документ с помощта на [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) метод.

Aspose.Words API осигурява [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) собственост за достъп до свойствата на хоризонталното правило. На [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) клас излага основни свойства като височина, цвят, NoShade и т.н. за форматиране на хоризонтално правило.

Следният пример с код показва как да зададете **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
