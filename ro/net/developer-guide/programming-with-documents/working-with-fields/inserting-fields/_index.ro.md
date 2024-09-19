---
title: Inserare câmpuri în C#
second_title: Aspose.Words pentru .NET
articleTitle: Înserare câmpuri
linktitle: Înserare câmpuri
description: "Cum să inserezi câmpuri într-un document folosind C# - învață diferite modalități cu exemple de cod."
type: docs
weight: 20
url: /ro/net/inserting-fields/
---

Există mai multe modalități diferite de a introduce câmpuri într-un document:

* folosind [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* folosind [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* folosind [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/)

În acest articol vom vedea fiecare metodă în detaliu și vom analiza cum se introduc anumite câmpuri folosind aceste opțiuni.

## Introducerea câmpurilor într-un document folosind DocumentBuilder

În Aspose.Words, metoda [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) este folosită pentru inserarea unor câmpuri noi într-un document. "Prima paramentare acceptă codul complet de câmp al câmpului care urmează să fie introdus." "Al doilea parametru este opțional și permite ca rezultatul câmpului să fie setat manual." Dacă acest lucru nu este furnizat atunci câmpul este actualizat automat. Poţi trece null sau gol la acest parametru pentru a insera un câmp cu o valoare de câmp goală. Dacă nu eşti sigur de sintaxa codului câmpului specific, creează câmpul în Microsoft Word mai întâi şi comută pentru a vedea codul câmpului său.

{{% alert color="primary" %}}

Dacă codul tău de câmp are un parametru care conține un spațiu atunci trebuie să fie încadrat cu ghilimele. În caz contrar, câmpul în ambele Microsoft Word și Aspose.Words poate să nu funcționeze așa cum se așteaptă ca parametrul este tratat de ambele ca fiind trunchiat.

{{% /alert %}}

Exemplul de cod următor arată cum să insereze un câmp de fuziune într-un document folosind **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Aceeași tehnică se folosește pentru a introduce câmpuri încorporate în alte câmpuri.

Exemplul următor de cod arată cum să insereze câmpuri încorporate într-un alt câmp folosind **DocumentBuilder**":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Specificați "Locale" la nivelul câmpului

Un identificator de limbă este o abreviere numerică internațională standard pentru limba dintr-o țară sau regiune geografică. Cu Aspose.Words, puteți specificaLocale la nivel de câmp folosind proprietatea [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/), care obține sau stabilește ID-ul local al câmpului.

Exemplul de cod următor arată cum să folosești această opțiune:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Introduceți câmp neclasificat/gol

Dacă doriți să inserați câmpuri ne-tipate/goale ( {} ) doar ca Microsoft Word permite, puteți folosi metoda [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) cu parametrul [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Pentru a introduce un câmp într-un document Word puteți apăsa combinația de taste "Ctrl + F9".

Exemplul de cod următor arată cum să inserezi un câmp gol în document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Inserarea câmpurilor într-un document folosind FieldBuilder
"Modul alternativ de a insera câmpuri în Aspose.Words este clasa [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)." Acesta oferă o interfață fluidă pentru a specifica comutatoare de câmpuri și valori de argumente ca text, noduri sau chiar câmpuri încastrate.

Exemplul de cod următor arată cum să introduceți un câmp într-un document utilizând **FieldBuilder**:"

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Inserarea câmpurilor folosind DOM

"Puteți introduce și diferite tipuri de câmpuri folosind [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/)". În această secţiune, vom privi câteva exemple.

### Inserarea unui câmp de fuziune într-un document folosind DOM

"Câmpul `MERGEFIELD` din documentul Word poate fi reprezentat de clasa [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/)." Puteți utiliza clasa **FieldMergeField** pentru a efectua următoarele operații:

- specifica numele câmpului de fuziune
- specificaţi formatarea câmpului de fuziune
- specificați textul care este între separatorul câmpului și sfârșitul câmpului de fuziune
- specifica textul care urmează să fie inserat după câmpul de fuziune dacă câmpul nu este gol
- specificaţi textul ce urmează să fie inserat înaintea câmpului de fuziune dacă acesta nu este gol

{{% alert color="primary" %}}

Pentru mai multe detalii, vezi clasa [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) la API.

{{% /alert %}}

Exemplul următor arată cum să adăugați câmpul `MERGE` utilizând DOM la un paragraf într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Inserarea Mail Merge `ADDRESSBLOCK` câmp într-un document folosind DOM

Câmpul `ADDRESSBLOCK` este utilizat pentru inserarea unui bloc de adresă mail merge în documentul Word. Câmpul `ADDRESSBLOCK` din documentul Word poate fi reprezentat de clasa [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/). Poţi folosi clasa **FieldAddressBlock** pentru a efectua următoarele operaţii:

- specificaţi dacă să includeţi numele ţării/regiunii în câmp
"- specificați dacă să formatați adresa în conformitate cu țara/regiunea destinatarului așa cum este definită de POST*CODE (Uniunea Poștală Universală din 2006)."
- specifica numele ţării/regiunii excluse
"- specifică numele și formatul adresei"
- specificați ID-ul limbii utilizate pentru a formata adresa de e-mail

{{% alert color="primary" %}}

Pentru detalii suplimentare, vezi [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) clasa API.

{{% /alert %}}

Exemplul de cod următor arată cum să adăugați câmpul Mail Merge `ADDRESSBLOCK` utilizând DOM la un paragraf într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Inserarea `ADVANCE` câmp într-un document fără să folosești DocumentBuilder

Câmpul `ADVANCE` este utilizat pentru a deplasa textul următor într-o linie la stânga, dreapta, sus sau jos. Campul `ADVANCE` din documentul Word poate fi reprezentat de clasa [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/). Puteți utiliza clasa **FieldAdvance** pentru a efectua următoarele operații:

- specificaţi numărul de puncte prin care textul care urmează câmpului ar trebui deplasat vertical de la marginea superioară a paginii
- specificaţi numărul de puncte prin care textul care urmează câmpului ar trebui să fie deplasat orizontal din stânga marginii coloanei, cadrului sau casetei de text
- specificați numărul de puncte prin care textul ce urmează câmpului ar trebui să fie deplasat spre stânga, dreapta, sus sau jos

{{% alert color="primary" %}}

Pentru mai multe detalii vezi [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) clasa API.

{{% /alert %}}

Exemplul de cod următor arată cum să adăugați câmpul `ADVANCE` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Introducerea unui câmp `ASK` într-un document fără utilizarea DocumentBuilder

Câmpul `ASK` se foloseşte pentru a solicita utilizatorului textul care să fie atribuit unei Semnări în documentul Word. Câmpul `ASK` din documentul Word poate fi reprezentat de clasa [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/). Puteți folosi clasa **FieldAsk** pentru a efectua următoarele operații:

"- specificați numele semnului de carte"
- specificați răspunsul implicite al utilizatorului (valoarea inițială conținută în fereastra de solicitare)
- specificaţi dacă răspunsul utilizatorului trebuie să fie primit o dată pe o mail merge operaţie
- specifica textul de introducere (titlul ferestrei de introducere)

{{% alert color="primary" %}}

Pentru detalii suplimentare, vezi [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) clasa API.

{{% /alert %}}

Exemplul de cod următor prezintă modul în care să adăugați `ASK` Câmp utilizând DOM la un paragraf într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Inserarea câmpului `AUTHOR` într-un document fără a folosi DocumentBuilder

Câmpul `AUTHOR` se folosește pentru a specifica numele autorului documentului din `Document` proprietăți. Câmpul `AUTHOR` din documentul Word poate fi reprezentat de clasa [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/). Puteți utiliza clasa **FieldAuthor** pentru a efectua următoarele operații:

- specificați numele autorului documentului

{{% alert color="primary" %}}

Pentru detalii suplimentare, vezi clasa [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Exemplul următor de cod arată cum să adăugați câmpul `AUTHOR` folosind DOM la un paragraf într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Introducerea unui câmp `INCLUDETEXT` într-un document fără a folosi DocumentBuilder

Câmpul `INCLUDETEXT` inserează textul și grafiile din documentul numit în codul câmpului. Puteți insera întregul document sau o porțiune a acestuia care este referit de un marcaj. Acest câmp în documentul Word este reprezentat de INCLUDETEXT. Puteți utiliza clasa [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) pentru a efectua următoarele operații:

- specificaţi numele semnului de carte pentru documentul inclus
- specificaţi locaţia documentului

{{% alert color="primary" %}}

Pentru detalii suplimentare vezi [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) clasa API.

{{% /alert %}}

Exemplul de cod următor arată cum să adaugăm câmpul `INCLUDETEXT` utilizând DOM la un paragraf într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Introducerea `TOA` câmpului într-un document fără a utiliza DocumentBuilder

The `TOA` (*Tabelul de autorități*) câmp construiește și inserează un tabel de autorități. The `TOA` câmp colectează intrări marcate cu `TA` (*Intrare Tabelul de Autorități*) câmpuri. Microsoft Office Word introduce câmpul `TOA` când faceți clic pe *Insert Table of Authorities* în grupul **Tabelul autorităților** pe fila **References**. Când vizualizați câmpul `TOA` în documentul dvs., sintaxa arată așa:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Pentru mai multe detalii vezi [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) clasa API.

{{% /alert %}}

Exemplul de cod următor arată cum să adaugeți câmpul `TOA` folosind DOM într-un paragraf dintr-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
