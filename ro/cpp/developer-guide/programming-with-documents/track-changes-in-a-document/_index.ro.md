---
title: Urmăriți modificările dintr-un Document în C++
second_title: Aspose.Words pentru C++
articleTitle: Urmăriți modificările dintr-un Document
linktitle: Urmăriți modificările dintr-un Document
description: "Urmăriți modificările aduse conținutului și formatării făcute de dvs. sau de alții folosind C++. Accesați revizuirile individuale dintr-un document și aplicați-le diverse proprietăți."
type: docs
weight: 270
url: /ro/cpp/track-changes-in-a-document/
---

Funcționalitatea urmăriți modificările, cunoscută și sub numele de revizuire, vă permite să urmăriți modificările aduse conținutului și formatării făcute de dvs. sau de alți utilizatori. Această funcție de modificare a piesei cu Aspose.Words acceptă modificări ale piesei în Microsoft Word. Cu această funcționalitate, puteți accesa revizuiri individuale în documentul dvs. și le puteți aplica proprietăți diferite.

Când activați funcția modificări urmărire, toate elementele inserate, șterse și modificate ale documentului vor fi evidențiate vizual cu informații despre cine, când și ce a fost modificat. Obiectele care poartă informații despre ceea ce a fost schimbat se numesc "modificări de urmărire". De exemplu, presupuneți că doriți să examinați un document și să faceți modificări importante – Acest lucru poate însemna că trebuie să faceți revizuiri. De asemenea, poate fi necesar să introduceți comentarii pentru a discuta unele dintre modificări. Aici intervin modificările de urmărire a documentelor.

Acest articol explică modul de gestionare și urmărire a modificărilor create de mulți recenzenți pe același document, precum și proprietățile pentru urmărirea modificărilor.

{{% alert color="primary" %}}

Rețineți că funcția de comentariu din Aspose.Words, precum și din Microsoft Word, poate fi asociată cu urmărirea modificărilor. Cu toate acestea, rețineți că comentariile sunt complet independente de urmărirea modificărilor.

{{% /alert %}}

## Ce este o revizuire

Înainte de a vă scufunda în revizuiri, să explicăm semnificația revizuirilor. A [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) este o schimbare care apare într-un nod al unui document, în timp ce un grup de revizuire, reprezentat de clasa [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), este un grup de revizuiri secvențiale care apar în multe noduri ale unui document. Practic, revizuirea este un instrument pentru urmărirea modificărilor.

Revizuirile sunt utilizate în funcția de urmărire a modificărilor și în funcția de comparare a documentelor, unde revizuirile apar ca urmare a comparației. Deci, revizuirile din cadrul funcției modificări de urmărire arată de cine și ce a fost schimbat.

{{% alert color="primary" %}}

Rețineți că Microsoft Word nu vă permite să vizualizați revizuiri individuale, vă permite doar să vizualizați revizuiri secvențiale ca o singură entitate. Dar Aspose.Words rezolvă această limitare cu clasa **RevisionGroup**.

{{% /alert %}}

Aspose.Words suportă diferite tipuri de revizuire, precum și în Microsoft Word, Cum ar fi inserarea, ștergerea, FormatChange, StyleDefinitionChange și mutarea. Toate tipurile de revizuire sunt reprezentate cu enumerarea [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Rețineți că revizuirile au un rezultat similar cu Microsoft Word, dar Aspose.Words nu detectează formatarea în timpul urmăririi modificărilor.

{{% /alert %}}

## Porniți și opriți urmărirea modificărilor

Editarea unui document de obicei nu se consideră o revizuire până când nu începeți să îl urmăriți. Aspose.Words vă permite să urmăriți automat toate modificările din documentul dvs. cu pași simpli. Puteți începe cu ușurință procesul de urmărire a modificărilor utilizând metoda [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Dacă trebuie să opriți procesul de urmărire a modificărilor, astfel încât orice modificări viitoare să nu fie considerate revizuiri, va trebui să utilizați metoda [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Rețineți că metoda `StartTrackingRevisions` nu Modifică starea proprietății [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) și nu utilizează valoarea acesteia în scopul urmăririi revizuirii. În plus, dacă un nod a fost mutat dintr-o locație în alta în interiorul documentului urmărit, atunci vor fi create revizuiri de mutare, inclusiv mutarea de la și mutarea la interval.

{{% /alert %}}

La sfârșitul procesului de urmărire a modificărilor din documentul dvs., veți avea posibilitatea de a accepta chiar și toate revizuirile sau de a le respinge pentru a readuce documentul la forma sa originală. Acest lucru poate fi realizat fie folosind metoda [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) sau [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). În plus, puteți accepta sau respinge fiecare revizuire separat utilizând metoda [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) sau [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Toate modificările vor fi urmărite pentru o singură iterație din momentul în care începeți procesul până în momentul în care îl opriți. Conexiunea dintre diferite iterații este reprezentată ca următorul scenariu: finalizați procesul de urmărire, apoi efectuați unele modificări și începeți din nou urmărirea modificărilor. Cu acest scenariu, toate modificările pe care nu le-ați acceptat sau respins vor fi afișate din nou.

{{% alert color="primary" %}}

Rețineți că metoda `AcceptAllRevisions` este similară cu "acceptați toate modificările" din Microsoft Word.

{{% /alert %}}

Următorul exemplu de cod arată cum să lucrați cu urmărirea modificărilor:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Următorul exemplu de cod arată modul în care sunt generate revizuirile atunci când un nod este mutat într-un document urmărit:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Gestionați și stocați modificările ca revizuiri

Cu funcția anterioară de urmărire a modificărilor, puteți înțelege ce modificări au fost făcute în documentul dvs. și cine a făcut aceste modificări. În timp ce utilizați funcția [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/), forțați orice modificări din documentul dvs. să fie stocate ca revizuiri.

Aspose.Words vă permite să verificați dacă un document are o revizuire sau nu utilizând proprietatea [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Dacă nu este necesar să urmăriți automat modificările din documentul dvs. prin metodele StartTrackRevisions și StopTrackRevisions, atunci puteți utiliza proprietatea `TrackRevisions` pentru a verifica dacă modificările sunt urmărite în timp ce editați un document în Microsoft Word și stocate ca revizii.

Funcția `TrackRevisions` face revizuiri în loc de modificări reale DOM. Dar revizuirile în sine sunt separate. De exemplu, dacă ștergeți orice paragraf, Aspose.Words Faceți-l ca revizuire, marcându-l ca ștergere, în loc să îl ștergeți.

În plus, Aspose.Words vă permite să verificați dacă un obiect a fost inserat, șters sau modificat formatarea utilizând [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), și [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) proprietăți.

{{% alert color="primary" %}}

Rețineți că nu există nicio legătură între revizuirile în sine și proprietatea `TrackRevisions`. În plus, puteți accepta/respinge revizuirile indiferent de funcția de urmărire a modificărilor.

{{% /alert %}}

Următorul exemplu de cod arată cum să aplicați diferite proprietăți cu revizuiri:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
