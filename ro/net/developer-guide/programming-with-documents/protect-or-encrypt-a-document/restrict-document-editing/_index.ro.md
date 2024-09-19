---
title: Restricționa Editarea Documentei în C#
second_title: Aspose.Words pentru .NET
articleTitle: Restricţionează editarea documentelor
linktitle: Restricţionează editarea documentelor
description: "Restricționarea editării unui document prin setarea unui tip de restricție folosind C#. Puteți de asemenea să eliminați protecția și să faceți regiuni editate nelimitate."
type: docs
weight: 30
url: /ro/net/restrict-document-editing/
---

Uneori s-ar putea să ai nevoie să limitezi capacitatea de a edita un document și doar să permiți anumite acțiuni cu el. Acest lucru poate fi util pentru a împiedica alte persoane să editeze informații sensibile și confidențiale în documentul dumneavoastră.

Aspose.Words vă permite să restricționați editarea unui document prin stabilirea unui tip de restricție. În plus, Aspose.Words vă permite și să specificați setările de protecție la scriere pentru un document.

Acest articol explică cum să folosești Aspose.Words pentru a selecta un tip de restricție, cum să adaugi sau să îndepărtezi protecție și cum să faci regiuni ne restricționate editabile.

## Select tipul de restricție a editarii

Aspose.Words vă permite să controlaţi modul în care restricţionaţi conţinutul folosind parametrul enumerare [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/). Aceasta va permite să selectaţi un tip exact de protecţie, cum ar fi următoarele:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* Doar pentru citire
*NoProtection

Toate tipurile sunt securizate prin parole și dacă această parolă nu este introdusă corect, un utilizator nu va putea schimba legal conținutul documentului dumneavoastră. Astfel, dacă documentul tău este returnat fără o cerinţă de a furniza parola necesară, acesta este un semn că ceva este în neregulă.

Dacă nu ai stabilit o parolă atunci când alegi tipul de securitate, alți utilizatori pot ignora pur și simplu protecția documentului tău.

{{% alert color="primary" %}}

Notă că parola fiind stabilită este doar o proprietate dintr-un document care poate fi eliminată dacă proprietățile documentului sunt accesate. În consecinţă, astfel de parolă nu este o garanţie pentru securitatea documentului. Metoda " [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) " arată exact asta.

{{% /alert %}}

## Adăugare protecție document

Adăugarea unei protecții pentru document este un proces simplu, deoarece tot ce trebuie să faceți este să aplicați una din metodele de protecție detaliate în această secțiune.

Aspose.Words îți permite să protejezi documentele de modificări folosind metoda [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/). Această metodă nu este un element de securitate și nu criptează un document.

{{% alert color="primary" %}}

În Microsoft Word puteți restricționa editarea în mod similar folosind ambele:

* Editare restrictivă (Fișier → Informații → Protejați documentul)
* Caracteristică alternativă - "Restricție de editare" (Revizuire → Protecție → Restricție de editare)

{{% /alert %}}

Exemplul următor de cod arată cum să adăugați protecția parolei la documentul dumneavoastră:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Exemplul de cod următor arată cum să restricționezi editarea într-un document astfel încât să fie posibilă doar editarea în câmpurile formularului":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Elimină protecția documentului

Aspose.Words vă permite să eliminați protecția unui document cu modificarea simplă și directă. "Puteți fie să eliminați protecția documentului fără a cunoaște parola reală sau furnizați parola corectă pentru deblocarea documentului prin utilizarea metodei [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/)". Ambele metode de eliminare nu au nicio diferență.

Exemplul de cod următor arată cum să scoţi protecţia din documentul tău:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Specificaţi regiuni ne restricţionate, editabile

Puteți restricționa editarea documentului dvs. și, în același timp, să permiteți modificări pentru părțile selectate ale acestuia. Așadar, oricine deschide documentul dvs., va putea accesa aceste părți necontrolate și va face modificări conținutului.

Aspose.Words vă permite să marcați părțile care pot fi modificate în documentul dvs. folosind metodele [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) și [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

Exemplul de cod următor arată cum se marchează întregul document ca fiind doar pentru citire și cum se specifică regiuni editabile în acesta:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Puteți alege, de asemenea, diferite restricții de editare a documentelor pentru diferite secțiuni.

Exemplul de cod următor arată cum să adăugați o restricție pentru întregul document și apoi să eliminați restricția pentru una dintre secțiuni:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
