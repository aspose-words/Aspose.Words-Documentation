---
title: Nivelurile logice ale nodurilor dintr-un Document
second_title: Aspose.Words pentru Python via .NET
articleTitle: Nivelurile logice ale nodurilor dintr-un Document
linktitle: Nivelurile logice ale nodurilor dintr-un Document
type: docs
description: "În Aspose.Words pentru Python via .NET documentația a menționat nivelurile logice ale nodurilor-nivel de bloc, nivel de linie sau nivel de rând. Nivelul nodului este folosit pentru a descrie locația din arborele documentului în care apare de obicei nodul."
weight: 10
url: /ro/python-net/logical-levels-of-nodes-in-a-document/
---

Această documentație se referă uneori la un grup de clase de noduri ca aparținând unui "nivel" dintr-un document, cum ar fi nodurile "la nivel de bloc", "la nivel de linie" (cunoscute și sub numele de "inline") sau "la nivel de rând". Aceste niveluri dintr-un document sunt diferențiate pur logic și nu sunt exprimate în mod explicit prin moștenire sau prin alte mijloace Aspose.Words DOM. Nivelul nodului este folosit pentru a descrie locul din arborele documentului unde ar apărea de obicei nodul.

În articolul precedent, am vorbit deja despre relația dintre noduri și faptul că nu toate nodurile au voie să fie un copil al oricăror noduri. De exemplu, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) poate fi doar un copil [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), iar un [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) poate fi doar un copil [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) și așa mai departe. Aceste relații sunt aplicabile și pentru împărțirea logică a nodurilor în niveluri din document.

Următoarele secțiuni descriu nivelurile logice ale nodurilor din Aspose.Words și clasele care aparțin fiecărui nivel.

## Nivel logic de documente și secțiuni

Un document Word este format din una sau mai multe secțiuni, reprezentate de clasa [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) și separate prin pauze de secțiune. O secțiune poate defini propria dimensiune a paginii, marginile, orientarea, numărul de coloane de text și anteturile și subsolurile.

Nodurile de nivel [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) și [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) au structura așa cum se arată în diagrama următoare.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

O secțiune conține textul principal, precum și anteturile și subsolurile pentru prima, par și impar pagini. Aceste "fluxuri" diferite de text sunt numite *stories*.

În Aspose.Words, nodul [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) conține nodurile de poveste [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) și [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). Obiectul [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) stochează textul principal. Obiectele [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) stochează textul pentru fiecare antet și subsol. Textul oricărei povești constă din paragrafe și tabele, reprezentate respectiv de obiectele [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) și [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ale nivelului de bloc.

În plus, fiecare document Word poate conține un glosar, care este reprezentat de nodul [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) din Aspose.Words. Un document glosar conține intrări [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) și [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) include [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) noduri reprezentând diferite tipuri de intrări de documente din glosar. Fiecare [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) conține secțiuni care pot fi inserate, eliminate și copiate în documente.

## Nivel Logic Bloc

Nodurile la nivel de bloc reprezintă containere pentru conținut și controale de conținut și pot apărea în nodurile copil din arborele de documente din următoarele noduri:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Nodurile la nivel de bloc sunt reprezentate de următoarele clase:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) și [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), care sunt cele mai importante noduri la nivel de bloc
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), care apare atât la nivel de bloc, cât și la nivel de linie
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), care reprezintă marcaj personalizat și poate conține atât conținut, cât și controale de conținut

Următoarea diagramă prezintă elemente la nivel de bloc.

<img src="block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Nivel Logic În Linie

Nodurile la nivel de linie reprezintă conținutul real al documentului și pot fi conținute în următoarele containere:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) - cel mai comun container
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Elementele la nivel de linie sunt reprezentate de următoarele clase:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) - rulează text formatat diferit
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) și [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) reprezintă marcaje
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) și [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) reprezintă adnotări
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) și [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) care reprezintă caractere de câmp și [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) reprezintă câmpuri de cuvinte
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) reprezintă caractere speciale în document
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) și [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) reprezintă forme, desene, imagini etc.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) și [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) reprezintă marcaj personalizat

Următoarea diagramă prezintă structura nodurilor la nivel de linie.

<img src="inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Formele din Microsoft Word includ Office Art AutoShapes, casete de text, imagini, obiecte OLE și controale ActiveX, toate fiind reprezentate folosind clasa `Shape`. Unele forme pot conține și text, astfel încât nodurile de formă din Aspose.Words pot conține noduri la nivel de bloc.

Formele pot fi grupate una în interiorul celeilalte folosind noduri [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Notele de subsol și comentariile pot conține text, prin urmare nodurile [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) și [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) din Aspose.Words pot conține noduri la nivel de bloc.

{{% /alert %}}

## Tabel, rând și Nivel de nod celular

Tabelul este format din noduri de rânduri și celule. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) elementele sunt reprezentate de următoarele clase:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) reprezintă un rând de tabel
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) reprezintă o celulă de tabel
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) reprezintă marcaj personalizat

Următoarea diagramă prezintă structurile nodurilor nivelurilor [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) și [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>