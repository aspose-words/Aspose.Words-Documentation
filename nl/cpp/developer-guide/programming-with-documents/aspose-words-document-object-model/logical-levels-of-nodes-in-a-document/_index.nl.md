---
title: Logische niveaus van knooppunten in een Document in C++
second_title: Aspose.Words voor C++
articleTitle: Logische niveaus van knooppunten in een Document
linktitle: Logische niveaus van knooppunten in een Document
type: docs
description: "In Aspose.Words voor C++ documentatie vermeld logische niveaus van knooppunten – blokniveau, inline niveau of rijniveau. Het knoopniveau wordt gebruikt om de locatie in de documentboom te beschrijven waar de knoop meestal voorkomt."
weight: 10
url: /nl/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Deze documentatie verwijst soms naar een groep knoopklassen als behorend tot een "niveau" in een document, zoals "blokniveau", "inline-niveau" (ook bekend als "inline") of "rijniveau" knooppunten. Deze niveaus in een document worden puur logisch gedifferentieerd en worden niet expliciet uitgedrukt door erfelijkheid of andere Aspose.Words DOM middelen. Het knoopniveau wordt gebruikt om de plaats in de documentboom te beschrijven waar de knoop meestal voorkomt.

In het vorige artikel hebben we het al gehad over de relatie tussen nodes en het feit dat niet alle nodes een kind van nodes mogen zijn. Een cel kan bijvoorbeeld alleen een rijkind zijn en een Rij kan alleen een Tabelkind zijn, enzovoort. Deze relaties zijn ook van toepassing op de logische verdeling van knooppunten in niveaus in het document.

De volgende secties beschrijven de logische niveaus van knooppunten in Aspose.Words en de klassen die tot elk niveau behoren.

## Document en sectie logisch niveau

Een Word document bestaat uit een of meer secties, vertegenwoordigd door de [Section](https://reference.aspose.com/words/cpp/aspose.words/section) klasse en gescheiden door sectie-einden. Een sectie kan zijn eigen paginaformaat, marges, oriëntatie, aantal tekstkolommen en kop-en voetteksten definiëren.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) en [Sectie](https://www.aspose.com/api/words/cpp/aspose.words/section/) de niveauknooppunten hebben de structuur zoals in het volgende diagram wordt weergegeven.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Een sectie bevat de hoofdtekst, evenals kop-en voetteksten voor de eerste, even en oneven pagina ' s. Deze verschillende" stromen " van tekst worden *stories* genoemd.

In Aspose.Words bevat de **Section** knoop de [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) en [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) verhaalknooppunten. Het **Body** object slaat de hoofdtekst op. De **HeaderFooter** objecten slaan de tekst op voor elke kop-en voettekst. De tekst van elk verhaal bestaat uit alinea ' s en tabellen, respectievelijk weergegeven door de **Paragraph** en **Table** objecten van het blokniveau.

Bovendien kan elk Word document een woordenlijst bevatten, die wordt weergegeven door het [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) knooppunt in Aspose.Words. Een woordenlijstdocument bevat [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) en [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) vermeldingen.

**GlossaryDocument**

## Blok Logisch Niveau

Knooppunten op blokniveau vertegenwoordigen containers voor inhoud en inhoudsbesturingselementen en kunnen voorkomen in de onderliggende knooppunten van de documentboom in de volgende knooppunten:

- Lichaam
- Header
- Voettekst
- Voetnoot
- Reactie
- Vorm
- GroupShape
- Cel
- StructuredDocumentTag

De knooppunten op blokniveau worden weergegeven door de volgende klassen::

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) en [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), die de belangrijkste knooppunten op blokniveau zijn
- Bladwijzers, die zowel op blokniveau als op inline-niveau voorkomen
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), die aangepaste opmaak vertegenwoordigen en zowel inhoud als inhoudsbesturingselementen kunnen bevatten

Het volgende diagram toont de elementen op blokniveau.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Inline Logisch Niveau

Inline-Level nodes vertegenwoordigen de werkelijke inhoud van het document en kunnen in de volgende containers worden opgenomen:

- Paragraaf - de meest voorkomende container
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Inline-Level elementen worden weergegeven door de volgende klassen:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - tekst wordt anders opgemaakt
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) vertegenwoordigen bladwijzers
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) en [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) vertegenwoordigen annotaties
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) die veldtekens vertegenwoordigen, en [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) Word velden vertegenwoordigen
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) vertegenwoordigt speciale tekens in het document
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) en [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) vertegenwoordigen vormen, tekeningen, afbeeldingen, enz.
- SmartTag en StructuredDocumentTag vertegenwoordigen aangepaste opmaak

Het volgende diagram toont de structuur van de knooppunten op inline-niveau.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Vormen in Microsoft Word omvatten Office Art AutoShapes, tekstvakken, afbeeldingen, OLE - objecten en ActiveX-besturingselementen, die allemaal worden weergegeven met de klasse `Shape`. Sommige vormen kunnen ook tekst bevatten, dus vormknooppunten in Aspose.Words kunnen knooppunten op blokniveau bevatten.

Vormen kunnen in elkaar worden gegroepeerd met behulp van GroupShape - knooppunten.

{{% /alert %}}

{{% alert color="primary" %}}

Voetnoten en opmerkingen kunnen tekst bevatten, daarom kunnen voetnoot-en Commentaarknooppunten in Aspose.Words knooppunten op blokniveau bevatten.

{{% /alert %}}

## Tabel -, rij-en Celknoopniveau

De tabel bestaat uit knooppunten van rijen en cellen. De tabelelementen worden weergegeven door de volgende klassen::

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) vertegenwoordigt een tabelrij
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) vertegenwoordigt een tabelcel
- StructuredDocumentTag aangepaste opmaak weergeven

Het volgende diagram toont de knoopstructuren van de tabel -, rij-en celniveaus.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
