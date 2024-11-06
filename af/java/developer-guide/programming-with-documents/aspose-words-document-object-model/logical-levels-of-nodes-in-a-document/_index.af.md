---
title: Logiese Vlakke Van Nodusse in'n Dokument in Java
second_title: Aspose.Words vir Java
articleTitle: Logiese Vlakke Van Nodusse in'n Dokument
linktitle: Logiese Vlakke Van Nodusse in'n Dokument
type: docs
description: "In Aspose.Words vir Java dokumentasie genoem logiese vlakke van nodes blok vlak, inline vlak, of ry vlak. Die knooppuntvlak word gebruik om die plek in die dokumentboom te beskryf waar die knoop tipies voorkom."
weight: 10
url: /af/java/logical-levels-of-nodes-in-a-document/
---

Hierdie dokumentasie verwys soms na'n groep van knoop klasse as wat behoort aan'n "vlak" in'n dokument, soos "blok-vlak", "inline-vlak" (ook bekend as "inline"), of "ry-vlak" nodes. Hierdie vlakke in'n dokument word suiwer logies gedifferensieer en word nie eksplisiet uitgedruk deur oorerwing of ander Aspose.Words DOM middele nie. Die knooppuntvlak word gebruik om die plek in die dokumentboom te beskryf waar die knoop tipies voorkom.

In die vorige artikel het ons reeds gepraat oor die verhouding tussen nodusse en die feit dat nie alle nodusse toegelaat word om'n kind van enige nodusse te wees nie. Byvoorbeeld, Sel kan net'n Ry kind wees, en'n Ry kan net'n Tafel kind wees, en so aan. Hierdie verhoudings is ook van toepassing op die logiese verdeling van nodusse in vlakke in die dokument.

Die volgende afdelings beskryf die logiese vlakke van nodes in Aspose.Words en die klasse wat aan elke vlak behoort.

## Dokument En Afdeling Logiese Vlak

'n Word-dokument bestaan uit een of meer afdelings, verteenwoordig deur die [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) klas en geskei deur afdelingsbreuke. 'n afdeling kan sy eie bladsy grootte, rande, oriëntasie, aantal teks kolomme, en koptekste en voetskrifte definieer.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) en [Afdeling](https://www.aspose.com/api/words/java/com.aspose.words/section) vlakknope het die struktuur soos in die volgende diagram getoon.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

'n afdeling bevat die hooftekst, sowel as kop-en voetskrifte vir die eerste, ewekansige en onewe bladsye. Hierdie verskillende" strome " van teks word *stories* genoem.

In Aspose.Words bevat die **Section** - knooppunt die [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) en [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) storie-knooppunte. Die **Body** voorwerp stoor die hoof teks. Die **HeaderFooter** voorwerpe stoor die teks vir elke kop en voetskrif. Die teks van enige storie bestaan uit paragrawe en tabelle, onderskeidelik verteenwoordig deur die **Paragraph** en **Table** voorwerpe van die Blokvlak.

Daarbenewens kan elke Word-dokument'n woordeboek bevat, wat deur die [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) - knooppunt in Aspose.Words voorgestel word. 'n glossaire dokument bevat [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), en [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) inskrywings.

**GlossaryDocument**

## Blok Logiese Vlak

Blok-vlak nodes verteenwoordig houers vir inhoud en inhoud kontroles, en kan voorkom in die dokument boom kind nodes in die volgende nodes:

- Liggaam
- Kop
- Voetskrif
- Voetnoot
- Kommentaar
- Vorm
- GroupShape
- Sel
- StructuredDocumentTag

Blokvlak-knope word verteenwoordig deur die volgende klasse:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) en [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), wat die belangrikste blokvlak-knope is
- Boekmerke, wat voorkom beide op die blok-vlak en op die inline-vlak
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), wat persoonlike opmerkings verteenwoordig en kan beide inhoud en inhoud beheer bevat

Die volgende diagram toon die blokvlak elemente.

<img src="block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Inlyn Logiese Vlak

Inline-vlak nodes verteenwoordig die werklike inhoud van die dokument en kan in die volgende houers vervat word:

- Paragraaf - die mees algemene houer
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

Inline-vlak elemente word verteenwoordig deur die volgende klasse:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - loop van teks geformateer anders
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) en [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) verteenwoordig boekmerke
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) en [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) verteenwoordig annotasies
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) wat veld karakters verteenwoordig, en [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) verteenwoordig Woord velde
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) verteenwoordig spesiale karakters in die dokument
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) en [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) verteenwoordig vorms, tekeninge, beelde, ens.
- SmartTag en StructuredDocumentTag verteenwoordig persoonlike opmerkings

Die volgende diagram toon die inline-vlak nodes struktuur.

<img src="inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Vorms in Microsoft Word sluit Kantoor Kuns AutoShapes, teks bokse, beelde, OLE voorwerpe, en ActiveX kontroles, wat almal verteenwoordig word met behulp van die `Shape` klas. Sommige vorms kan ook teks bevat, dus Vormknope in Aspose.Words kan blokvlakknope bevat.

Vorms kan binne mekaar gegroepeer word met behulp van GroupShape nodusse.

{{% /alert %}}

{{% alert color="primary" %}}

Voetnotas en kommentaar kan teks bevat, daarom Kan Voetnoot-en Kommentaarknope in Aspose.Words blokvlakknope bevat.

{{% /alert %}}

## Tabel, Ry En Selknooppuntvlak

Die tabel bestaan uit nodusse van rye en selle. Tabel elemente word verteenwoordig deur die volgende klasse:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) verteenwoordig'n tabel ry
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) verteenwoordig'n tabel sel
- StructuredDocumentTag verteenwoordig pasgemaakte opmerkings

Die volgende diagram toon die knoopstrukture van die Tabel, Ry en Selvlakke.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
