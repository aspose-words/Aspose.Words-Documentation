---
title: Робота з фігурами в Java
second_title: Aspose.Words для Java
articleTitle: Робота з фігурами
linktitle: Робота з фігурами
type: docs
description: "Вступ до форми розмітки мови, створення форм різних типів Javaй"
weight: 280
url: /uk/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Ця тема обговорює, як працювати программатично з формами за допомогою Aspose.Wordsй

Форми в Aspose.Words представляє об'єкт в шарі малювання, такі як AutoShape, текстова коробка, форма, об'єкт OLE, управління ActiveX або малюнок. Документ Word може містити одну або іншу форму. Види документа представлені [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) клас.

## Вставити форму за допомогою конструктора документів

Ви можете вставляти в лінію форму з вказаним типом і розміром і вільно плаваючою формою з вказаним положенням, розміром і типом текстового обгортання в документ, використовуючи вказаний тип і розмір і форму вільного плавлення з вказаним положенням, розміром і типом текстового обгортання в документ, за допомогою документа [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) метод. Про нас **InsertShape** метод дозволяє вставляти DML форму в документ модель. Документ повинен бути збережений у форматі, який підтримує форми DML, інакше такі вершини будуть перетворені на форму VML, при цьому збереження документа.

Приклад коду показує, як вставити ці типи форм у документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Набір Aspect Ratio Locked

Використання Aspose.Words, Ви можете вказати, чи заблоковано співвідношення форми через [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) майно.

Приклад коду показує, як працювати з **AspectRatioLocked** майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Set Shape Layout В клітинку

Ви також можете вказати, чи відображається форма всередині таблиці або зовні його за допомогою [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) майно.

Приклад коду показує, як працювати з **IsLayoutInCell** майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Додати Corners Snipped

Ви можете створити прямокутний прямокутний прямокутник за допомогою Aspose.Wordsй Типи форми *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* і *DiagonalCornersRounded.*

Форма DML створюється за допомогою **InsertShape** метод з цими типами форми. Ці типи не можуть використовуватися для створення VML-форм. Приєднатися до створення форми за допомогою публічного конструктора класу "Шапе" піднімає виняток "НепідтриманийException".

Приклад коду показує, як вставити ці форми в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Отримувати Фактичні точки фігури

Використання Aspose.Words API, Ви можете отримати місце розташування і розмір форми, що містить блок в точках, відносно анкеру верхньої форми. Для цього використовуйте [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) майно.

Приклад коду показує, як працювати з **BoundsInPoints** майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Вказати Вертикальний Якір

Ви можете вказати текст вертикального вирівнювання у вигляді форми за допомогою [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) майно.

Приклад коду показує, як працювати з **VerticalAnchor** майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Детект Смарт Арт форма

Aspose.Words також дозволяє виявити, чи має форму `SmartArt` об'єкт. Для цього використовуйте [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) майно.

Приклад коду показує, як працювати з **HasSmartArt** майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Горизонтальний формат Rule

Ви можете вставити форму горизонтального правила в документ, використовуючи [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) метод.

Aspose.Words API Послуги [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) властивість доступу до властивостей горизонтальної форми правила. Про нас [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) клас визначає основні властивості, такі як Висота, колір, NoShade тощо для форматування горизонтального правила.

Приклад наступного коду показує, як встановити **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
