---
title: Actualizați câmpurile în Java
second_title: Aspose.Words pentru Java
articleTitle: Actualizați Câmpurile
linktitle: Actualizați Câmpurile
description: "Aflați cum să actualizați câmpurile în Java. Actualizați câmpurile programatic sau utilizați actualizarea automată a câmpului folosind Java API"
type: docs
weight: 30
url: /ro/java/update-field/
timestamp: 2024-01-27-14-07-04
---

De obicei, un câmp inserat în Microsoft Word conține deja o valoare actualizată. De exemplu, dacă câmpul este o formulă sau un număr de pagină, acesta va conține valoarea calculată corectă pentru versiunea dată a documentului. Dar dacă aveți o aplicație care generează sau Modifică un document cu câmpuri precum îmbinarea a două documente sau popularea acestuia cu date, atunci în mod ideal toate câmpurile trebuie actualizate pentru ca documentul să fie util.

## Cum se actualizează câmpurile

Când un document este încărcat, Aspose.Words imită comportamentul Microsoft Word cu opțiunea de actualizare automată a câmpurilor este dezactivată. Comportamentul poate fi rezumat după cum urmează::

- când deschideți/salvați un document, câmpurile rămân intacte
- puteți actualiza în mod explicit toate câmpurile dintr-un document, de exemplu, reconstruiți `TOC` atunci când trebuie să
- când imprimați / randați în PDF sau XPS câmpurile legate de numerotarea paginilor în anteturi / subsoluri sunt actualizate
- când executați Mail Merge toate câmpurile sunt actualizate automat

### Actualizați Câmpurile Programatic

Pentru a actualiza în mod explicit câmpurile din întregul document, pur și simplu apelați metoda [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields). Pentru a actualiza câmpurile conținute într-o parte a unui document, obțineți un obiect [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) și apelați metoda [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields). În Aspose.Words, puteți obține un **Range** pentru orice nod din arborele documentului, cum ar fi [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), etc. folosind proprietatea [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). Puteți actualiza rezultatul unui singur câmp apelând metoda [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### Actualizarea automată a câmpurilor legate de pagină în timpul redării

Când executați conversia unui document într-un format de pagină fixă, de exemplu în PDF sau XPS, atunci Aspose.Words va actualiza automat câmpurile legate de aspectul paginii `PAGE`, `PAGEREF` găsite în anteturile/subsolurile documentului. Acest comportament imită comportamentul Microsoft Word la imprimarea unui document.

Dacă doriți să actualizați toate celelalte câmpuri din document, atunci trebuie să apelați [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) înainte de a reda documentul.

Următorul exemplu arată cum să actualizați toate câmpurile înainte de a reda un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Actualizare automată a câmpului în timpul Mail Merge

Când executați un mail merge, toate câmpurile din document vor fi actualizate automat. Acest lucru se datorează faptului că Mail Merge este un caz de actualizare a câmpului. Programul întâlnește un câmp Mail Merge și trebuie să-și actualizeze rezultatul, ceea ce implică preluarea valorii din sursa de date și introducerea acesteia în câmp. Logica este, desigur, mai complicată, de exemplu, atunci când se ajunge la sfârșitul regiunii document/mail merge, dar mai sunt încă date de îmbinat, atunci Regiunea trebuie duplicată și Noul set de câmpuri actualizat.

## Actualizați câmpurile cu atribut murdar

W: dirty este un atribut la nivel de câmp care va reîmprospăta numai câmpul pe care îl specificați la deschiderea documentului. Acesta spune MS Word să reîmprospăteze acest câmp numai la următoarea deschidere a documentului. Puteți utiliza LoadOptions.setUpdateDirtyFields() proprietate pentru a specifica dacă să actualizați câmpurile cu atributul murdar. Când valoarea lui LoadOptions.setUpdateDirtyFields () este setat la *true*, toate câmpurile cu valoare *true* pentru proprietatea `Field.IsDirty` sau `FieldChar.IsDirty` sunt actualizate la încărcarea documentului.

Următorul exemplu de cod arată cum să actualizați câmpurile cu atributul murdar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Actualizați Proprietatea LastSavedTime Înainte De Salvare

Puteți utiliza proprietatea [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) dacă doriți să actualizați proprietatea corespunzătoare a documentului încorporat [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) la salvarea documentului.

Următorul exemplu de cod arată cum să actualizați această proprietate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
