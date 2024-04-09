---
title: Теги структурированных документов
second_title: Aspose.Words для Python via .NET
articleTitle: Теги структурированных документов или контроль контента
linktitle: Теги структурированных документов или контроль контента
description: "Встроить определяемую клиентом семантику, а также ее поведение и внешний вид в документ с использованием тегов структурированных документов (SDT или управление контентом) Python."
type: docs
weight: 50
url: /ru/python-net/structured-document-tags-or-content-control/
---


Теги структурированных документов (SDT или контент-контроль) позволяют встраивать в документ определяемую клиентом семантику, а также ее поведение и внешний вид.

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) может происходить в документе в следующих местах:

- Уровень блоков - Среди абзацев и таблиц, как ребенок [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) или [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Узел.
- Row-level - Среди строк в таблице, как ребенок [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Узел.
- Уровень клеток - Среди клеток в строке таблицы, как ребенок [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) Узел.
- Inline-level - Среди встроенного контента внутри, как ребенок [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- Находится внутри другого [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/).

Aspose.Words Поддерживает создание следующих типов тегов структурированных документов:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
