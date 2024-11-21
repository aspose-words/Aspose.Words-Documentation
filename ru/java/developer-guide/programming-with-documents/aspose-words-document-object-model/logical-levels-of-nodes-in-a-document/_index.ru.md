---
title: Логические уровни узлов в документе Java
second_title: Aspose.Words для Java
articleTitle: Логические уровни узлов в документе
linktitle: Логические уровни узлов в документе
type: docs
description: "В Aspose.Words для Java В документации упоминаются логические уровни узлов - уровень блока, уровень строки или уровень строки. Уровень узла используется для описания местоположения в дереве документа, где обычно происходит узел."
weight: 10
url: /ru/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Эта документация иногда относится к группе классов узлов как принадлежащих к "уровню" в документе, таким как "уровень блока", "уровень строки" (также известный как "уровень строки") или "узлы уровня строки". Эти уровни в документе дифференцируются чисто логически и не выражаются явно по наследству или другим причинам. Aspose.Words DOM Это значит. Уровень узла используется для описания места в дереве документа, где обычно происходит узел.

В предыдущей статье мы уже говорили о взаимосвязи между узлами и о том, что не всем узлам разрешено быть ребенком каких-либо узлов. Например, Cell может быть только Row-ребёнком, а Row может быть только Table-ребёнком и так далее. Эти соотношения применимы и для логического деления узлов на уровни в документе.

Следующие разделы описывают логические уровни узлов в Aspose.Words Классы, которые относятся к каждому уровню.

## Документ и раздел Логический уровень

А. Документ Word состоит из одного или нескольких разделов, представленных [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) класс и разделенные секционными перерывами. Раздел может определять собственный размер страницы, поля, ориентацию, количество текстовых столбцов, заголовков и нижних колонок.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) и [Раздел](https://www.aspose.com/api/words/java/com.aspose.words/section) Узлы уровня имеют структуру, как показано на следующей диаграмме.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Раздел содержит основной текст, а также заголовки и нижние колонтитулы для первых, четных и нечетных страниц. Эти различные "потоки" текста называются *stories*.

В Aspose.Words, тот **Section** Узел содержит [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) и [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Узлы истории. The **Body** Объект сохраняет основной текст. The **HeaderFooter** Объекты хранят текст для каждого заголовка и футера. Текст любого рассказа состоит из абзацев и таблиц, соответственно представленных **Paragraph** и **Table** Объекты уровня блока.

Кроме того, каждый Слово документ может содержать глоссарий, который представлен [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) узел Aspose.Words. Глоссарий содержит [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), и [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) Записи.

**GlossaryDocument** включает [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) Узлы, представляющие различные типы записей глоссария. Каждый **BuildingBlock** содержит разделы, которые могут быть вставлены, удалены и скопированы в документы.

## Блокировать логический уровень

Узлы уровня блока представляют собой контейнеры для контента и управления контентом и могут встречаться в узлах дерева документов в следующих узлах:

- Тело
- Заголовок
- Фотер
- Сноска
- Комментарий
- Форма
- Groupформа
- Клетка
- Тег структурированного документа

Узлы уровня блока представлены следующими классами:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) и [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), которые являются наиболее важными узлами уровня блоков
- Закладки, которые возникают как на уровне блоков, так и на уровне inline
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), которые представляют пользовательскую разметку и могут содержать как контент, так и элементы управления контентом

На следующей диаграмме показаны элементы уровня блока.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Логический уровень inline

Узлы встроенного уровня представляют фактическое содержание документа и могут содержаться в следующих контейнерах:

- Пункт – самый распространенный контейнер
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- Тег структурированного документа

Элементы линейного уровня представлены следующими классами:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - строки текста, отформатированные по-разному
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) и [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) представлять закладки
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) и [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) представлять аннотации
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) и [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) которые представляют собой полевые символы и [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) представлять Поля слов
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) Представляет специальные символы в документе
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) и [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) представляют формы, рисунки, изображения и т.д.
- SmartTag и структурированный документ Tag представляет собой custom markup

На следующей диаграмме показана структура узлов inline-level.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Формы в Microsoft Word включают в себя Office Art AutoShapes, текстовые поля, изображения, объекты OLE и элементы управления ActiveX, все из которых представлены с использованием `Shape` класс. Некоторые формы также могут содержать текст, поэтому узлы формы в Aspose.Words Может содержать узлы блочного уровня.

Формы могут быть сгруппированы внутри друг друга с помощью GroupУзлы формы.

{{% /alert %}}

{{% alert color="primary" %}}

Сноски и комментарии могут содержать текст, поэтому узлы сносок и комментариев в Aspose.Words Может содержать узлы блочного уровня.

{{% /alert %}}

## Уровень стола, Row и Cell Node

Таблица состоит из узлов строк и ячеек. Элементы таблиц представлены следующими классами:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) представляет собой строку стола
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) представляет собой столовую ячейку
- Структурированный документ Tag представляет собой custom markup

На следующей диаграмме показаны структуры узлов уровней Table, Row и Cell.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
