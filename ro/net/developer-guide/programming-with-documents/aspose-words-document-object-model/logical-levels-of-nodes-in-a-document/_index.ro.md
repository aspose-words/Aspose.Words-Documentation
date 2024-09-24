---
title: Niveluri logice ale nodurilor într-un document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Niveluri logice ale nodurilor într-un document
linktitle: Niveluri logice ale nodurilor într-un document
type: docs
description: "În Aspose.Words pentru documentația .NET a menționat niveluri logice ale nodurilor – nivel bloc, nivel în linie sau nivel rând folosind C#. Nivelul nodului este utilizat pentru a descrie locația în arborele de documente unde nodul apare în mod tipic."
weight: 10
url: /ro/net/logical-levels-of-nodes-in-a-document/
---

Această documentație se referă uneori la un grup de clase de noduri ca aparținând unei "niveluri" într-un document, cum ar fi "blocare nivel", "nivel în linie" (de asemenea cunoscut sub numele de "în linie") sau "rândul nivelului". Aceste niveluri într-un document sunt diferențiate pur logic și nu sunt exprimate în mod explicit prin moștenire sau alte Aspose.Words DOM mijloace. Nivelul nodului se foloseşte pentru a descrie locul din arborele de documente unde ar apărea în mod tipic nodul.

În articolul precedent am discutat deja despre relaţia dintre noduri şi faptul că nu toate nodurile sunt permise să fie copil al oricărui nod. De exemplu, o celulă poate fi doar un copil de rând, iar un rând poate fi doar un copil de tabel și așa mai departe. "Aceste relații sunt aplicabile și pentru divizarea logică a nodurilor în niveluri în cadrul documentului."

Secțiunile următoare descriu nivelurile logice ale nodurilor în Aspose.Words și clasele care aparțin fiecărui nivel.

## Nivelul logic al documentului și secțiunii

Un document Word constă dintr-una sau mai multe secţiuni, reprezentate de clasa [Section](https://reference.aspose.com/words/net/aspose.words/section/) şi separate prin întreruperi de secţiune. O secțiune poate defini propria dimensiune a paginii, marginile, orientarea, numărul de coloane de text și anteturi și subsoluri.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) și [Section](https://reference.aspose.com/words/net/aspose.words/section/) noduri de nivel au structura așa cum se arată în diagrama următoare.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words" style="width:700px"/>

O secțiune conține textul principal, precum și anteturi și subsoluri pentru prima, a doua și a treia pagini. Aceste diferite "fluxuri" de text sunt numite *stories*.

În Aspose.Words, nodul **Section** conține nodurile de poveste [Body](https://reference.aspose.com/words/net/aspose.words/body/) și [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/). Obiectul **Body** stochează textul principal. Cele **HeaderFooter** obiecte stochează textul pentru fiecare antet și subsol. Textul fiecărei povești constă din paragrafe și tabele, respectiv reprezentate de obiectele **Paragraph** și **Table** ale clasei "Block-level.

În plus, fiecare document Word poate conține un glosar, care este reprezentat de [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) nod în Aspose.Words. Un document de glosar conține [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) și [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) intrări.

**GlossaryDocument** include [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) noduri reprezentând diferite tipuri de intrări în dicționar. Fiecare **BuildingBlock** conține secțiuni care pot fi inserate, eliminate și copiate în documente.

## Nivel logic al blocului

"nodurile de nivel bloc reprezintă containere pentru conținut și controale de conținut și pot apărea în nodurile copil ale arborelui de documente în următoarele noduri:"

- Corpul
- antet
- Footer
- Nota de subsol
- Comentariu
- Forma
- GroupShape
- Celulă
- StructuredDocumentTag

Nodele de nivel bloc sunt reprezentate de următoarele clase:

- [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) și [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/), care sunt nodurile de nivel bloc cele mai importante
- Bookmarkuri, care apar atât la nivel de bloc cât și la nivel inline
- [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/), care reprezintă marcaje personalizate și pot conține atât conținut, cât și controale de conținut

Diagrama de mai jos prezintă elementele la nivel de bloc.

<img src="block-level.png" alt="block-level-aspose-words" style="width:550px"/>

## Nivel logic inlinat

Node-urile în linie reprezintă conținutul efectiv al documentului și pot fi conținute în următoarele containere:

- Paragraful – cel mai comun recipient
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Elementele inline sunt reprezentate de următoarele clase:

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) – repetiții de text formatate diferit
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) și [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/) reprezintă marcaje
– [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) și [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/) reprezintă anotații
- [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) și [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) care reprezintă caracterele de câmp, și [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) reprezintă câmpurile de cuvânt
"- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/) reprezintă caracterele speciale în document"
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) și [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) reprezintă forme, desene, imagini, etc.
- SmartTag și StructuredDocumentTag reprezintă marcaj personalizat

Diagrama de mai jos arată structura nodurilor în linie.

<img src="inline-level.png" alt="inline-level-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Formele din Microsoft Word includ Artea de birou AutoShape, cutii de text, imagini, obiecte OLE și controale ActiveX, toate reprezentate folosind clasa `Shape`. Unele forme pot conține și text, astfel încât nodurile de "Shape" din Aspose.Words pot conține noduri de nivel bloc.

Formele pot fi grupate unele în interiorul altora folosind GroupShape noduri.

{{% /alert %}}

{{% alert color="primary" %}}

Note de subsol și comentariile pot conține text, prin urmare nodurile Footnote și Comment în Aspose.Words pot conține noduri cu blocuri de nivel.

{{% /alert %}}

## Nivelul nodului Tabel, Rând și Celulă

Masa este alcătuită din noduri de rând și celule. Elementele tabelelor sunt reprezentate de următoarele clase:

"- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) reprezintă un rând de tabel"
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) reprezintă o celulă de tabelă
- StructuredDocumentTag reprezintă marcaj personalizat

Diagrama de mai jos prezintă structura nodurilor pentru nivelurile Tabel, Rând și Celulă.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words" style="width:910px"/>
