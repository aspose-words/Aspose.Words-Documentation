---
title: Actualizare câmpuri C#
second_title: Aspose.Words pentru .NET
articleTitle: Actualizare câmpuri
linktitle: Actualizare câmpuri
description: "Învață cum să actualizezi câmpuri în C#. Actualizați câmpurile programatic sau folosiți actualizarea automată a câmpurilor folosind .NET API."
type: docs
weight: 30
url: /ro/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Tipic, un câmp introdus în Microsoft Word conține deja o valoare actualizată. Spre exemplu, dacă câmpul este o formulă sau un număr de pagină, acesta va conține valoarea corect calculată pentru versiunea dată a documentului. Dar dacă ai o aplicație care generează sau modifică un document cu câmpuri ca fuzionarea a două documente sau completarea acestuia cu date, atunci ideal ar fi să se actualizeze toate câmpurile pentru ca documentul să fie util.

## Cum să actualizezi câmpurile

Când un document este încărcat, Aspose.Words imită comportamentul de Microsoft Word cu opțiunea de actualizare automată a câmpurilor dezactivată. Comportamentul poate fi rezumat după cum urmează:

- când deschideți/salvați un document, câmpurile rămân intacte
- puteți actualiza în mod explicit toate câmpurile dintr-un document, de exemplu, reconstruiește `TOC` atunci când aveți nevoie
"- când imprimați/redă în PDF sau XPS câmpurile legate de numerotarea paginilor din antet/subsol sunt actualizate"
"- când executați Mail Merge toate câmpurile sunt actualizate automat"

### Actualizează câmpurile programatic

Pentru a actualiza explicit câmpurile din tot documentul, apelați pur și simplu metoda [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). Pentru a actualiza câmpurile conținute într-o parte dintr-un document, obțineți un [Range](https://reference.aspose.com/words/net/aspose.words/range/) obiect și apelați metoda [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). În Aspose.Words, puteți obține un **Range** pentru orice nod în arborele de documente, cum ar fi [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) etc., folosind proprietatea [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). Poţi actualiza rezultatul unui singur câmp prin apelarea metodei [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### Actualizare automată a câmpurilor legate de pagină în timpul redării

Când efectuaţi conversia unui document într-un format cu pagini fixe, de exemplu în PDF sau XPS, atunci Aspose.Words va actualiza automat câmpurile legate de aranjarea paginilor `PAGE`, `PAGEREF` găsite în anteturile/subsolurile documentului. Acest comportament imită comportamentul Microsoft Word atunci când se imprimă un document.

Dacă doriți să actualizați toate celelalte câmpuri din document atunci aveți nevoie să apelați [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) înainte de a rula documentul.

Exemplul de cod următor arată cum să actualizezi toate câmpurile înainte de redarea unui document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Actualizare automată a câmpului în timpul Mail Merge

Când executați o Mail Merge toate câmpurile din document vor fi actualizate automat. Acest lucru se datorează faptului că Mail Merge este o actualizare de câmp. Programul întâlnește un câmp Mail Merge și trebuie să actualizeze rezultatul său, ceea ce implică luarea valorii din sursa de date și inserarea acesteia în câmp. Logica este desigur mai complicată, pentru exemplu, atunci când se atinge sfârșitul regiunii/documentului mail merge, dar există încă date suplimentare care trebuie fuzionate, atunci regiunea trebuie duplicată și noul set de câmpuri actualizat.

## Actualizare câmpuri cu atribut murdar

"w:dirty este un atribut la nivel de câmp care va actualiza doar câmpul pe care îl specificați atunci când se deschide documentul." "Spune lui MS Word să actualizeze acest câmp doar data viitoare când documentul va fi deschis." Puteți utiliza proprietatea [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) pentru a specifica dacă să actualizați câmpurile cu atributul murdar. Când valoarea **UpdateDirtyFields** este setată la *true*, toate câmpurile care au valoarea *true* pentru [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) sau [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) proprietate sunt actualizate când se încarcă documentul.

Exemplul de cod următor arată cum să actualizați câmpurile cu atributul "dirtie":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Actualizați proprietatea LastSavedTime înainte de salvarea

Puteți utiliza proprietatea [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) fie pentru a actualiza proprietatea documentului încorporat corespunzător [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/), atunci când salvați documentul.

Exemplul de cod următor arată cum să actualizați această proprietate:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
