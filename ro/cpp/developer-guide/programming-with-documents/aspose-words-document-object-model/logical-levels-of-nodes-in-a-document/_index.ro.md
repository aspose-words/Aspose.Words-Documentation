---
title: Nivelurile logice ale nodurilor dintr-un Document în C++
second_title: Aspose.Words pentru C++
articleTitle: Nivelurile logice ale nodurilor dintr-un Document
linktitle: Nivelurile logice ale nodurilor dintr-un Document
type: docs
description: "În Aspose.Words pentru C++ documentația a menționat nivelurile logice ale nodurilor-nivel de bloc, nivel de linie sau nivel de rând. Nivelul nodului este folosit pentru a descrie locația din arborele documentului în care apare de obicei nodul."
weight: 10
url: /ro/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Această documentație se referă uneori la un grup de clase de noduri ca aparținând unui "nivel" dintr-un document, cum ar fi nodurile "la nivel de bloc", "la nivel de linie" (cunoscute și sub numele de "inline") sau "la nivel de rând". Aceste niveluri dintr-un document sunt diferențiate pur logic și nu sunt exprimate în mod explicit prin moștenire sau prin alte mijloace Aspose.Words DOM. Nivelul nodului este folosit pentru a descrie locul din arborele documentului unde ar apărea de obicei nodul.

În articolul precedent, am vorbit deja despre relația dintre noduri și faptul că nu toate nodurile au voie să fie un copil al oricăror noduri. De exemplu, celula poate fi doar un copil rând, și un rând poate fi doar un copil de masă, și așa mai departe. Aceste relații sunt aplicabile și pentru împărțirea logică a nodurilor în niveluri din document.

Următoarele secțiuni descriu nivelurile logice ale nodurilor din Aspose.Words și clasele care aparțin fiecărui nivel.

## Nivel logic de documente și secțiuni

Un document Word este format din una sau mai multe secțiuni, reprezentate de clasa [Section](https://reference.aspose.com/words/cpp/aspose.words/section) și separate prin pauze de secțiune. O secțiune poate defini propria dimensiune a paginii, marginile, orientarea, numărul de coloane de text și anteturile și subsolurile.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) și [Secțiune](https://www.aspose.com/api/words/cpp/aspose.words/section/) nodurile de nivel au structura așa cum se arată în diagrama următoare.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

O secțiune conține textul principal, precum și anteturile și subsolurile pentru prima, par și impar pagini. Aceste "fluxuri" diferite de text sunt numite *stories*.

În Aspose.Words, nodul **Section** conține nodurile de poveste [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) și [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). Obiectul **Body** stochează textul principal. Obiectele **HeaderFooter** stochează textul pentru fiecare antet și subsol. Textul oricărei povești constă din paragrafe și tabele, reprezentate respectiv de obiectele **Paragraph** și **Table** ale nivelului de bloc.

În plus, fiecare document Word poate conține un glosar, care este reprezentat de nodul [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) din Aspose.Words. Un document glosar conține intrări [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) și [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Nivel Logic Bloc

Nodurile la nivel de bloc reprezintă containere pentru conținut și controale de conținut și pot apărea în nodurile copil din arborele de documente din următoarele noduri:

- Corpul
- Antet
- Subsol
- Notă de subsol
- Comentariu
- Forma
- GroupShape
- Celulă
- StructuredDocumentTag

Nodurile la nivel de bloc sunt reprezentate de următoarele clase:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) și [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), care sunt cele mai importante noduri la nivel de bloc
- Marcaje, care apare atât la nivel de bloc, cât și la nivel de linie
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), care reprezintă marcaj personalizat și poate conține atât conținut, cât și controale de conținut

Următoarea diagramă prezintă elementele la nivel de bloc.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Nivel Logic În Linie

Nodurile la nivel de linie reprezintă conținutul real al documentului și pot fi conținute în următoarele containere:

- Paragraf – cel mai comun container
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Elementele la nivel de linie sunt reprezentate de următoarele clase:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - rulează text formatat diferit
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) și [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) reprezintă marcaje
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) și [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) reprezintă adnotări
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) și [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) care reprezintă caractere de câmp și [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) reprezintă câmpuri de cuvinte
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) reprezintă caractere speciale în document
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) și [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) reprezintă forme, desene, imagini etc.
- SmartTag și StructuredDocumentTag reprezintă marcaj personalizat

Următoarea diagramă prezintă structura nodurilor la nivel de linie.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Formele din Microsoft Word includ Office Art AutoShapes, casete de text, imagini, obiecte OLE și controale ActiveX, toate fiind reprezentate folosind clasa `Shape`. Unele forme pot conține și text, astfel încât nodurile de formă din Aspose.Words pot conține noduri la nivel de bloc.

Formele pot fi grupate una în interiorul celeilalte folosind noduri GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Notele de subsol și comentariile pot conține text, prin urmare nodurile de note de subsol și comentarii din Aspose.Words pot conține noduri la nivel de bloc.

{{% /alert %}}

## Tabel, rând și Nivel de nod celular

Tabelul este format din noduri de rânduri și celule. Elementele tabelului sunt reprezentate de următoarele clase:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) reprezintă un rând de tabel
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) reprezintă o celulă de tabel
- StructuredDocumentTag reprezintă marcaj personalizat

Următoarea diagramă prezintă structurile nodurilor nivelurilor tabelului, rândului și celulei.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
