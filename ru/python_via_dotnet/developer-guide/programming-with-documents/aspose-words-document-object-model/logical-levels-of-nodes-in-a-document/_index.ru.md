---
title: Логические уровни узлов в документе
second_title: Aspose.Words для Python via .NET
articleTitle: Логические уровни узлов в документе
linktitle: Логические уровни узлов в документе
type: docs
description: "В документации Aspose.Words для Python via .NET упоминаются логические уровни узлов – уровень блока, встроенный уровень или уровень строки. Уровень узла используется для описания местоположения в дереве документа, где обычно находится узел."
weight: 10
url: /ru/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

В этой документации иногда упоминается группа классов узлов, относящихся к "уровню" в документе, например, узлы "уровня блоков", "встроенного уровня" (также известные как "встроенные") или "уровня строк". Эти уровни в документе различаются чисто логически и не выражаются явно посредством наследования или другими способами Aspose.Words DOM. Уровень узла используется для описания места в дереве документа, где обычно находится узел.

В предыдущей статье мы уже говорили о взаимосвязи между узлами и о том факте, что не всем узлам разрешено быть дочерними по отношению к каким-либо узлам. Например, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) может быть только дочерним элементом [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), а [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) может быть только дочерним элементом [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) и так далее. Эти связи также применимы для логического разделения узлов на уровни в документе.

В следующих разделах описываются логические уровни узлов в Aspose.Words и классы, принадлежащие каждому уровню.

## Логический уровень документа и раздела

Документ Word состоит из одного или нескольких разделов, представленных классом [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и разделенных разделительными полосами. Раздел может сам определять размер страницы, поля, ориентацию, количество текстовых столбцов, а также верхние и нижние колонтитулы.

Узлы уровней [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) имеют структуру, показанную на следующей диаграмме.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

Раздел содержит основной текст, а также верхние и нижние колонтитулы для первой, четной и нечетной страниц. Эти различные "потоки" текста называются *stories*.

В Aspose.Words узел [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) содержит узлы [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) и [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) историй. Объект [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) хранит основной текст. Объекты [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) хранят текст для каждого верхнего и нижнего колонтитула. Текст любой статьи состоит из абзацев и таблиц, соответственно представленных объектами [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) уровня блоков.

Кроме того, каждый документ Word может содержать глоссарий, который представлен узлом [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) в Aspose.Words. Документ-глоссарий содержит записи [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/), [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) и [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) включает [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) узлы, представляющие различные типы записей в документе глоссария. Каждый [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) содержит разделы, которые можно вставлять, удалять и копировать в документы.

## Логический уровень блока

Узлы уровня блоков представляют собой контейнеры для содержимого и элементов управления содержимым и могут встречаться в дочерних узлах дерева документов в следующих узлах:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Узлы блочного уровня представлены следующими классами:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) и [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), которые являются наиболее важными узлами блочного уровня
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), которое происходит как на уровне блока, так и на встроенном уровне
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), которые представляют собой пользовательскую разметку и могут содержать как содержимое, так и элементы управления содержимым

На следующей диаграмме показаны элементы блочного уровня.

<img src="block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Встроенный логический уровень

Узлы встроенного уровня представляют фактическое содержимое документа и могут содержаться в следующих контейнерах:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – наиболее распространенный контейнер
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Элементы встроенного уровня представлены следующими классами:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – фрагменты текста, отформатированные по-разному
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) представляют собой закладки
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) и [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) представляют собой аннотации
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/), которые представляют символы полей, и [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/), которые представляют поля Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) представляет специальные символы в документе
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) и [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) представляют собой формы, рисунки, изображения и т.д.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) и [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) представляют пользовательскую разметку

На следующей диаграмме показана структура узлов встроенного уровня.

<img src="inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Фигуры в Microsoft Word включают Office Art AutoShapes, текстовые поля, изображения, объекты OLE и элементы управления ActiveX, все из которых представлены с использованием класса `Shape`. Некоторые фигуры также могут содержать текст, поэтому узлы фигур в Aspose.Words могут содержать узлы на уровне блоков.

Фигуры могут быть сгруппированы друг внутри друга с помощью узлов [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Сноски и комментарии могут содержать текст, поэтому узлы [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) и [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) в Aspose.Words могут содержать узлы на уровне блоков.

{{% /alert %}}

## Уровень узлов таблиц, строк и ячеек

Таблица состоит из узлов строк и ячеек. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Элементы представлены следующими классами:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) представляет строку таблицы
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) представляет собой ячейку таблицы
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) представляет пользовательскую разметку

На следующей диаграмме показаны структуры узлов уровней [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>
