---
title: Navigare cu Cursor în C#
second_title: Aspose.Words pentru .NET
articleTitle: Navigare cu cursorul mouse-ului
linktitle: Navigare cu cursorul mouse-ului
description: "Navigaţi între noduri diferite în cadrul unui document, cum ar fi un paragraf, o marcă de carte sau un caracter specific folosind C#."
type: docs
weight: 10
url: /ro/net/navigation-with-cursor/
---

Când lucrezi cu un document, chiar dacă este scurt sau lung, va trebui să navighezi prin documentul tău. Navigarea cu un cursor virtual reprezintă capacitatea de a naviga între noduri diferite dintr-un document.

În cadrul unui document scurt, navigarea este simplă deoarece poți muta punctul de inserare și prin intermediul tastelor săgeată ale tastaturii sau făcând clic cu butonul mouse-ului pentru a plasa punctul de inserare oriunde dorești. Dar odată ce ai un document mare care are multe pagini, aceste tehnici de bază vor fi insuficiente.

Acest articol explică modul în care se poate deplasa într-un document și naviga cu un cursor virtual către diferite părți ale acestuia.

## Detectarea poziţiei cursorului curent

Înainte de a începe procesul de navigare prin documentul dvs., va trebui să obțineți nodul care este selectat în prezent. Poți obține poziția exactă a cursorului la un nod selectat folosind proprietatea [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). În plus, în loc să obții nodul curent, poți obține paragraful selectat sau secțiunea selectată folosind proprietățile [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) și [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/).

"Orice operații de inserare pe care le efectuați folosind [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) vor fi introduse înaintea [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/)". Când paragraf actual este gol sau cursorul este poziționat chiar înainte de sfârşitul paragrafului, **CurrentNode** returnează null.

## Metodele de navigare într-un document

Când editezi un text, este important să știi cum să navighezi prin document și unde exact să te deplasezi. Aspose.Words îți permite să te deplasezi în cadrul unui document și să navighezi către diferitele secțiuni și părți ale acestuia – acest lucru asemănător funcționalității panoului de navigare din Microsoft Word pentru a ajunge la o pagină sau o antet dintr-un document Word fără a derula.

Metoda principală este să poți muta poziția cursorului la un anumit nod din documentul tău; poți realiza acest lucru folosind metoda [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/).

Exemplul următor de cod arată cum să mutați **DocumentBuilder** la noduri diferite într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Dar, pe lângă metoda de bază **MoveTo**, există metode mai specifice.

### Navigați la începutul sau sfârșitul unui document

Puteți să mergeți la începutul sau sfârșitul documentului dvs. folosind [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) și [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) metodele.

Exemplul următor de cod arată cum să mute poziția cursorului la începutul sau sfârșitul unui document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Navighează cu Marcaje

Poţi marca un loc pe care vrei să-l găseşti şi te poţi deplasa cu uşurinţă către el din nou. Puteți insera în documentul dumneavoastră atâtea semnale de carte cât doriți și apoi să navigați prin ele identificându-le pe cele cu nume unice. Puteți muta la un marcaj folosind metoda [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

Următorul exemplu de cod arată cum se mută poziția cursorului către un bookmark:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Navighează la celule de tabelă

Poţi să te muţi într-o celulă de tabel folosind [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) metoda. Această metodă va permite să navigați cursorul către orice celulă într-o anumită tabelă. "În plus, puteți specifica un indice pentru a muta cursorul la orice poziție sau la un caracter specific într-o celulă în metoda **MoveToCell**."

Exemplul de cod următor arată cum să se mute poziția cursorului într-o anumită celulă de tabelă:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Navigare către un câmp

Puteți să vă mutați către un anumit câmp în documentul dvs. folosind metoda [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). În plus, poți să te muți la un câmp specific prin folosirea metodei [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

Exemplul următor de cod arată cum să mutați cursorul constructorului de documente către un câmp specific:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Navigaţi către un antet sau subsol

Puteți să vă mutați la începutul unui antet sau subsol folosind [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) metoda

Exemplul de cod următor arată cum se deplasează cursorul constructorului de documente la un antet sau subsol de document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Navighează către o secțiune sau un paragraf

Puteți să treceți la o secțiune sau paragraf specific folosind [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) sau [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) metode. În plus, poți specifica un index pentru a muta cursorul la orice poziție sau un caracter specific într-un paragraf folosind metoda **MoveToParagraph**.

Exemplul următor de cod arată cum să se meargă la o secțiune și un paragraf specific într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
