---
title: Comparați documentele în Java
second_title: Aspose.Words pentru Java
articleTitle: Comparați Documentele
linktitle: Comparați Documentele
type: docs
description: "Compara două documente în orice formate acceptate și arată modificările de conținut. Puteți aplica Opțiuni avansate atunci când comparați folosind Java."
weight: 60
url: /ro/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Compararea documentelor este un proces care identifică modificările între două documente și conține modificările ca revizuiri. Acest proces compară oricare două documente, inclusiv versiunile unui document specific, apoi modificările dintre ambele documente vor fi afișate ca revizuiri în primul document.

Metoda de comparație se realizează prin compararea cuvintelor la nivel de caracter sau la nivel de cuvânt. Dacă un cuvânt conține o schimbare de cel puțin un caracter, în rezultat, diferența va fi afișată ca o schimbare a întregului cuvânt, nu un caracter. Acest proces de comparație este o sarcină obișnuită în industriile juridice și financiare.

În loc să căutați manual diferențele dintre documente sau între diferite versiuni ale acestora, puteți utiliza Aspose.Words pentru compararea documentelor și obținerea modificărilor de conținut în formatare, antet/subsol, tabele și multe altele.

Acest articol explică modul de comparare a documentelor și modul de specificare a proprietăților avansate de comparare.

{{% alert color="primary" %}}

**Încercați online**

Puteți compara două documente online utilizând [Compararea documentelor online](https://products.aspose.app/words/comparison) unealtă.

Rețineți că metoda de comparație, descrisă mai jos, este utilizată în acest instrument pentru a asigura obținerea unor rezultate egale. Deci, veți obține aceleași rezultate chiar și utilizând instrumentul de comparație online sau utilizând metoda de comparație în Aspose.Words.

{{% /alert %}}

## Limitări și formate de fișiere acceptate {#limitations-and-supported-file-formats}

Compararea documentelor este o caracteristică foarte complexă. Există părți variate ale combinației de conținut care trebuie analizate pentru a recunoaște toate diferențele. Motivul acestei complexități este că Aspose.Words își propune să obțină aceleași rezultate de comparație ca algoritmul de comparație Microsoft Word.

Limitarea generală pentru două documente care sunt comparate este că acestea nu trebuie să aibă revizuiri înainte de a apela metoda de comparare, deoarece această limitare există în Microsoft Word.

{{% alert color="primary" %}}

Rețineți că puteți compara oricare două documente din cadrul [formate de fișiere acceptate](/words/java/supported-document-formats/). Practic, puteți compara obiectele documentului și chiar puteți crea acele obiecte de la zero fără a avea niciun format specific.

{{% /alert %}}

## Comparați Două Documente {#compare-two-documents}

Când comparați documente, diferențele dintre ultimul document și primul apar ca revizuiri ale primului. Când modificați un document, fiecare editare va avea propria revizuire după rularea metodei de comparare.

Aspose.Words vă permite să identificați diferențele de documente folosind metoda [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) - Aceasta este similară cu caracteristica de comparare a documentelor Microsoft Word. Vă permite să verificați documente sau versiuni de documente pentru a găsi diferențe și modificări, inclusiv modificări de formatare, cum ar fi modificări de font, modificări de spațiere, adăugarea de cuvinte și paragrafe.

Ca urmare a comparației, documentele pot fi determinate ca egale sau nu egale. Termenul de documente "egale" înseamnă că metoda de comparație nu este capabilă să reprezinte modificările ca revizuiri. Aceasta înseamnă că atât textul documentului, cât și formatarea textului sunt aceleași. Dar pot exista și alte diferențe între documente. De exemplu, Microsoft Word acceptă numai revizuiri de format pentru stiluri și nu puteți reprezenta inserarea/ștergerea stilului. Deci documentele pot avea un set diferit de stiluri, iar metoda **Compare** încă nu produce revizuiri.

Următorul exemplu de cod arată cum să verificați dacă două documente sunt egale sau nu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Următorul exemplu de cod arată cum să aplicați pur și simplu metoda `Compare` la două documente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Specificați Opțiunile Avansate De Comparație {#specify-advanced-comparing-properties}

Există multe proprietăți diferite ale clasei [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) pe care le puteți aplica atunci când doriți să comparați documente.

De exemplu, Aspose.Words vă permite să ignorați modificările efectuate în timpul unei operații de comparație pentru anumite tipuri de obiecte din documentul original. Puteți selecta proprietatea corespunzătoare pentru tipul de Obiect, cum ar fi[IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), și altele prin setarea lor la "adevărat".

În plus, Aspose.Words oferă proprietatea [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) cu care puteți specifica dacă să urmăriți modificările după caracter sau după cuvânt.

O altă proprietate comună este alegerea documentului pentru a arăta modificările de comparație. De exemplu, caseta de dialog " comparați documentele "din Microsoft Word are opțiunea" Afișați modificările în " – aceasta afectează și rezultatele comparației. Aspose.Words oferă proprietatea [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) care servește acestui scop.

Următorul exemplu de cod arată cum să setați proprietățile avansate de comparare:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
