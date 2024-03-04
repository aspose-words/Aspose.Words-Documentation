---
title: Логические уровни узлов в документе в C#
second_title: Aspose.Words для .NET
articleTitle: Логические уровни узлов в документе
linktitle: Логические уровни узлов в документе
type: docs
description: "В документации Aspose.Words для .NET упоминаются логические уровни узлов — уровень блока, строчный уровень или уровень строки с использованием C#. Уровень узла используется для описания местоположения в дереве документа, где обычно встречается узел."
weight: 10
url: /ru/net/logical-levels-of-nodes-in-a-document/
---

В этой документации иногда упоминается группа классов узлов как принадлежащих к "уровне" в документе, например, узлы "уровня блока", "встроенного уровня" (также известного как "встроенные") или узлы "уровня строки".. Эти уровни в документе различаются чисто логически и не выражаются явно путем наследования или другими Aspose.Words DOM средствами. Уровень узла используется для описания места в дереве документа, где обычно находится узел.

В предыдущей статье мы уже говорили об отношениях между узлами и о том, что не всем узлам разрешено быть дочерними элементами каких-либо узлов. Например, Cell может быть только дочерним элементом Row, а Row может быть только дочерним элементом Table и так далее. Эти отношения также применимы для логического разделения узлов на уровни в документе.

В следующих разделах описываются логические уровни узлов в Aspose.Words и классы, принадлежащие каждому уровню.

## Логический уровень документа и раздела

Документ Word состоит из одного или нескольких разделов, представленных классом [Section](https://reference.aspose.com/words/ru/net/aspose.words/section/) и разделенных разрывами разделов. Раздел может определять собственный размер страницы, поля, ориентацию, количество текстовых столбцов, а также верхние и нижние колонтитулы.

Узлы уровней [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/) и [Section](https://reference.aspose.com/words/ru/net/aspose.words/section/) имеют структуру, показанную на следующей схеме.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="слова-аспонсы на уровне документа и раздела" style="width:700px"/>

Раздел содержит основной текст, а также верхние и нижние колонтитулы для первой, четной и нечетной страниц. Эти разные "потоки" текста называются *stories*.

В Aspose.Words узел **Section** содержит узлы историй [Body](https://reference.aspose.com/words/ru/net/aspose.words/body/) и [HeaderFooter](https://reference.aspose.com/words/ru/net/aspose.words/headerfooter/). Объект **Body** хранит основной текст. Объекты **HeaderFooter** хранят текст для каждого верхнего и нижнего колонтитула. Текст любого рассказа состоит из абзацев и таблиц, представленных соответственно объектами **Paragraph** и **Table** блочного уровня.

Кроме того, каждый документ Word может содержать глоссарий, который представлен узлом [GlossaryDocument](https://reference.aspose.com/words/ru/net/aspose.words.buildingblocks/glossarydocument/) в Aspose.Words. Документ глоссария содержит [BuildingBlocks](https://reference.aspose.com/words/ru/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/ru/net/aspose.words.buildingblocks/buildingblocktype/) и [AutoCorrect](https://reference.aspose.com/words/ru/net/aspose.words.buildingblocks/buildingblocktype/) записи.

**GlossaryDocument** включает [BuildingBlock](https://reference.aspose.com/words/ru/net/aspose.words.buildingblocks/buildingblock/) узлов, представляющих различные типы записей глоссария. Каждый **BuildingBlock** содержит разделы, которые можно вставлять, удалять и копировать в документы.

## Блокировать логический уровень

Узлы уровня блока представляют собой контейнеры для содержимого и элементов управления содержимым и могут встречаться в дочерних узлах дерева документа в следующих узлах:

- Тело
- Заголовок
- Нижний колонтитул
- Сноска
- Комментарий
- Форма
- GroupФорма
- Клетка
- Тег структурированного документа

Узлы блочного уровня представлены следующими классами:

- [Tables](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/) и [Paragraphs](https://reference.aspose.com/words/ru/net/aspose.words/paragraph/), которые являются наиболее важными узлами уровня блока
- Закладки, которые происходят как на уровне блоков, так и на уровне строк
- [StructuredDocumentTag](https://reference.aspose.com/words/ru/net/aspose.words.markup/structureddocumenttag/), которые представляют пользовательскую разметку и могут содержать как контент, так и элементы управления контентом

На следующей диаграмме показаны элементы уровня блока.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="слова-аспозиции уровня блока" style="width:550px"/>

## Встроенный логический уровень

Узлы строчного уровня представляют фактическое содержимое документа и могут содержаться в следующих контейнерах:

- Абзац – самый распространенный контейнер
- [SmartTag](https://reference.aspose.com/words/ru/net/aspose.words.markup/smarttag/)
- Тег структурированного документа

Элементы строчного уровня представлены следующими классами:

- [Run](https://reference.aspose.com/words/ru/net/aspose.words/run/) – фрагменты текста, отформатированные по-разному
- [BookmarkStart](https://reference.aspose.com/words/ru/net/aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/ru/net/aspose.words/bookmarkend/) представляют собой закладки
- [CommentRangeStart](https://reference.aspose.com/words/ru/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/ru/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/ru/net/aspose.words/comment/) и [Footnote](https://reference.aspose.com/words/ru/net/aspose.words.notes/footnote/) представляют собой аннотации
- [FieldStart](https://reference.aspose.com/words/ru/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/ru/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/ru/net/aspose.words.fields/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/ru/net/aspose.words.fields/fieldend/) представляют собой символы поля, а [FormField](https://reference.aspose.com/words/ru/net/aspose.words.fields/formfield/) представляют поля Word
- [SpecialChar](https://reference.aspose.com/words/ru/net/aspose.words/specialchar/) представляет специальные символы в документе
- [Shape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/) и [GroupShape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/groupshape/) обозначают формы, рисунки, изображения и т.д.
- SmartTag и StructuredDocumentTag представляют собой пользовательскую разметку

На следующей диаграмме показана структура узлов встроенного уровня.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="встроенные слова-аспонсы" style="width:785px"/>

{{% alert color="primary" %}}

Фигуры в Microsoft Word включают автофигуры Office Art, текстовые поля, изображения, объекты OLE и элементы управления ActiveX, все из которых представлены с помощью класса `Shape`. Некоторые фигуры также могут содержать текст, поэтому узлы фигуры в Aspose.Words могут содержать узлы уровня блока.

Фигуры можно группировать друг в друге с помощью узлов GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Сноски и комментарии могут содержать текст, поэтому узлы "Сноски" и "Комментарии" в Aspose.Words могут содержать узлы уровня блока.

{{% /alert %}}

## Уровень узла таблицы, строки и ячейки

Таблица состоит из узлов строк и ячеек. Элементы таблицы представлены следующими классами:

- [Row](https://reference.aspose.com/words/ru/net/aspose.words.tables/row/) представляет строку таблицы
- [Cell](https://reference.aspose.com/words/ru/net/aspose.words.tables/cell/) представляет ячейку таблицы
- StructuredDocumentTag представляет пользовательскую разметку

На следующей диаграмме показаны структуры узлов уровней таблицы, строки и ячейки.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="таблица-строка-ячейка-аспонировать-слова" style="width:910px"/>
