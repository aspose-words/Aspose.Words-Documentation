---
title: Logische niveaus van nodes in een document in C#
second_title: Aspose.Words voor .NET
articleTitle: Logische Nodesniveaus in een document
linktitle: Logische Nodesniveaus in een document
type: docs
description: "In Aspose.Words voor .NET documentatie vermeld logische niveaus van knooppunten Block niveau, inline niveau, of rij niveau met behulp van C#. Het knooppuntniveau wordt gebruikt om de locatie in de documentboom te beschrijven waar het knooppunt meestal voorkomt."
weight: 10
url: /nl/net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Deze documentatie verwijst soms naar een groep knooppuntklassen die behoren tot een "niveau" in een document, zoals "block-level," "inline-level" (ook bekend als "inline"), of "row-level knooppunten." Deze niveaus in een document worden louter logisch gedifferentieerde en niet expliciet uitgedrukt door erfrecht of andere Aspose.Words DOM betekent. Het knooppuntniveau wordt gebruikt om de plaats in de documentboom te beschrijven waar het knooppunt meestal zou voorkomen.

In het vorige artikel spraken we al over de relatie tussen knooppunten en het feit dat niet alle knooppunten een kind mogen zijn van een knooppunt. Bijvoorbeeld, Cell kan alleen een Rij kind, en een Rij kan alleen een Tafel kind, enzovoort. Deze relaties zijn ook van toepassing op logische verdeling van knooppunten in niveaus in het document.

De volgende secties beschrijven de logische niveaus van knooppunten in Aspose.Words en de klassen die tot elk niveau behoren.

## Document en sectie Logisch niveau

A Word document bestaat uit een of meer secties, vertegenwoordigd door de [Section](https://reference.aspose.com/words/net/aspose.words/section/) klasse en gescheiden door sectie pauzes. Een sectie kan zijn eigen paginagrootte, marges, oriëntatie, aantal tekst kolommen, en headers en voetteksten definiëren.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) en [Section](https://reference.aspose.com/words/net/aspose.words/section/) niveauknooppunten hebben de structuur zoals aangegeven in het volgende diagram.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

Een sectie bevat de hoofdtekst, evenals headers en voetteksten voor de eerste, zelfs, en oneven pagina's. Deze verschillende instromen van tekst worden genoemd *stories*.

In Aspose.Words, de **Section** knooppunt bevat de [Body](https://reference.aspose.com/words/net/aspose.words/body/) en [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) verhaalknopen. De **Body** object slaat de hoofdtekst op. De **HeaderFooter** objecten bewaren de tekst voor elke header en voettekst. De tekst van elk verhaal bestaat uit paragrafen en tabellen, respectievelijk vertegenwoordigd door de **Paragraph** en **Table** objecten van het blokniveau.

Bovendien, elk Word document kan een woordenlijst bevatten, die wordt vertegenwoordigd door de [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) knooppunt in Aspose.Words. Een verklarend document bevat [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/), en [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) ingangen.

**GlossaryDocument** omvat [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) knooppunten die verschillende soorten woordenlijst documentvermeldingen vertegenwoordigen. Elk **BuildingBlock** bevat secties die kunnen worden ingevoegd, verwijderd en gekopieerd in documenten.

## Logisch niveau

Block-level knooppunten vertegenwoordigen containers voor inhoud en inhoud controles, en kunnen voorkomen in de document boom kind knooppunten in de volgende knooppunten:

- Lichaam
- Kop
- Voetballer
- Voetnoot
- Commentaar
- Vorm
- GroupVorm
- Cell
- GestructureerdeDocumentTag

Block-level knooppunten worden vertegenwoordigd door de volgende klassen:

- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) en [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/), die de belangrijkste blok-niveau knooppunten zijn
- Bladwijzers, die zowel op blok-niveau als op inline-niveau voorkomen
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/), die aangepaste markering vertegenwoordigen en zowel inhoud als inhoud controles kunnen bevatten

Het volgende diagram toont blok-niveau elementen.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Logisch inlineniveau

Inline-niveauknooppunten vertegenwoordigen de werkelijke inhoud van het document en kunnen worden opgenomen in de volgende containers:

- Paragraaf .. de meest voorkomende container
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- GestructureerdeDocumentTag

Inline-niveauelementen worden vertegenwoordigd door de volgende klassen:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) Opmaak van tekst anders
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) bladwijzers vertegenwoordigen
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) en [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) annotaties weergeven
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) die veldkarakters vertegenwoordigen, en [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) vertegenwoordigen Woordvelden
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) geeft speciale tekens weer in het document
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) en [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) vertegenwoordigen vormen, tekeningen, afbeeldingen, enz.
- SmartTag en gestructureerddocument Tag representeert aangepaste markup

Het volgende diagram toont de inline-level nodes structuur.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Vormen in Microsoft Word omvatten Office Art AutoShapes, tekstvakjes, afbeeldingen, OLE objecten, en ActiveX controles, die allemaal worden weergegeven met behulp van de `Shape` Klasse. Sommige vormen kunnen ook tekst bevatten, dus vorm knooppunten in Aspose.Words kan blok-niveau knooppunten bevatten.

Vormen kunnen worden gegroepeerd in elkaar met behulp van GroupVormknopen.

{{% /alert %}}

{{% alert color="primary" %}}

Voetnoten en opmerkingen kunnen tekst bevatten, dus Voetnoot en commentaar knooppunten in Aspose.Words kan blok-niveau knooppunten bevatten.

{{% /alert %}}

## Tabel-, rij- en celknooppuntniveau

De tabel bestaat uit knooppunten van rijen en cellen. Tabelelementen worden weergegeven in de volgende klassen:

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) staat voor een tabelrij
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) staat voor een tabelcel
- Gestructureerddocument Tag representeert aangepaste markup

Het volgende diagram toont de knooppuntstructuren van de tabel, rij, en celniveaus.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>
