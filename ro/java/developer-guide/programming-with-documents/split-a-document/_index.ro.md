---
title: Împărțiți un Document în Java
second_title: Aspose.Words pentru Java
articleTitle: Împărțiți un Document
linktitle: Împărțiți un Document
description: "Aspose.Words pentru Java vă oferă o modalitate eficientă de a împărți un document în mai multe documente prin titluri sau secțiuni, precum și pagini sau intervale de pagini."
type: docs
weight: 90
url: /ro/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* sau *split a document* este procesul de rupere a unui document mare într-un număr mai mare de fișiere mai mici. Există diverse motive pentru a împărți un fișier. De exemplu, aveți nevoie doar de câteva pagini dintr-un anumit document și nu de cel întreg. Sau din motive de confidențialitate, doriți să partajați doar unele părți ale unui document cu alții. Cu funcția de divizare, puteți obține doar părțile necesare ale documentului și puteți efectua acțiunile necesare cu acestea, de exemplu, pentru a marca, salva sau trimite.

Aspose.Words vă oferă o modalitate eficientă de a împărți un document în mai multe documente prin titluri sau secțiuni. De asemenea, puteți împărți un document pe pagini sau pe intervale de pagini. Ambele opțiuni de divizare vor fi descrise în acest articol.

Pentru a împărți un document în fișiere mai mici folosind Aspose.Words, trebuie să urmați acești pași:

1. Încărcați documentul în orice format acceptat.
1. Împărțiți documentul.
1. Salvați documentele de ieșire.

După ce împărțiți un document, veți putea deschide toate documentele de ieșire care vor începe cu paginile necesare, textul etc.

{{% alert color="primary" %}}

**Încercați online**

Puteți încerca această funcționalitate cu [Splitter de documente online gratuit](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Împărțiți un Document folosind diferite criterii {#split-a-document-using-different-criteria}

Aspose.Words vă permite să împărțiți documentele EPUB sau HTML în capitole în funcție de diferite criterii. În acest proces, stilul și aspectul documentului sursă sunt păstrate pentru documentele de ieșire.

Puteți specifica criterii folosind enumerarea [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/). Deci, puteți împărți un document în capitole folosind unul dintre următoarele criterii sau puteți combina mai multe criterii împreună:

- rubrica paragraf,
- pauză de secțiune,
- pauză de coloană,
- pauză de pagină.

Când salvați ieșirea în HTML, Aspose.Words Salvați fiecare capitol individual ca fișier separat HTML. Ca rezultat, documentul va fi împărțit în mai multe fișiere HTML. Când salvați ieșirea în EPUB, Aspose.Words Salvați rezultatul într-un singur fișier EPUB, indiferent de valoarea `DocumentSplitCriteria` pe care ați folosit-o. Deci, utilizarea documentelor DocumentSplitCriteria Pentru EPUB afectează doar aspectul conținutului lor în aplicațiile reader: conținutul va fi împărțit în capitole și documentul nu va mai apărea continuu.

{{% alert color="primary" %}}

Nu puteți împărți un document folosind proprietatea [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) când salvați în formatul MHTML.

{{% /alert %}}

În această secțiune, luăm în considerare doar câteva dintre posibilele criterii divizate.

### Împărțiți un Document după titluri {#split-a-document-by-headings}

Pentru a împărți un document în capitole după titluri, utilizați valoarea **HeadingParagraph** a proprietății **DocumentSplitCriteria**.

Dacă trebuie să împărțiți un document la un anumit nivel de paragrafe de titlu, cum ar fi titlurile 1, 2 și 3, utilizați și proprietatea [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). Ieșirea va fi împărțită la paragrafe formatate cu nivelul de titlu specificat.

Următorul exemplu de cod arată cum să împărțiți un document în părți mai mici prin titlu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Vă rugăm să rețineți că pentru aceste criterii, Aspose.Words acceptă numai salvarea în format HTML la divizare.

Când salvați în EPUB, documentul nu este împărțit în mai multe fișiere și va exista un singur fișier de ieșire.

### Împărțiți un Document pe secțiuni {#split-a-document-by-sections}

Aspose.Words vă permite, de asemenea, să utilizați pauzele de secțiune pentru a împărți documentele și a le salva în HTML. În acest scop, utilizați **SectionBreak** ca **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Există o altă modalitate de a împărți documentul sursă în mai multe documente de ieșire și puteți alege orice format de ieșire acceptat de Aspose.Words.

Următorul exemplu de cod arată cum să împărțiți un document în părți mai mici prin pauze de secțiune (fără a utiliza proprietatea `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Împărțit pe pagini {#splitting-by-pages}

De asemenea, puteți împărți o pagină de document pe pagină, pe intervale de pagini sau începând cu numerele de pagină specificate. În acest caz, metoda [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) poate face treaba.

Această secțiune descrie mai multe cazuri de utilizare a împărțirii documentelor prin paginare folosind clasa [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) și metoda **ExtractPages**.

{{% alert color="primary" %}}

Puteți folosi orice [formatul de ieșire acceptat de Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Datorită numeroaselor nuanțe care apar în timp ce se reduce numărul de pagini, o potrivire completă cu aspectul Microsoft Word este o sarcină destul de complicată. Prin urmare, în funcție de complexitatea documentului, pot exista mici diferențe în aspectul documentului rezultat față de documentul original.

{{% /alert %}}

### Împărțiți un Document pagină cu pagină {#split-a-document-page-by-page}

Aspose.Words vă permite să împărțiți un document cu mai multe pagini pagină cu pagină.

Următorul exemplu de cod arată cum să împărțiți un document și să salvați fiecare pagină ca document separat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Împărțiți un Document pe intervale de pagini {#split-a-document-by-page-ranges}

Aspose.Words permite împărțirea unui document cu mai multe pagini pe intervale de pagini. Puteți împărți un fișier în mai multe fișiere cu diferite intervale de pagini sau puteți selecta doar un interval și puteți salva doar această parte a documentului sursă. Rețineți că puteți alege intervalul de pagini în funcție de numărul maxim și minim de pagini al unui document.

Următorul exemplu de cod arată cum să împărțiți un document în părți mai mici în funcție de intervalul de pagini cu indici specifici de început și de sfârșit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opțiunea de apel invers pentru a salva un Document {#callback-option-for-saving-a-document}

Puteți utiliza proprietatea [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) pentru a controla modul în care Aspose.Words salvează părțile documentului atunci când acest document este exportat în format HTML. Această proprietate vă permite să redenumiți fișierele de ieșire sau chiar să le redirecționați în fluxuri personalizate.

Vă rugăm să rețineți că acest apel invers nu este util atunci când salvați în EPUB deoarece toate piesele de ieșire trebuie salvate într – un singur container-the .fișier epub. Deci, redirecționarea fluxului nu este acceptată, iar efectul redenumirii nu este vizibil, deoarece fișierele sunt redenumite în interiorul containerului.

## Îmbinați documentul divizat cu un alt Document {#merge-the-split-document-with-another-file}

Aspose.Words vă permite să îmbinați documentul divizat de ieșire cu un alt document pentru a forma un document nou. Aceasta poate fi numită îmbinarea documentelor.

Următorul exemplu de cod arată cum să îmbinați un document divizat cu un alt document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
