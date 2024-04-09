---
title: Strukturované značky dokumentů
second_title: Aspose.Words místo Python via .NET
articleTitle: Strukturované značky dokumentů nebo kontrola obsahu
linktitle: Strukturované značky dokumentů nebo kontrola obsahu
description: "Vložit klientsky definované sémantika, stejně jako jeho chování a vzhled do dokumentu pomocí strukturovaných dokumentů značky (SDT nebo kontrola obsahu) v Python."
type: docs
weight: 50
url: /cs/python-net/structured-document-tags-or-content-control/
---


Strukturované značky dokumentů (SDT nebo kontrola obsahu) umožňují vložit sémantika definovaná zákazníkem i jeho chování a vzhled do dokumentu.

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) může dojít v dokumentu na těchto místech:

- Block-level - Mezi odstavci a tabulky, jako dítě [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) nebo [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Uzel.
- Row-level - Mezi řádky v tabulce, jako dítě [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Uzel.
- Buňky na úrovni buněk, jako dítě [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) Uzel.
- Mezi inline obsah uvnitř, jako dítě [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- Nested uvnitř další [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/).

Aspose.Words podporuje tvorbu následujících typů strukturovaných značek dokumentů:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
