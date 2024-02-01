---
title: Теги структурированных документов
second_title: Aspose.Words для Python via .NET
articleTitle: Структурированные теги документа или контроль содержимого
linktitle: Структурированные теги документа или контроль содержимого
description: "Встраивайте определяемую клиентом семантику, а также ее поведение и внешний вид в документ с помощью тегов структурированного документа (SDT или управления содержимым) в Python."
type: docs
weight: 50
url: /ru/python-net/structured-document-tags-or-content-control/
---


Структурированные теги документа (SDT или контроль содержимого) позволяют встраивать в документ определяемую клиентом семантику, а также ее поведение и внешний вид.

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) может встречаться в документе в следующих местах:

- На уровне блока – среди абзацев и таблиц в качестве дочернего элемента узла [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) или [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Уровень строки – среди строк таблицы, как дочерний элемент узла [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/).
- На уровне ячейки – среди ячеек в строке таблицы, как дочерний элемент узла [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/).
- Встроенный уровень – среди встроенного содержимого внутри, как дочерний элемент [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- Вложен в другой [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/).

Aspose.Words поддерживает создание следующих типов тегов структурированных документов:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
