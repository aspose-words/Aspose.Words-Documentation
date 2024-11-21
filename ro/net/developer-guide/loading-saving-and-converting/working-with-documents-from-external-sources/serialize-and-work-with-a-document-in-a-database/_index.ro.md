---
title: Serialize Document într-o Bază de Date
second_title: Aspose.Words pentru .NET
articleTitle: Serializați și lucrați cu un document într-o bază de date
linktitle: Serializați și lucrați cu un document într-o bază de date
description: "Convertiţi un document într-un tablou de octeţi pentru a lucra cu acest document într-o bază de date folosind C#. Puteți stoca și recupera un document către și de la baza de date."
type: docs
weight: 10
url: /ro/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Unul dintre sarcinile pe care le puteți avea de realizat atunci când lucrați cu documente este stocarea și recuperarea **Document** obiecte dintr-o bază de date. De exemplu, acest lucru ar fi necesar dacă implementați orice tip de sistem de gestionare a conținutului. Toate versiunile anterioare ale documentelor trebuie stocate în sistemul de baze de date. Posibilitatea de a stoca documente în baza de date este, de asemenea, extrem de utilă atunci când aplicația dvs. oferă un serviciu bazat pe web.

Aspose.Words oferă capacitatea de a converti un document într-un tablou de octeți pentru o lucru ulterioară cu acest document într-o bază de date.

## Convertește un document într-un byte array

Pentru a stoca un document într-o bază de date sau pentru a pregăti un document pentru transmiterea pe web, este adesea necesar să serializați documentul pentru a obține o matrice de octeți.

Pentru a serializa o [Document](https://reference.aspose.com/words/net/aspose.words/document/) obiect în Aspose.Words:

1. Salvează-l la o **MemoryStream** folosind metoda suprascrisă [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) din clasa **Document**.
1. Apelati metoda **ToArray**, care returneaza un tablou de octeti reprezentând documentul în forma octetilor.

Pașii de mai sus pot fi apoi inversați pentru a încărca din nou octeții în **Document** obiect.

{{% alert color="primary" %}}

Formatul de salvare selectat este important pentru a asigura că se păstrează cea mai mare fidelitate atunci când se salvează și se reîncarcă în obiectul **Document**. Din acest motiv se sugerează folosirea unei serii de formate de fișiere OOXML.

{{% /alert %}}

Exemplul de mai jos arată cum se serializează o **Document** obiect pentru a obține un tablou de octeți și apoi cum se deserializează tabloul de octeți pentru a obține din nou un **Document** obiect:

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "docx-to-byte.cs" >}}

Poţi descărca fişierul şablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Stochează, citește și șterge un document într-o bază de date

Această secţiune arată cum să salvezi un document într-o bază de date şi apoi să-l încarci înapoi într-un obiect `Document` pentru a lucra cu el. Pentru simplitate, numele fișierului este cheia folosită pentru a stoca și a obține documente din baza de date. Baza de date conține două coloane. Prima coloană, "NumeFișier", este stocată ca o șir și este utilizată pentru a identifica documentele. "A doua coloană "FileContent" este stocată ca un `BLOB` obiect care stochează obiectul document în formă de octet."

Exemplul de cod următor arată cum se stabilește o conexiune la o bază de date și se execută comenzile:

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "open-database-connection.cs" >}}

{{% alert color="primary" %}}

În acest exemplu, folosim baza de date Microsoft.mdb pentru a stoca un Aspose.Words document.

{{% /alert %}}

Exemplul de cod următor arată cum să salvezi un document în baza de date, apoi să citești din nou același document și, în final, să ștergi înregistrarea care conține documentul din baza de date:

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "open-retrieve-and-delete.cs" >}}

### Salvează un document într-o bază de date

Pentru a salva un document într-o bază de date converti acest document într-un tablou de octeți așa cum se descrie la începutul acestui articol. Apoi, salvează acest tablou de octeți într-un câmp al bazei de date.

Exemplul de cod de mai jos arată cum să salvezi un document în baza de date specificată:

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "store-to-database.cs" >}}

Specificați 'commandString', care este o expresie SQL care face toată munca:

- Pentru salvarea unui document în baza de date, se folosește comanda "INSERT INTO" și se specifică o masă împreună cu valorile a două câmpuri de înregistrare - FileName și FileContent. Pentru a evita parametri suplimentari, numele fișierului este luat din **Document** obiect în sine. Valoarea câmpului `FileContent` este atribuită octeți din fluxul de memorie, care conține o reprezentare binară a documentului stocat.
- Linia rămasă de cod execută comanda care stochează Aspose.Words documentul în baza de date.

### Recuperează un document dintr-o bază de date

Pentru a recupera un document din baza de date, selectați înregistrarea care conține datele documentului ca o matrice de octeți. Apoi încărcaţi tabloul de octeţi din înregistrare în **MemoryStream** şi creati o **Document** obiect care va încărca documentul din **MemoryStream**.

Exemplul următor de cod arată cum să se recupereze şi să se returneze un document din baza de date specificată folosind numele fișierului ca o cheie pentru a obține acest document:

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "read-from-database.cs" >}}

{{% alert color="primary" %}}

Comanda SQL "SELECT * FROM" este utilizată pentru a obține înregistrarea potrivită pe baza numelui fișierului.

{{% /alert %}}

### Șterge un document dintr-o bază de date

Pentru a şterge un document din baza de date, folosiţi comanda SQL corespunzătoare fără nicio manipulare asupra obiectului **Document**.

Exemplul următor de cod arată cum să ștergeți un document din baza de date utilizând numele fișierului pentru a obține înregistrarea:

{{< gist "aspose-words-gists" "f8a622f8bc1cf3c2fa8a7a9be359faa2" "delete-from-database.cs" >}}
