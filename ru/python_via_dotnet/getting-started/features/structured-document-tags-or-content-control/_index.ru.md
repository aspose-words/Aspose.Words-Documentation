---
title: Теги структурированных документов
second_title: Aspose.Words для Python via .NET
articleTitle: Структурированные теги документа или управление содержимым
linktitle: Структурированные теги документа или управление содержимым
description: "Внедрите определяемую пользователем семантику, а также ее поведение и внешний вид в документ, используя теги структурированного документа (SDT или элемент управления содержимым) в Python."
type: docs
weight: 50
url: /ru/python-net/structured-document-tags-or-content-control/
timestamp: 2024-01-31-14-23-37
---


Структурированные теги документа (SDT или content control) позволяют внедрять в документ семантику, определенную пользователем, а также его поведение и внешний вид.

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) может встречаться в документе в следующих местах:

- На уровне блоков - среди абзацев и таблиц, как дочерний элемент узла [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) или [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- На уровне строк - среди строк в таблице, как дочерний элемент узла [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/).
- На уровне ячейки - среди ячеек в строке таблицы, как дочерний элемент узла [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/).
- Встроенный уровень – среди встроенного содержимого внутри, как дочерний элемент [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- Вложенный в другой [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/).

Aspose.Words поддерживает создание следующих типов тегов структурированных документов:

- DropDownList
- ComboBox
- Checkbox
- Дата
- BuildingBlockGallery
- Группа
- `Picture`
- RichText
- PlainText
