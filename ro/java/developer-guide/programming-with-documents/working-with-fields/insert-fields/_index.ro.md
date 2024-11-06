---
title: Introduceți câmpuri în Java
second_title: Aspose.Words pentru Java
articleTitle: Introduceți Câmpuri
linktitle: Introduceți Câmpuri
description: "Diferite moduri de a insera câmpuri în documentul dvs. folosind Java."
type: docs
weight: 20
url: /ro/java/insert-fields/
---

Există mai multe moduri diferite de a insera câmpuri într-un document:

- folosind [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- folosind [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- utilizarea [Aspose.Words Model Obiect Document (DOM)](/words/java/aspose-words-document-object-model/)

În acest articol, vom analiza fiecare mod în detaliu și vom analiza cum să inserați anumite câmpuri folosind aceste opțiuni.

## Inserarea câmpurilor într-un Document folosind DocumentBuilder

În Aspose.Words metoda [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) este utilizată pentru a insera câmpuri noi într-un document. Primul parametru acceptă codul complet al câmpului care urmează să fie introdus. Al doilea parametru este opțional și permite setarea manuală a rezultatului câmpului. Dacă acest lucru nu este furnizat, atunci câmpul este actualizat automat. Puteți trece null sau empty la acest parametru pentru a insera un câmp cu o valoare de câmp gol. Dacă nu sunteți sigur de sintaxa codului de câmp, creați mai întâi câmpul în Microsoft Word și comutați pentru a vedea codul câmpului său.

{{% alert color="primary" %}}

Dacă codul dvs. de câmp are un parametru care conține un spațiu, atunci acesta trebuie să fie inclus în semnele de vorbire. În caz contrar, câmpul din ambele Microsoft Word și Aspose.Words poate să nu funcționeze conform așteptărilor, deoarece parametrul este tratat de ambele ca fiind trunchiat.

{{% /alert %}}

Următorul exemplu de cod arată cum să inserați un câmp de îmbinare într-un document folosind **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Aceeași tehnică este utilizată pentru a insera câmpuri imbricate în alte câmpuri.

Următorul exemplu de cod demonstrează cum să inserați câmpuri imbricate într-un alt câmp folosind **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Specificați Locale la nivel de câmp

Un identificator de limbă este o abreviere numerică internațională standard pentru limba dintr-o țară sau regiune geografică. Cu Aspose.Words, Puteți specifica Locale-ul la nivel de câmp folosind proprietatea [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId), care primește sau setează locale-ul câmpului ID.

Următorul exemplu de cod arată cum să utilizați această opțiune:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Introduceți Câmpul Netipat/Gol

Dacă doriți să inserați câmpuri netipate/goale ({}) la fel cum permite Microsoft Word, puteți utiliza metoda [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) cu parametrul [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Pentru a insera un câmp într-un document Word, puteți apăsa combinația de taste "Ctrl + F9".

Următorul exemplu de cod arată cum să inserați un câmp gol în document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Introduceți `COMPARE` Câmp

Câmpul `COMPARE` compară două valori și returnează valoarea numerică 1 dacă comparația este adevărată sau 0 dacă comparația este falsă.

Următorul exemplu de cod arată cum să adăugați `COMPARE` câmpuri folosind DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Introduceți `IF` Câmp

Câmpul `IF` poate fi folosit pentru a evalua argumentele condiționat.

Următorul exemplu de cod arată cum să adăugați `IF` câmpuri folosind DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Inserarea câmpurilor într-un Document folosind FieldBuilder

Modul alternativ de a insera câmpuri în Aspose.Words este clasa [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/). Oferă o interfață fluentă pentru a specifica comutatoarele de câmp și valorile argumentelor ca text, noduri sau chiar câmpuri imbricate.

Următorul exemplu de cod arată cum să inserați un câmp într-un document folosind **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Introducerea câmpurilor folosind DOM

De asemenea, puteți insera diferite tipuri de câmpuri folosind [Aspose.Words Model Obiect Document (DOM)](/words/java/aspose-words-document-object-model/). În această secțiune, vom analiza câteva exemple.

### Inserarea câmpului de îmbinare într-un Document folosind DOM

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- specificați numele câmpului de îmbinare
- specificați formatarea câmpului de îmbinare
- specificați textul care se află între separatorul de câmp și sfârșitul câmpului câmpului de îmbinare
- specificați textul care trebuie inserat după câmpul de îmbinare dacă câmpul nu este gol
- specificați textul care trebuie inserat înainte de câmpul îmbinare dacă câmpul nu este gol

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `MERGE` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Inserarea câmpului Mail Merge `ADDRESSBLOCK` într-un Document folosind DOM

Câmpul `ADDRESSBLOCK` este folosit pentru a insera un bloc de adrese mail merge într-un document Word. `ADDRESSBLOCK` câmpul din documentul Word poate fi reprezentat de clasa [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/). Puteți utiliza clasa **FieldAddressBlock** pentru a efectua următoarele operații:

- specificați dacă să includeți numele țării/regiunii în câmp
- specificați dacă să formatați adresa în funcție de țara / regiunea destinatarului, astfel cum este definită de POST * CODE (Uniunea Poștală Universală 2006)
- specificați numele țării/regiunii excluse
- specificați formatul numelui și adresei
- specificați limba ID utilizată pentru formatarea adresei

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul Mail Merge `ADDRESSBLOCK` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Inserarea câmpului `ADVANCE` într-un Document fără a utiliza DocumentBuilder

Câmpul `ADVANCE` este folosit pentru a compensa textul ulterior într-o linie la stânga, la dreapta, în sus sau în jos. `ADVANCE` câmpul din documentul Word poate fi reprezentat de clasa [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/). Puteți utiliza clasa **FieldAdvance** pentru a efectua următoarele operații:

- specificați numărul de puncte prin care textul care urmează câmpului trebuie mutat vertical de la marginea superioară a paginii
- specificați numărul de puncte prin care textul care urmează câmpului trebuie mutat orizontal de la marginea stângă a coloanei, cadrului sau casetei de text
- specificați numărul de puncte prin care textul care urmează câmpului trebuie mutat la stânga, la dreapta, în sus sau în jos

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `ADVANCE` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Inserarea câmpului `ASK` într-un Document fără a utiliza DocumentBuilder

Câmpul `ASK` este folosit pentru a solicita utilizatorului ca textul să fie atribuit unui marcaj în documentul Word. `ASK` câmpul din documentul Word poate fi reprezentat de clasa [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/). Puteți utiliza clasa **FieldAsk** pentru a efectua următoarele operații:

- specificați numele marcajului
- specificați răspunsul implicit al utilizatorului (valoarea inițială conținută în fereastra prompt)
- specificați dacă răspunsul utilizatorului trebuie primit o dată pentru o operație mail merge
- specificați textul prompt (titlul ferestrei prompt)

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `ASK` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Inserarea câmpului `AUTHOR` într-un Document fără a utiliza DocumentBuilder

Câmpul `AUTHOR` este folosit pentru a specifica numele autorului documentului din proprietățile `Document`. `AUTHOR` câmpul din documentul Word poate fi reprezentat de clasa [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/). Puteți utiliza clasa **FieldAuthor** pentru a efectua următoarele operații:

- specificați numele autorului documentului

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `AUTHOR` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Inserarea câmpului `INCLUDETEXT` într-un Document fără a utiliza DocumentBuilder

Câmpul `INCLUDETEXT` introduce textul și grafica conținute în documentul numit în codul câmpului. Puteți insera întregul document sau o porțiune a documentului la care se face referire printr-un marcaj. Acest câmp din documentul Word este reprezentat de INCLUDETEXT. Puteți utiliza clasa [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) pentru a efectua următoarele operații:

- specificați numele marcajului documentului inclus
- specificați locația documentului

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `INCLUDETEXT` folosind DOM la un paragraf dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Inserarea câmpului `TOA` într-un Document fără a utiliza DocumentBuilder

Câmpul `TOA` (*Table of Authorities*) construiește și introduce un tabel de autorități. Câmpul `TOA` colectează intrările marcate cu câmpurile `TA` (*Table of Authorities Entry*). Microsoft Office Word introduce câmpul `TOA` Când faceți clic pe *Insert Table of Authorities* în grupul **Table of Authorities** din fila **References**. Când vizualizați câmpul `TOA` din document, sintaxa arată astfel:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Pentru mai multe detalii, a se vedea clasa [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) API.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați câmpul `TOA` folosind DOM la un paragraf dintr-un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
