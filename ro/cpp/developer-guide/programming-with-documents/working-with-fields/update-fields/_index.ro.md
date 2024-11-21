---
title: Actualizați câmpurile în C++
second_title: Aspose.Words pentru C++
articleTitle: Actualizați Câmpurile
linktitle: Actualizați Câmpurile
description: "Aflați cum să actualizați câmpurile în C++. Actualizați câmpurile programatic sau utilizați actualizarea automată a câmpului folosind C++ API."
type: docs
weight: 30
url: /ro/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

De obicei, un câmp inserat în Microsoft Word conține deja o valoare actualizată. De exemplu, dacă câmpul este o formulă sau un număr de pagină, acesta va conține valoarea calculată corectă pentru versiunea dată a documentului. Dar dacă aveți o aplicație care generează sau Modifică un document cu câmpuri precum îmbinarea a două documente sau popularea acestuia cu date, atunci în mod ideal toate câmpurile trebuie actualizate pentru ca documentul să fie util.

## Cum se actualizează câmpurile

Când un document este încărcat, Aspose.Words imită comportamentul Microsoft Word cu opțiunea de actualizare automată a câmpurilor este dezactivată. Comportamentul poate fi rezumat după cum urmează::

- când deschideți/salvați un document, câmpurile rămân intacte
- puteți actualiza în mod explicit toate câmpurile dintr-un document, de exemplu, reconstrui `TOC`, atunci când trebuie să
- când redați la PDF sau XPS câmpurile legate de numerotarea paginilor în anteturi / subsoluri sunt actualizate
- când executați mail merge toate câmpurile sunt actualizate automat

### Actualizați Câmpurile Programatic

Pentru a actualiza în mod explicit câmpurile din întregul document, pur și simplu apelați metoda [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Pentru a actualiza câmpurile conținute într-o parte a unui document, obțineți un obiect [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) și apelați metoda [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). În Aspose.Words, puteți obține un **Range** pentru orice nod din arborele documentului, cum ar fi [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), etc. folosind proprietatea [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Puteți actualiza rezultatul unui singur câmp apelând metoda [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Actualizarea automată a câmpurilor legate de pagină în timpul redării

Când executați conversia unui document într-un format de pagină fixă, de exemplu în PDF sau XPS, atunci Aspose.Words va actualiza automat câmpurile legate de aspectul paginii `PAGE`, `PAGEREF` găsite în anteturile/subsolurile documentului. Acest comportament imită comportamentul Microsoft Word la imprimarea unui document.

Dacă doriți să actualizați toate celelalte câmpuri din document, atunci trebuie să apelați [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) înainte de a reda documentul.

Următorul exemplu de cod arată cum să actualizați toate câmpurile înainte de a reda un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Actualizare Automată A Câmpului În Timpul Mail Merge

Când executați un mail merge, toate câmpurile din document vor fi actualizate automat. Acest lucru se datorează faptului că mail merge este un caz de actualizare a câmpului. Programul întâlnește un câmp mail merge și trebuie să-și actualizeze rezultatul, ceea ce implică preluarea valorii din sursa de date și introducerea acesteia în câmp. Logica este, desigur, mai complicată, de exemplu, atunci când se ajunge la sfârșitul regiunii document/mail merge, dar mai sunt încă date de îmbinat, atunci Regiunea trebuie duplicată și Noul set de câmpuri actualizat.

## Actualizați Proprietatea LastSavedTime Înainte De Salvare

Puteți utiliza proprietatea [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) dacă doriți să actualizați proprietatea documentului încorporat corespunzător [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) la salvarea documentului.

Următorul exemplu de cod arată cum să actualizați această proprietate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


