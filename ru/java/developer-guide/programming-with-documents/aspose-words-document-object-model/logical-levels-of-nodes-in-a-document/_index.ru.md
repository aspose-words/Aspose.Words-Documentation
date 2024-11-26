---
title: Логические уровни узлов в документе в Java
second_title: Aspose.Words для Java
articleTitle: Логические уровни узлов в документе
linktitle: Логические уровни узлов в документе
type: docs
description: "В документации Aspose.Words для Java упоминаются логические уровни узлов – уровень блока, встроенный уровень или уровень строки. Уровень узла используется для описания местоположения в дереве документа, где обычно находится узел."
weight: 10
url: /ru/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

В этой документации иногда упоминается группа классов узлов, относящихся к "уровню" в документе, например, узлы "уровня блоков", "встроенного уровня" (также известные как "встроенные") или "уровня строк". Эти уровни в документе различаются чисто логически и не выражаются явно посредством наследования или другими способами Aspose.Words DOM. Уровень узла используется для описания места в дереве документа, где обычно находится узел.

В предыдущей статье мы уже говорили о взаимосвязи между узлами и о том, что не всем узлам разрешено быть дочерними по отношению к каким-либо узлам. Например, ячейка может быть дочерней только по отношению к строке, а строка может быть дочерней только по отношению к таблице и так далее. Эти взаимосвязи также применимы для логического разделения узлов на уровни в документе.

В следующих разделах описываются логические уровни узлов в Aspose.Words и классы, принадлежащие каждому уровню.

## Логический уровень документа и раздела

Документ Word состоит из одного или нескольких разделов, представленных классом [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) и разделенных разделительными полосами. Раздел может сам определять размер страницы, поля, ориентацию, количество текстовых столбцов, а также верхние и нижние колонтитулы.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) и [Раздел](https://www.aspose.com/api/words/java/com.aspose.words/section) узлы уровня имеют структуру, показанную на следующей диаграмме.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Раздел содержит основной текст, а также верхние и нижние колонтитулы для первой, четной и нечетной страниц. Эти различные "потоки" текста называются *stories*.

В Aspose.Words узел **Section** содержит узлы истории [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) и [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/). Объект **Body** хранит основной текст. Объекты **HeaderFooter** хранят текст для каждого верхнего и нижнего колонтитула. Текст любой статьи состоит из абзацев и таблиц, соответственно представленных объектами **Paragraph** и **Table** уровня блоков.

Кроме того, каждый документ Word может содержать глоссарий, который представлен узлом [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) в Aspose.Words. Документ-глоссарий содержит [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT) и [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) записей.

**GlossaryDocument**

## Логический уровень блока

Узлы блочного уровня представляют собой контейнеры для содержимого и элементов управления содержимым и могут встречаться в дочерних узлах дерева документов в следующих узлах:

- Тело
- Заголовок
- Нижний колонтитул
- Сноска
- Комментарий
- Форма
- GroupShape
- Клетка
- StructuredDocumentTag

Узлы блочного уровня представлены следующими классами:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) и [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), которые являются наиболее важными узлами блочного уровня
- Закладки, которые выполняются как на уровне блоков, так и на встроенном уровне
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), которые представляют собой пользовательскую разметку и могут содержать как содержимое, так и элементы управления содержимым

На следующей диаграмме показаны элементы блочного уровня.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Встроенный логический уровень

Узлы встроенного уровня представляют фактическое содержимое документа и могут содержаться в следующих контейнерах:

- Абзац – самый распространенный контейнер
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

Элементы встроенного уровня представлены следующими классами:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – фрагменты текста, отформатированные по-разному
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) представляют собой закладки
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) и [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) представляют собой аннотации
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/), которые представляют символы полей, и [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/), которые представляют поля Word
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) представляет специальные символы в документе
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) и [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) представляют собой формы, рисунки, изображения и т.д.
- SmartTag и StructuredDocumentTag представляют пользовательскую разметку

На следующей диаграмме показана структура узлов встроенного уровня.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Фигуры в Microsoft Word включают Office Art AutoShapes, текстовые поля, изображения, объекты OLE и элементы управления ActiveX, все из которых представлены с использованием класса `Shape`. Некоторые фигуры также могут содержать текст, поэтому узлы фигур в Aspose.Words могут содержать узлы на уровне блоков.

Фигуры могут быть сгруппированы друг внутри друга с помощью узлов GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Сноски и комментарии могут содержать текст, поэтому узлы сносок и комментариев в Aspose.Words могут содержать узлы на уровне блоков.

{{% /alert %}}

## Уровень узлов таблиц, строк и ячеек

Таблица состоит из узлов строк и ячеек. Элементы таблицы представлены следующими классами:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) представляет строку таблицы
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) представляет собой ячейку таблицы
- StructuredDocumentTag представляет пользовательскую разметку

На следующей диаграмме показаны структуры узлов на уровне таблицы, строки и ячейки.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
