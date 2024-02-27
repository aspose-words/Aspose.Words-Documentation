---
title: Логические уровни узлов в документе
second_title: Aspose.Words для Python via .NET
articleTitle: Логические уровни узлов в документе
linktitle: Логические уровни узлов в документе
type: docs
description: "В документации Aspose.Words для Python via .NET упоминаются логические уровни узлов – уровень блока, строчный уровень или уровень строки. Уровень узла используется для описания местоположения в дереве документа, где обычно находится узел."
weight: 10
url: /ru/python-net/logical-levels-of-nodes-in-a-document/
---

В этой документации иногда упоминается группа классов узлов как принадлежащих к "уровне" в документе, например, узлы "уровня блока", "встроенного уровня" (также известного как "встроенные") или узлы "уровня строки".. Эти уровни в документе разграничены чисто логически и не выражаются явно путем наследования или другими Aspose.Words DOM средствами. Уровень узла используется для описания места в дереве документа, где обычно находится узел.

В предыдущей статье мы уже говорили об отношениях между узлами и о том, что не всем узлам разрешено быть дочерними элементами каких-либо узлов. Например, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) может быть только дочерним элементом [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), а [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) может быть только дочерним элементом [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) и так далее. Эти отношения также применимы для логического разделения узлов на уровни в документе.

В следующих разделах описываются логические уровни узлов в Aspose.Words и классы, принадлежащие каждому уровню.

## Логический уровень документа и раздела

Документ Word состоит из одного или нескольких разделов, представленных классом [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) и разделенных разрывами разделов. Раздел может определять собственный размер страницы, поля, ориентацию, количество текстовых столбцов, а также верхние и нижние колонтитулы.

Узлы уровней [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) имеют структуру, показанную на следующей схеме.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="слова-аспонсы на уровне документа и раздела" style="width:700px"/>

Раздел содержит основной текст, а также верхние и нижние колонтитулы для первой, четной и нечетной страниц. Эти разные "потоки" текста называются *stories*.

В Aspose.Words узел [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) содержит узлы историй [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) и [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). Объект [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) хранит основной текст. В [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) объектах хранится текст для каждого верхнего и нижнего колонтитула. Текст любого рассказа состоит из абзацев и таблиц, представленных соответственно объектами [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) уровня Block.

Кроме того, каждый документ Word может содержать глоссарий, который представлен узлом [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) в Aspose.Words. Документ глоссария содержит [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/), [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) и [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) записей.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) включает [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) узла, представляющие различные типы записей глоссария. Каждый [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) содержит разделы, которые можно вставлять, удалять и копировать в документы.

## Блокировать логический уровень

Узлы уровня блока представляют собой контейнеры для содержимого и элементов управления содержимым и могут встречаться в дочерних узлах дерева документа в следующих узлах:

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

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) и [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), которые являются наиболее важными узлами уровня блока
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), который встречается как на уровне блока, так и на уровне строки
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), которые представляют собой пользовательскую разметку и могут содержать как контент, так и элементы управления контентом

На следующей диаграмме показаны элементы уровня блока.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="слова-аспозиции уровня блока" style="width:550px"/>

## Встроенный логический уровень

Узлы строчного уровня представляют фактическое содержимое документа и могут содержаться в следующих контейнерах:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – самый распространенный контейнер
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Элементы строчного уровня представлены следующими классами:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – фрагменты текста, отформатированные по-разному
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) представляют закладки
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) и [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) представляют собой аннотации
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/), которые представляют символы полей, а [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) представляют поля Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) представляет специальные символы в документе
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) и [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) обозначают формы, рисунки, изображения и т.д.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) и [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) представляют собой пользовательскую разметку

На следующей диаграмме показана структура узлов встроенного уровня.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="встроенные слова-аспонсы" style="width:785px"/>

{{% alert color="primary" %}}

Фигуры в Microsoft Word включают автофигуры Office Art, текстовые поля, изображения, объекты OLE и элементы управления ActiveX, все из которых представлены с помощью класса `Shape`. Некоторые фигуры также могут содержать текст, поэтому узлы фигуры в Aspose.Words могут содержать узлы уровня блока.

Фигуры можно группировать друг в друге с помощью [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) узла.

{{% /alert %}}

{{% alert color="primary" %}}

Сноски и комментарии могут содержать текст, поэтому узлы [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) и [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) в Aspose.Words могут содержать узлы уровня блока.

{{% /alert %}}

## Уровень узла таблицы, строки и ячейки

Таблица состоит из узлов строк и ячеек. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) элемента представлены следующими классами:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) представляет строку таблицы
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) представляет ячейку таблицы
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) представляет собой пользовательскую разметку

На следующей диаграмме показаны структуры узлов уровней [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="таблица-строка-ячейка-аспонировать-слова" style="width:910px"/>