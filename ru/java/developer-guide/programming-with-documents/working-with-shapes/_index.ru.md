---
title: Работа с фигурами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с формами
linktitle: Работа с формами
type: docs
description: "Знакомство с языком разметки фигур, создание фигур различных типов с помощью Java."
weight: 280
url: /ru/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

В этом разделе обсуждается, как программно работать с фигурами, используя Aspose.Words.

Фигуры в Aspose.Words представляют объект на уровне рисования, такой как AutoShape, текстовое поле, объект произвольной формы, OLE, элемент управления ActiveX или изображение. Документ Word может содержать одну или несколько различных фигур. Формы документа представлены классом [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Вставка фигуры с помощью конструктора документов

Вы можете вставить в документ встроенную фигуру с указанным типом и размером, а также свободно перемещающуюся фигуру с указанным положением, размером и типом переноса текста, используя метод [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). Метод **InsertShape** позволяет вставить фигуру DML в модель документа. Документ должен быть сохранен в формате, поддерживающем DML формы, в противном случае такие узлы будут преобразованы в форму VML при сохранении документа.

В следующем примере кода показано, как вставить эти типы фигур в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Установите фиксированное соотношение сторон

Используя Aspose.Words, вы можете указать, будет ли зафиксировано соотношение сторон фигуры с помощью свойства [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

В следующем примере кода показано, как работать со свойством **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Установите Расположение Фигуры В Ячейке

Вы также можете указать, будет ли фигура отображаться внутри таблицы или за ее пределами, используя свойство [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

В следующем примере кода показано, как работать со свойством **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Добавьте обрезанные углы

Вы можете создать прямоугольник с отрезанным углом, используя Aspose.Words. Типы фигур - *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* и *DiagonalCornersRounded.*

Фигура DML создается с помощью метода **InsertShape** с использованием этих типов фигур. Эти типы не могут быть использованы для создания фигур VML. Попытка создать фигуру с помощью открытого конструктора класса "Shape" приводит к возникновению исключения "NotSupportedException".

В следующем примере кода показано, как вставить фигуры такого типа в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Получите реальные точки границ формы

Используя Aspose.Words API, вы можете получить местоположение и размер фигуры, содержащей блок, в точках относительно привязки самой верхней фигуры. Для этого используйте свойство [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

В следующем примере кода показано, как работать со свойством **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Укажите вертикальную привязку

Вы можете задать выравнивание текста по вертикали внутри фигуры, используя свойство [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

В следующем примере кода показано, как работать со свойством **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Определить форму SmartArt

Aspose.Words также позволяет определить, есть ли у фигуры объект `SmartArt`. Для этого используйте свойство [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

В следующем примере кода показано, как работать со свойством **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Формат горизонтального правила

Вы можете вставить горизонтальную линейчатую фигуру в документ, используя метод [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API предоставляет свойство [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) для доступа к свойствам формы горизонтального правила. Класс [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) предоставляет базовые свойства, такие как высота, цвет, NoShade и т.д. для форматирования горизонтального правила.

В следующем примере кода показано, как установить **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
