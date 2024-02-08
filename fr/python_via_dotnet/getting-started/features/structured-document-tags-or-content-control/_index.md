---
title: Balises de documents structurés
second_title: Aspose.Words pour Python via .NET
articleTitle: Balises de documents structurés ou contrôle de contenu
linktitle: Balises de documents structurés ou contrôle de contenu
description: "Intégrez la sémantique définie par le client ainsi que son comportement et son apparence dans un document à l'aide de balises de document structuré (SDT ou contrôle de contenu) dans Python."
type: docs
weight: 50
url: /fr/python-net/structured-document-tags-or-content-control/
---


Les balises de document structurées (SDT ou contrôle de contenu) permettent d'intégrer la sémantique définie par le client ainsi que son comportement et son apparence dans un document.

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) peut apparaître dans un document aux endroits suivants:

- Au niveau bloc – Parmi les paragraphes et les tableaux, en tant qu'enfant d'un nœud [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) ou [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Au niveau des lignes – Parmi les lignes d'une table, en tant qu'enfant d'un nœud [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/).
- Au niveau des cellules – Parmi les cellules d'une ligne de tableau, en tant qu'enfant d'un nœud [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/).
- Niveau en ligne – Parmi le contenu en ligne à l'intérieur, en tant qu'enfant d'un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- Niché dans un autre [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/).

Aspose.Words prend en charge la création des types suivants de balises de documents structurés:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
