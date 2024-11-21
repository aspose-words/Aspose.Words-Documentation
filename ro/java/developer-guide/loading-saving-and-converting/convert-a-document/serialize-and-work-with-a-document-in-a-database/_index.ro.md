---
title: Serializați și lucrați cu un Document într-o bază de date
second_title: Aspose.Words pentru Java
articleTitle: Serializați și lucrați cu un Document într-o bază de date
linktitle: Serializați și lucrați cu un Document într-o bază de date
description: "Convertiți un document într-o matrice de octeți pentru a lucra cu acest document într-o bază de date. Puteți stoca și prelua un document în și din Baza de date folosind Java."
type: docs
weight: 40
url: /ro/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Una dintre sarcinile pe care poate fi necesar să le îndepliniți atunci când lucrați cu documente este stocarea și preluarea obiectelor **Document** către și dintr-o bază de date. De exemplu, acest lucru ar fi necesar dacă implementați orice tip de sistem de gestionare a conținutului. Toate versiunile anterioare ale documentelor trebuie stocate în sistemul de baze de date. Capacitatea de a stoca documente în baza de date este, de asemenea, extrem de utilă atunci când aplicația dvs. oferă un serviciu bazat pe web.

Aspose.Words oferă posibilitatea de a converti un document într-o matrice de octeți pentru lucrul ulterior cu acest document într-o bază de date.

## Conversia unui Document în matrice de octeți

Pentru a stoca un document într-o bază de date sau pentru a pregăti un document pentru transmitere pe web, este adesea necesar să serializați documentul pentru a obține o matrice de octeți.

Pentru a serializa un obiect [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) în Aspose.Words:

1. Salvați-l într-un **MemoryStream** Folosind supraîncărcarea metodei [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) a clasei **Document**.
1. Apelați metoda **ToArray**, care returnează o matrice de octeți care reprezintă documentul sub formă de octeți.

Pașii de mai sus pot fi apoi inversați pentru a încărca octeții înapoi într-un obiect **Document**.

{{% alert color="primary" %}}

Formatul de salvare selectat este important pentru a asigura păstrarea celei mai mari fidelități la salvarea și reîncărcarea în obiectul **Document**. Din acest motiv, se sugerează utilizarea unei serii de formate de fișiere OOXML.

{{% /alert %}}

Exemplul de mai jos arată cum să serializați un obiect **Document** pentru a obține o matrice de octeți și apoi cum să deserializați matricea de octeți pentru a obține din nou un obiect **Document**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Stocați, citiți și ștergeți un Document într-o bază de date

Această secțiune arată cum să salvați un document într-o bază de date și apoi să îl încărcați înapoi într-un obiect `Document` pentru a lucra cu acesta. Pentru simplitate, numele fișierului este cheia utilizată pentru stocarea și preluarea documentelor din Baza de date. Baza de date conține două coloane. Prima coloană "FileName " este stocată ca șir și este utilizată pentru identificarea documentelor. A doua coloană "FileContent " este stocată ca obiect `BLOB` care stochează obiectul document în forma de octeți.

Următorul exemplu de cod arată cum să configurați o conexiune la o bază de date și să executați comenzi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

În acest exemplu, folosim baza de date MySQL pentru a stoca un document Aspose.Words.

{{% /alert %}}

Următorul exemplu de cod arată cum să salvați un document în baza de date, apoi să citiți din nou același document și, în final, să ștergeți înregistrarea care conține documentul din Baza de date:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Salvarea unui Document într-o bază de date

Pentru a salva un document într-o bază de date, convertiți acest document într-o matrice de octeți, așa cum este descris la începutul acestui articol. Apoi, salvați această matrice de octeți într-un câmp de bază de date.

Următorul exemplu de cod arată cum să salvați un document în baza de date specificată:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Specificați commandString, care este o expresie SQL care face toată munca:

- Pentru a salva un document în baza de date, se folosește comanda "INSERT INTO" și se specifică un tabel împreună cu valorile a două câmpuri de înregistrare – FileName și FileContent. Pentru a evita parametrii suplimentari, numele fișierului este preluat din obiectul **Document** în sine. Valoarea câmpului `FileContent` este atribuită octeților din fluxul de memorie, care conține o reprezentare binară a documentului stocat.
- Linia de cod rămasă execută comanda care stochează documentul Aspose.Words în baza de date.

### Preluarea unui Document dintr-o bază de date

Pentru a prelua un document din Baza de date, selectați înregistrarea care conține datele documentului ca o matrice de octeți. Apoi încărcați matricea de octeți din înregistrare în **MemoryStream** și creați un obiect **Document** care va încărca documentul din **MemoryStream**.

Următorul exemplu de cod arată cum să preluați și să returnați un document din Baza de date specificată folosind numele fișierului ca cheie pentru a prelua acest document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Comanda SQL "SELECT * FROM " este utilizată pentru a prelua înregistrarea corespunzătoare pe baza numelui fișierului.

{{% /alert %}}

### Ștergerea unui Document dintr-o bază de date

Pentru a șterge un document din Baza de date, utilizați comanda corespunzătoare SQL fără manipulări pe obiectul **Document**.

Următorul exemplu de cod arată cum să ștergeți un document din Baza de date, utilizând numele fișierului pentru a prelua înregistrarea:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
