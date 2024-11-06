---
title: Introduceți câmpuri în C++
second_title: Aspose.Words pentru C++
articleTitle: Introduceți Câmpuri
linktitle: Introduceți Câmpuri
description: "Diferite moduri de a insera câmpuri în documentul dvs. folosind C++."
type: docs
weight: 20
url: /ro/cpp/inserting-fields/
---

Există mai multe moduri diferite de a insera câmpuri într-un document:

- folosind [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- folosind [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- utilizarea [Aspose.Words Model Obiect Document (DOM)](/words/cpp/aspose-words-document-object-model/)

În acest articol, vom analiza fiecare mod în detaliu și vom analiza cum să inserați anumite câmpuri folosind aceste opțiuni.

## Inserarea câmpurilor într-un Document folosind DocumentBuilder

În Aspose.Words metoda [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) este utilizată pentru a insera câmpuri noi într-un document. Primul parametru acceptă codul complet al câmpului care urmează să fie introdus. Al doilea parametru este opțional și permite setarea manuală a rezultatului câmpului. Dacă acest lucru nu este furnizat, atunci câmpul este actualizat automat. Puteți trece null sau empty la acest parametru pentru a insera un câmp cu o valoare de câmp gol. Dacă nu sunteți sigur de sintaxa codului de câmp, creați mai întâi câmpul în Microsoft Word și comutați pentru a vedea codul câmpului său.

{{% alert color="primary" %}}

Dacă codul dvs. de câmp are un parametru care conține un spațiu, atunci acesta trebuie să fie inclus în semnele de vorbire. În caz contrar, câmpul din ambele Microsoft Word și Aspose.Words poate să nu funcționeze conform așteptărilor, deoarece parametrul este tratat de ambele ca fiind trunchiat

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați un câmp de îmbinare într-un document folosind **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Aceeași tehnică este utilizată pentru a insera câmpuri imbricate în alte câmpuri.

Următorul exemplu de cod arată cum să inserați câmpuri imbricate într-un alt câmp folosind **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Specificați Locale la nivel de câmp

Un identificator de limbă este o abreviere numerică internațională standard pentru limba dintr-o țară sau regiune geografică. Cu Aspose.Words, Puteți specifica Locale-ul la nivel de câmp folosind proprietatea [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), care primește sau setează locale-ul câmpului ID.

Următorul exemplu de cod arată cum să utilizați această opțiune:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Introduceți Câmpul Netipat/Gol

Dacă doriți să inserați câmpuri netipate/goale ({}) la fel cum permite Microsoft Word, puteți utiliza metoda [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) cu parametrul [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Pentru a insera un câmp într-un document Word, puteți apăsa combinația de taste "Ctrl + F9".

Următorul exemplu de cod arată cum să inserați un câmp gol în document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Inserarea câmpurilor într-un Document folosind FieldBuilder

Modul alternativ de a insera câmpuri în Aspose.Words este clasa [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Oferă o interfață fluentă pentru a specifica comutatoarele de câmp și valorile argumentelor ca text, noduri sau chiar câmpuri imbricate.

Următorul exemplu de cod arată cum să inserați un câmp într-un document folosind **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Introducerea câmpurilor folosind DOM

De asemenea, puteți insera diferite tipuri de câmpuri folosind [Aspose.Words Model Obiect Document (DOM)](/words/cpp/aspose-words-document-object-model/). În această secțiune, vom analiza câteva exemple.

### Inserarea câmpului de îmbinare într-un Document folosind DOM

Câmpul `MERGEFIELD` din documentul Word poate fi reprezentat de clasa [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Puteți utiliza clasa **FieldMergeField** pentru a efectua următoarele operații:

- specificați numele câmpului de îmbinare
- specificați formatarea câmpului de îmbinare
- specificați textul care se află între separatorul de câmp și sfârșitul câmpului câmpului de îmbinare
- specificați textul care trebuie inserat după câmpul de îmbinare dacă câmpul nu este gol
- specificați textul care trebuie inserat înainte de câmpul îmbinare dacă câmpul nu este gol

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `MERGE` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserarea câmpului de blocare a adresei Mail Merge într-un Document folosind DOM

Câmpul `ADDRESSBLOCK` este folosit pentru a insera un bloc de adrese mail merge într-un document Word. `ADDRESSBLOCK` câmpul din documentul Word poate fi reprezentat de clasa [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Puteți utiliza clasa **FieldAddressBlock** pentru a efectua următoarele operații:

- specificați dacă să includeți numele țării/regiunii în câmp
- specificați dacă să formatați adresa în funcție de țara / regiunea destinatarului, astfel cum este definită de POST * CODE (Uniunea Poștală Universală 2006)
- specificați numele țării/regiunii excluse
- specificați formatul numelui și adresei
- specificați limba ID utilizată pentru formatarea adresei

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul Mail Merge `ADDRESSBLOCK` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserarea câmpului Advance într-un Document fără a utiliza DocumentBuilder

Câmpul `ADVANCE` este folosit pentru a compensa textul ulterior într-o linie la stânga, la dreapta, în sus sau în jos. Câmpul `ADVANCE` din documentul Word poate fi reprezentat de clasa [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Puteți utiliza clasa FieldAdvance pentru a efectua următoarele operații:

- specificați numărul de puncte prin care textul care urmează câmpului trebuie mutat vertical de la marginea superioară a paginii
- specificați numărul de puncte prin care textul care urmează câmpului trebuie mutat orizontal de la marginea stângă a coloanei, cadrului sau casetei de text
- specificați numărul de puncte prin care textul care urmează câmpului trebuie mutat la stânga, la dreapta, în sus sau în jos

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `ADVANCE` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserarea câmpului `ASK` într-un Document fără a utiliza DocumentBuilder

Câmpul `ASK` este folosit pentru a solicita utilizatorului ca textul să fie atribuit unui marcaj în documentul Word. `ASK` câmpul din documentul Word poate fi reprezentat de clasa [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Puteți utiliza clasa **FieldAsk** pentru a efectua următoarele operații:

- specificați numele marcajului
- specificați răspunsul implicit al utilizatorului (valoarea inițială conținută în fereastra prompt)
- specificați dacă răspunsul utilizatorului trebuie primit o dată pentru o operație mail merge
- specificați textul prompt (titlul ferestrei prompt)

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `ASK` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserarea câmpului `AUTHOR` într-un Document fără a utiliza DocumentBuilder

Câmpul `AUTHOR` este folosit pentru a specifica numele autorului documentului din proprietățile `Document`. Câmpul `AUTHOR` din documentul Word poate fi reprezentat de clasa [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Puteți utiliza clasa **FieldAuthor** pentru a efectua următoarele operații:

- specificați numele autorului documentului

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `AUTHOR` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Inserarea câmpului `INCLUDETEXT` într-un Document fără a utiliza DocumentBuilder

Câmpul `INCLUDETEXT` introduce textul și grafica conținute în documentul numit în codul câmpului. Puteți insera întregul document sau o porțiune a documentului la care se face referire printr-un marcaj. Acest câmp din documentul Word este reprezentat de INCLUDETEXT. Puteți utiliza clasa [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) pentru a efectua următoarele operații:

- specificați numele marcajului documentului inclus
- specificați locația documentului

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `INCLUDETEXT` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Inserarea câmpului `TOA` într-un Document fără a utiliza DocumentBuilder

Câmpul `TOA` (*Table of Authorities*) construiește și introduce un tabel de autorități. Câmpul `TOA` colectează intrările marcate cu câmpurile `TA` (*Table of Authorities Entry*). Microsoft Office Word introduce câmpul `TOA` Când faceți clic pe *Insert Table of Authorities* în grupul **Table of Authorities** din fila **References**. Când vizualizați câmpul `TOA` din document, sintaxa arată astfel:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `TOA` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
