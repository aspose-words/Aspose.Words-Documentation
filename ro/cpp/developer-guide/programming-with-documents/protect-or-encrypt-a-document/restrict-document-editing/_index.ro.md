---
title: Restricționați editarea documentelor în C++
second_title: Aspose.Words pentru C++
articleTitle: Restricționați Editarea Documentelor
linktitle: Restricționați Editarea Documentelor
description: "Restricționați editarea unui document prin setarea unui tip de restricție folosind C++. De asemenea, puteți elimina protecția și puteți crea regiuni editabile fără restricții."
type: docs
weight: 30
url: /ro/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Uneori poate fi necesar să limitați capacitatea de a edita un document și să permiteți doar anumite acțiuni cu acesta. Acest lucru poate fi util pentru a împiedica alte persoane să editeze informații sensibile și confidențiale din documentul dvs.

Aspose.Words vă permite să restricționați editarea unui document prin setarea unui tip de restricție. În plus, Aspose.Words vă permite, de asemenea, să specificați setările de protecție la scriere pentru un document.

Acest articol explică cum să utilizați Aspose.Words pentru a selecta un tip de restricție, cum să adăugați sau să eliminați protecția și cum să creați regiuni editabile fără restricții.

## Selectați Tipul De Restricție De Editare

Aspose.Words vă permite să controlați modul în care restricționați conținutul folosind parametrul de enumerare [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Acest lucru vă va permite să selectați un tip exact de protecție, cum ar fi următoarele:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Toate tipurile sunt securizate prin parolă și, dacă această parolă nu este introdusă corect, un utilizator nu va putea modifica legal conținutul documentului dvs. Astfel, dacă documentul dvs. vă este returnat fără cerința de a furniza parola necesară, acesta este un semn că ceva nu este în regulă.

Dacă nu ați setat o parolă atunci când alegeți tipul de securitate, alți utilizatori pot ignora pur și simplu protecția documentului dvs.

{{% alert color="primary" %}}

Rețineți că parola setată este doar o proprietate dintr-un document care poate fi eliminată dacă sunt accesate proprietățile documentului. În consecință, o astfel de parolă nu este o garanție a securității documentului. Metoda [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) arată exact asta.

{{% /alert %}}

## Adăugați Protecție Pentru Documente

Adăugarea de protecție la documentul dvs. este un proces simplu, deoarece tot ce trebuie să faceți este să aplicați una dintre metodele de protecție detaliate în această secțiune.

Aspose.Words vă permite să vă protejați documentele de modificări folosind metoda [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Această metodă nu este o caracteristică de securitate și nu criptează un document.

{{% alert color="primary" %}}

În Microsoft Word, puteți restricționa editarea într-un mod similar folosind ambele:

* Restricționați Editarea (Fișier Info Document Protejat)
* Caracteristică alternativă – "restricționați editarea" (revizuiți protecția pentru a restricționa editarea)

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați protecție prin parolă la documentul dvs:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Următorul exemplu de cod arată cum să restricționați editarea într-un document, astfel încât este posibilă numai editarea în câmpurile de formular:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Eliminați Protecția Documentelor

Aspose.Words vă permite să eliminați protecția dintr-un document cu o modificare simplă și directă a documentului. Puteți fie să eliminați protecția documentului fără a cunoaște parola reală, fie să furnizați parola corectă pentru a debloca documentul utilizând metoda [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Ambele moduri de eliminare nu au nicio diferență.

Următorul exemplu de cod arată cum să eliminați protecția din document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Specificați Regiuni Editabile Fără Restricții

Puteți restricționa editarea documentului dvs. și, în același timp, puteți permite modificări ale părților selectate ale acestuia. Deci, oricine vă deschide documentul va putea accesa aceste părți nerestricționate și poate modifica conținutul.

Aspose.Words vă permite să marcați părțile care pot fi modificate în documentul dvs. folosind metodele [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) și [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

Următorul exemplu de cod arată cum să marcați întregul document ca doar pentru citire și să specificați regiuni editabile în el:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

De asemenea, puteți alege diferite restricții de editare a documentelor pentru diferite secțiuni.

Următorul exemplu de cod arată cum să adăugați o restricție pentru întregul document, apoi să eliminați restricția pentru una dintre secțiuni:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
