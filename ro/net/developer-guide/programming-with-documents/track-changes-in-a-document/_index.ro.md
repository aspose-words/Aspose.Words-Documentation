---
title: Urmărire modificări într-un document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Urmărește modificările într-un document
linktitle: Urmărește modificările într-un document
description: "Urmăriți modificările de conținut și formatare efectuate de tine sau de alții folosind C#. Accesați reviziile individuale dintr-un document și aplicați diverse proprietăți la ele."
type: docs
weight: 270
url: /ro/net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Funcționalitatea "track changes", numită și "reviewing", îți permite să urmărești modificările de conținut și formatare efectuate de tine sau alți utilizatori. Această caracteristică Track Changes cu Aspose.Words acceptă modificări de urmărire în Microsoft Word. Cu această funcționalitate, puteți accesa versiuni individuale ale documentului dvs. și aplica diferite proprietăți pentru ele.

Când activezi caracteristica modificărilor de urmărire, toate elementele introduse, șterse și modificate din document vor fi evidențiate vizual cu informații despre cine, când și ce a fost schimbat. Obiectele care duc informația despre ce a fost schimbat sunt numite "urmărire modificări". De exemplu, presupun că vrei să verifici un document și să faci modificări importante - acest lucru poate însemna că trebuie să faci revizii. De asemenea, ai putea avea nevoie să inserezi comentarii pentru a discuta unele schimbări. Asta e locul unde intervine urmărirea modificărilor în documente.

Acest articol explică modul de gestionare și urmărire a modificărilor introduse de mulți evaluatori în același document, precum și proprietățile pentru urmărirea modificărilor.

{{% alert color="primary" %}}

Observaţi că funcția de comentariu în Aspose.Words, precum și în Microsoft Word poate fi asociată cu urmărirea schimbărilor. Cu toate acestea, amintiți-vă că comentariile sunt complet independente de modificările de urmărire.

{{% /alert %}}

## Ce este o revizuire

Înainte de a ne scufunda în revizuiri, să explicăm sensul revizuirilor. O [revision](https://reference.aspose.com/words/net/aspose.words/revision/) este o modificare care apare într-un nod al unui document în timp ce un grup de revizuire, reprezentat de clasa [RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/), este un grup de revizuiri consecutive care apar în multe noduri ale unui document. În esență, revizia este o unealtă pentru urmărirea schimbărilor.

Revizuiri sunt utilizate în caracteristica de urmărire a modificărilor și în caracteristica de comparare a documentelor, unde revizuirile apar ca rezultat al unei comparații. Așadar, revizuirile din caracteristica schimbărilor de urmărire arată cine și ce a fost schimbat.

{{% alert color="primary" %}}

Notă că Microsoft Word nu vă permite să vizualizați reviziuni individuale, permite doar să vizualizați revizuiri secvențiale ca o singură entitate. Dar Aspose.Words rezolvă această limitare cu clasa **RevisionGroup**.

{{% /alert %}}

Aspose.Words acceptă tipuri diferite de revizuire, precum și în Microsoft Word, cum ar fi Inserare, Ștergere, FormatChange, StyleDefinitionChange și Mutare. Toate tipurile de revizuire sunt reprezentate cu enumerarea [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

"Notă că reviziile au un rezultat similar cu Microsoft Word, dar Aspose.Words nu detectează formatarea în timpul modificărilor de urmărire."

{{% /alert %}}

## Start and Stop Tracking Changes

"Editarea unui document de obicei nu se calculează ca o revizuire până când nu începeți să-l urmăriți. Aspose.Words vă permite să urmăriți automat toate modificările din documentul dvs. cu pași simpli." "Puteți începe cu ușurință procesul de urmărire a modificărilor folosind metoda [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/)." Dacă ai nevoie să oprești procesul de urmărire a schimbărilor astfel încât orice editări viitoare să nu fie luate în considerare ca revizuiri, va trebui să folosești metoda [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Notă că metoda `StartTrackingRevisions` nu schimbă statutul proprietății [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) și nu folosește valoarea sa pentru urmărirea revizuirii. În plus, dacă un nod a fost mutat dintr-o locație în alta din cadrul documentului urmărit, atunci vor fi create revizuiri, inclusiv o gamă de mutare de la și la mutare.

{{% /alert %}}

La sfârșitul procesului de urmărire a modificărilor în documentul tău vei avea capacitatea de a chiar accepta toate reviziile sau de a le respinge pentru a reveni la forma originală a documentului. Acest lucru poate fi realizat fie folosind metoda [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) sau metoda [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/). În plus, puteți să acceptați sau să respingeți fiecare revizuire separat folosind [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) sau [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/) metodă.

Toate modificările vor fi urmărite pentru o singură iterație din momentul în care începi procesul până la momentul în care îl oprești. "Conexiunea dintre diferitele iterări este reprezentată ca scenariul următor: termini urmărirea procesului, faci niște modificări și începi din nou urmărirea schimbărilor." Cu acest scenariu, toate schimbările pe care nu le-ați acceptat sau respins vor fi afișate din nou.

{{% alert color="primary" %}}

Rețineți că metoda `AcceptAllRevisions` este similară cu "Acceptaţi toate modificările" în Microsoft Word.

{{% /alert %}}

Exemplul următor de cod arată cum să lucrezi cu modificări de urmărire:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Exemplul de cod următor arată cum sunt generate reviziile atunci când un nod este mutat într-un document urmărit

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Gestionați și stocați modificările ca reviziuni

Cu caracteristica anterioară de urmărire a modificărilor, puteți înțelege care au fost modificările efectuate în documentul dumneavoastră și cine a făcut acele modificări. În timp ce cu caracteristica [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/), veți forța orice modificări în documentul dumneavoastră să fie stocate ca revizuiri.

Aspose.Words îți permite să verifici dacă un document are o revizuire sau nu folosind proprietatea [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/). Dacă nu trebuie să urmăreşti automat modificările în documentul tău prin metodele StartTrackRevisions şi StopTrackRevisions, atunci poţi folosi proprietatea `TrackRevisions` pentru a verifica dacă modificările sunt urmărite în timp ce editezi un document în Microsoft Word şi stocate ca reviziuni.

Caracteristica `TrackRevisions` face revizii în loc de modificări reale DOM. Dar reviziile în sine sunt separate. De exemplu, dacă ștergeți orice paragraf, Aspose.Words faceți-l ca o revizuire marcându-l ca ștergere, în loc să îl ștergeți.

În plus, Aspose.Words îți permite să verifici dacă un obiect a fost inserat, șters sau formatat folosind proprietățile [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/) și [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/).

{{% alert color="primary" %}}

Notă că nu există nicio legătură între revizuirile în sine și proprietatea `TrackRevisions`. În plus, puteți accepta/respinge modificări indiferent de caracteristica de urmărire a modificărilor.

{{% /alert %}}

Exemplul următor de cod arată cum să aplici diferite proprietăți cu reviziuni:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
