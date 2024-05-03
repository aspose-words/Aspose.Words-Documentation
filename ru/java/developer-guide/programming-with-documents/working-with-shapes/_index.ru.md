---
title: Работа с формами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с формами
linktitle: Работа с формами
type: docs
description: "Введение в язык разметки формы, создание форм разных типов с использованием Java."
weight: 280
url: /ru/java/working-with-shapes/
---

Эта тема обсуждает, как программно работать с формами, используя Aspose.Words.

Формы в Aspose.Words представляют собой объект в слое рисунка, такой как AutoShape, текстовый ящик, свободная форма, объект OLE, управление ActiveX или изображение. Документ Word может содержать одну или несколько различных форм. Формы документа представлены [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) класс.

## Вставьте форму с помощью конструктора документов

Вы можете вставить линейную форму с указанным типом и размером и свободно плавающую форму с указанным положением, размером и типом текстовой обертки в документ, используя [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) метод. The **InsertShape** Способ позволяет вставить форму DML в модель документа. Документ должен быть сохранен в формате, который поддерживает формы DML, иначе такие узлы будут преобразованы в форму VML, при этом сохраняется документ.

Следующий пример кода показывает, как вставить эти типы фигур в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Установить соотношение заперто

Использовать Aspose.Words, Вы можете указать, заблокировано ли соотношение сторон формы через [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) собственность.

Следующий пример показывает, как работать с **AspectRatioLocked** имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Настройка формы Layout in Cell

Вы также можете указать, отображается ли форма внутри стола или снаружи стола. [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) собственность.

Следующий пример показывает, как работать с **IsLayoutInCell** имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Добавить Corners Snipped

Вы можете создать угловой прямоугольник с помощью Aspose.Words. Типы фигур: *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, * и *DiagonalCornersRounded.*

Форма DML создается с использованием **InsertShape** Метод с этими типами форм. Эти типы не могут быть использованы для создания форм VML. Попытка создать форму с помощью общественного конструктора класса "Форма" поднимает исключение "Неподдерживаемый Исключение".

Следующий пример кода показывает, как вставить эти формы в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Получите реальные точки соприкосновения формы

Использовать Aspose.Words API, Вы можете получить расположение и размер формы, содержащей блок в точках, относительно якоря самой верхней формы. Чтобы сделать это, используйте [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) собственность.

Следующий пример показывает, как работать с **BoundsInPoints** имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Укажите вертикальный якорь

Вы можете указать вертикальное выравнивание текста в форме, используя [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) собственность.

Следующий пример показывает, как работать с **VerticalAnchor** имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Обнаружение Smart Форма искусства

Aspose.Words Также можно определить, имеет ли форма `SmartArt` объект. Чтобы сделать это, используйте [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) собственность.

Следующий пример показывает, как работать с **HasSmartArt** имущество:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Формат горизонтальных правил

Вы можете вставить горизонтальную форму правила в документ, используя [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) метод.

Aspose.Words API обеспечивает [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) свойство доступа к свойствам горизонтальной формы правила. The [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) Класс раскрывает основные свойства, такие как высота, цвет, NoShade и т.д. Для форматирования горизонтального правила.

Следующий пример кода показывает, как установить **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
