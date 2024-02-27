---
title: Ustrukturyzowane znaczniki dokumentów
second_title: Aspose.Words dla Python via .NET
articleTitle: Ustrukturyzowane znaczniki dokumentów lub kontrola treści
linktitle: Ustrukturyzowane znaczniki dokumentów lub kontrola treści
description: "Osadzaj semantykę zdefiniowaną przez klienta, a także jej zachowanie i wygląd w dokumencie za pomocą znaczników dokumentów strukturalnych (SDT lub kontrola treści) w Python."
type: docs
weight: 50
url: /pl/python-net/structured-document-tags-or-content-control/
---


Ustrukturyzowane znaczniki dokumentów (SDT lub kontrola treści) pozwalają osadzić w dokumencie zdefiniowaną przez klienta semantykę, a także jej zachowanie i wygląd.

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) może występować w dokumencie w następujących miejscach:

- Na poziomie bloku – Wśród akapitów i tabel, jako element podrzędny węzła [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) lub [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Na poziomie wiersza – Wśród wierszy tabeli, jako element podrzędny węzła [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/).
- Poziom komórki – Wśród komórek w wierszu tabeli, jako element podrzędny węzła [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/).
- Poziom inline – Wśród treści inline wewnątrz, jako element podrzędny [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- Zagnieżdżone w innym [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/).

Aspose.Words obsługuje tworzenie następujących typów znaczników dokumentów strukturalnych:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
