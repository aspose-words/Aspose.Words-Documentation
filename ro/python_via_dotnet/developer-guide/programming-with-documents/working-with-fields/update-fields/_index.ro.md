---
title: Actualizarea Câmpurilor Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Actualizați Câmpurile
linktitle: Actualizați Câmpurile
description: "Actualizați câmpurile dintr-un document în moduri diferite și utilizând opțiuni diferite în Python."
type: docs
weight: 30
url: /ro/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

De obicei, un câmp inserat în Microsoft Word conține deja o valoare actualizată. De exemplu, dacă câmpul este o formulă sau un număr de pagină, acesta va conține valoarea calculată corectă pentru versiunea dată a documentului. Dar dacă aveți o aplicație care generează sau Modifică un document cu câmpuri precum îmbinarea a două documente sau popularea acestuia cu date, atunci în mod ideal toate câmpurile trebuie actualizate pentru ca documentul să fie util.

## Cum se actualizează câmpurile

Când un document este încărcat, Aspose.Words imită comportamentul Microsoft Word cu opțiunea de actualizare automată a câmpurilor este dezactivată. Comportamentul poate fi rezumat după cum urmează::

- când deschideți/salvați un document, câmpurile rămân intacte
- puteți actualiza în mod explicit toate câmpurile dintr-un document (de exemplu, reconstrui TOC) atunci când trebuie să
- când imprimați / randați în PDF sau XPS câmpurile legate de numerotarea paginilor în anteturi / subsoluri sunt actualizate
- când executați mail merge toate câmpurile sunt actualizate automat

### Actualizați Câmpurile Programatic

Pentru a actualiza în mod explicit câmpurile din întregul document, pur și simplu apelați [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Pentru a actualiza câmpurile conținute într-o parte a unui document, obțineți un obiect [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) și apelați metoda [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). În Aspose.Words, puteți obține un **Range** pentru orice nod din arborele documentului, cum ar fi [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), etc. folosind proprietatea [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Puteți actualiza rezultatul unui singur câmp apelând metoda [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Actualizarea automată a câmpurilor legate de pagină în timpul redării

Când executați conversia unui document într-un format de pagină fixă, de exemplu în PDF sau XPS, atunci Aspose.Words va actualiza automat câmpurile legate de aspectul paginii `PAGE`, `PAGEREF` găsite în anteturile/subsolurile documentului. Acest comportament imită comportamentul Microsoft Word la imprimarea unui document.

Dacă doriți să actualizați toate celelalte câmpuri din document, atunci trebuie să apelați [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) înainte de a reda documentul.

Următorul exemplu de cod arată cum să actualizați toate câmpurile înainte de a reda un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Actualizare Automată A Câmpului În Timpul Mail Merge

Când executați un mail merge, toate câmpurile din document vor fi actualizate automat. Acest lucru se datorează faptului că mail merge este un caz de actualizare a câmpului. Programul întâlnește un câmp mail merge și trebuie să-și actualizeze rezultatul, ceea ce implică preluarea valorii din sursa de date și introducerea acesteia în câmp. Logica este, desigur, mai complicată, de exemplu, atunci când se ajunge la sfârșitul regiunii document/mail merge, dar mai sunt încă date de îmbinat, atunci Regiunea trebuie duplicată și Noul set de câmpuri actualizat.

## Actualizați Câmpurile Cu Atribut Murdar

W: dirty este un atribut la nivel de câmp care va reîmprospăta numai câmpul pe care îl specificați la deschiderea documentului. Acesta spune MS Word să reîmprospăteze acest câmp numai la următoarea deschidere a documentului. Puteți utiliza proprietatea [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) pentru a specifica dacă să actualizați câmpurile cu atributul murdar. Când valoarea **update_dirty_fields** este setată la `True`, toate câmpurile care au valoarea `True` pentru proprietatea [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) sau [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) sunt actualizate la încărcarea documentului.

Următorul exemplu de cod arată cum să actualizați câmpurile cu atributul murdar:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Actualizați Proprietatea LastSavedTime Înainte De Salvare

Puteți utiliza proprietatea [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) dacă doriți să actualizați proprietatea documentului încorporat corespunzător [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) la salvarea documentului.

Următorul exemplu de cod arată cum să actualizați această proprietate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

