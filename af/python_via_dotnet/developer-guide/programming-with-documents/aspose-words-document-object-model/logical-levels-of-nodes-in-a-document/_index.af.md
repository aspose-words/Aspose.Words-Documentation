---
title: Logiese Vlakke Van Nodusse in'n Dokument
second_title: Aspose.Words vir Python via .NET
articleTitle: Logiese Vlakke Van Nodusse in'n Dokument
linktitle: Logiese Vlakke Van Nodusse in'n Dokument
type: docs
description: "In Aspose.Words vir Python via .NET dokumentasie genoem logiese vlakke van nodes blok vlak, inline vlak, of ry vlak. Die knooppuntvlak word gebruik om die plek in die dokumentboom te beskryf waar die knoop tipies voorkom."
weight: 10
url: /af/python-net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Hierdie dokumentasie verwys soms na'n groep van knoop klasse as wat behoort aan'n "vlak" in'n dokument, soos "blok-vlak", "inline-vlak" (ook bekend as "inline"), of "ry-vlak" nodes. Hierdie vlakke in'n dokument word suiwer logies gedifferensieer en word nie eksplisiet uitgedruk deur oorerwing of ander Aspose.Words DOM middele nie. Die knooppuntvlak word gebruik om die plek in die dokumentboom te beskryf waar die knoop tipies voorkom.

In die vorige artikel het ons reeds gepraat oor die verhouding tussen nodusse en die feit dat nie alle nodusse toegelaat word om'n kind van enige nodusse te wees nie. Byvoorbeeld, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) kan net'n [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) kind wees, en'n [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) kan net'n [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) kind wees, en so aan. Hierdie verhoudings is ook van toepassing op logiese verdeling van nodusse in vlakke in die dokument.

Die volgende afdelings beskryf die logiese vlakke van nodes in Aspose.Words en die klasse wat aan elke vlak behoort.

## Dokument En Afdeling Logiese Vlak

'n Word-dokument bestaan uit een of meer afdelings, verteenwoordig deur die [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) klas en geskei deur afdelingsbreuke. 'n afdeling kan sy eie bladsy grootte, rande, oriëntasie, aantal teks kolomme, en koptekste en voetskrifte definieer.

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) en [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) vlak nodes het die struktuur soos in die volgende diagram getoon.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

'n afdeling bevat die hooftekst, sowel as kop-en voetskrifte vir die eerste, ewekansige en onewe bladsye. Hierdie verskillende" strome " van teks word *stories* genoem.

In Aspose.Words bevat die [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) - knooppunt die [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) en [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) storie-knooppunte. Die [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) voorwerp stoor die hoof teks. Die [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) voorwerpe stoor die teks vir elke kop en voetskrif. Die teks van enige storie bestaan uit paragrawe en tabelle, onderskeidelik verteenwoordig deur die [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) en [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) voorwerpe van die Blokvlak.

Daarbenewens kan elke Word-dokument'n woordeboek bevat, wat deur die [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) - knooppunt in Aspose.Words voorgestel word. 'n glossaire dokument bevat [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text), en [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) inskrywings.

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) sluit [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) nodes wat verskillende tipes van glossary dokument inskrywings. Elke [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) bevat afdelings wat in dokumente ingevoeg, verwyder en gekopieer kan word.

## Blok Logiese Vlak

Blok-vlak nodes verteenwoordig houers vir inhoud en inhoud kontroles, en kan voorkom in die dokument boom kind nodes in die volgende nodes:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Blokvlak-knope word verteenwoordig deur die volgende klasse:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) en [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), wat die belangrikste blokvlak-knope is
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), wat voorkom beide op die blok-vlak en op die inline-vlak
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), wat persoonlike opmerkings verteenwoordig en kan beide inhoud en inhoud beheer bevat

Die volgende diagram toon blokvlak elemente.

<img src="block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Inlyn Logiese Vlak

Inline-vlak nodes verteenwoordig die werklike inhoud van die dokument en kan in die volgende houers vervat word:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) - die mees algemene houer
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Inline-vlak elemente word verteenwoordig deur die volgende klasse:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) - loop van teks geformateer anders
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) verteenwoordig boekmerke
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) en [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) verteenwoordig annotasies
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) wat veld karakters verteenwoordig, en [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) verteenwoordig Woord velde
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) verteenwoordig spesiale karakters in die dokument
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) en [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) verteenwoordig vorms, tekeninge, beelde, ens.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) en [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) verteenwoordig persoonlike opmerkings

Die volgende diagram toon die inline-vlak nodes struktuur.

<img src="inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Vorms in Microsoft Word sluit Kantoor Kuns AutoShapes, teks bokse, beelde, OLE voorwerpe, en ActiveX kontroles, wat almal verteenwoordig word met behulp van die `Shape` klas. Sommige vorms kan ook teks bevat, dus Vormknope in Aspose.Words kan blokvlakknope bevat.

Vorms kan binne mekaar gegroepeer word met behulp van [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) nodusse.

{{% /alert %}}

{{% alert color="primary" %}}

Voetnotas en kommentaar kan teks bevat, daarom kan [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) en [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) nodes in Aspose.Words blokvlak nodes bevat.

{{% /alert %}}

## Tabel, Ry En Selknooppuntvlak

Die tabel bestaan uit nodusse van rye en selle. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) elemente word verteenwoordig deur die volgende klasse:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) verteenwoordig'n tabel ry
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) verteenwoordig'n tabel sel
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) verteenwoordig pasgemaakte opmerkings

Die volgende diagram toon die knoopstrukture van die [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), en [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) vlakke.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>
