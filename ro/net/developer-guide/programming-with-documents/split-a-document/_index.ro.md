---
title: Split a Document in C#
second_title: Aspose.Words pentru .NET
articleTitle: Împărțiți un document
linktitle: Împărțiți un document
description: "Împărți un document în mai multe fișiere folosind C#. Folosiți caracteristica Split pentru a împărți eficient un document prin titluri sau secțiuni, precum și prin pagini sau intervale de pagini."
type: docs
weight: 90
url: /ro/net/split-a-document/
---

*Splitting* sau *împărțirea unui document*" este procesul de divizare a unui document mare într-un număr mai mare de fișiere mai mici. Există diferite motive pentru care să împărțiți un fișier. De exemplu, ai nevoie doar de câteva pagini dintr-un anumit document şi nu întregul document. Sau din motive de confidențialitate doriți să împărtășiți doar anumite părți ale unui document cu alții. Cu funcția de divizare poți obține doar părțile necesare din document și să faci acțiunile necesare cu ele, de exemplu pentru a marca, salva sau trimite.

Aspose.Words îți oferă un mod eficient de a împărți un document într-mai multe documente prin intermediul anteturilor sau secțiunilor. Puteți, de asemenea, să împărțiți un document prin pagini sau prin intervale de pagini. Ambele opțiuni de divizare vor fi descrise în acest articol.

Pentru a împărți un document în fiși mai mici folosind Aspose.Words, trebuie să urmezi acești pași:

1. Încarcă documentul în orice format acceptat.
1. Împărțiți documentul.
1. Salvaţi documentele rezultante.

După ce ai împărțit un document, vei putea deschide toate documentele de ieșire care vor începe cu paginile necesare, textul, etc.

{{% alert color="primary" %}}

**Încearcă online**

Puteți încerca această funcționalitate cu [Free online document splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Divizați un document folosind criterii diferite {#split-a-document-using-different-criteria}

Aspose.Words vă permite să împărțiți documentele EPUB sau HTML în capitole conform unor criterii diferite. În acest proces, stilul și dispunerea documentului sursă sunt păstrate pentru documentele de ieșire.

Poți specifica criterii folosind enumerarea [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/). Așadar, puteți împărți un document în capitole folosind unul dintre următoarele criterii sau puteți combina mai mult de un criteriu împreună:

headings paragraf",
- secțiune pauză,
- întrerupere coloană,
- pauză de pagină.

Când salvezi rezultatul în HTML, Aspose.Words salvează fiecare capitol ca fișier HTML separat. Ca rezultat, documentul va fi împărțit în mai multe fișiere HTML. Când salvezi rezultatul în EPUB, Aspose.Words salvează rezultatul într-un singur fișier EPUB indiferent de valoarea `DocumentSplitCriteria` pe care ai folosit-o. Deci utilizarea DocumentSplitCriteria pentru documentele EPUB afectează doar aspectul conținutului în aplicațiile de citire: conținutul va fi împărțit în capitole și documentul nu va mai apărea continuu.

{{% alert color="primary" %}}

"Nu puteți împărți un document folosind proprietatea [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) atunci când salvați în format MHTML."

{{% /alert %}}

În această secțiune luăm în considerare doar unele dintre criteriile de divizare posibile.

### Împărțiți un document după anteturi {#split-a-document-by-headings}

Pentru a împărți un document în capitole prin titluri, folosiți valoarea **HeadingParagraph** a proprietății **DocumentSplitCriteria**.

Dacă aveți nevoie să împărțiți un document la un nivel specific de antet paragrafe, cum ar fi antetele 1, 2 și 3, folosiți de asemenea proprietatea [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/). Outputul va fi împărțit în paragrafe formatate cu nivelul de antet specificat.

Exemplul de cod următor arată cum să împărțiți un document în părți mai mici folosind anteturi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Vă rugăm să rețineți că pentru acest criteriu, Aspose.Words acceptă doar salvarea în formatul HTML atunci când este împărțit.

Când se salvează în EPUB, documentul nu este împărțit în mai multe fișiere, și va exista doar un singur fişier de ieșire.

### Împărțiți un document după secțiuni {#split-a-document-by-sections}

Aspose.Words vă permite, de asemenea, să utilizați întreruperi ale secțiunii pentru a împărți documente și pentru a le salva în HTML. Pentru acest scop folosiți **SectionBreak** ca **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Există o altă modalitate de a împărți documentul sursă în mai multe documente de ieșire și poți alege orice format de ieșire acceptat de Aspose.Words.

Exemplul următor de cod arată cum să se împartă un document în părți mai mici folosind întreruperi de secțiune (fără utilizarea proprietății `DocumentSplitCriteria`):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Împarte prin pagini {#splitting-by-pages}

Puteți, de asemenea, să împărțiți o pagină de document pe fiecare pagină, pe intervale de pagini sau începând cu numerele de pagini specificate. În cazul respectiv metoda [ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) poate face treaba.

Această secţiune descrie mai multe cazuri de utilizare pentru împărţirea documentelor în pagini folosind clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/) şi metoda **ExtractPages**.

{{% alert color="primary" %}}

Puteți folosi orice [output format supported by Aspose.Words](/words/net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Din cauza nuanțelor numeroase care apar în timpul reducerii numărului de pagini, un potrivire completă cu Microsoft Word layout este o sarcină destul de complicată. Prin urmare, în funcție de complexitatea documentului, pot exista mici diferențe în aspectul final al documentului față de documentul original.

{{% /alert %}}

### Împarte o pagină de document pe pagină {#split-a-document-page-by-page}

Aspose.Words vă permite să împărțiți un document format din mai multe pagini, pagină cu pagină.

Exemplul de cod următor arată cum să împarţi un document şi să salvezi fiecare pagină ca document separat:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Split a document by page ranges {#split-a-document-by-page-ranges}

Aspose.Words permite împărțirea unui document cu mai multe pagini în funcție de intervale de pagini. Poţi împărţi un fişier în mai multe fişiere cu diferite intervale de pagini sau poţi selecta doar un interval şi să salvezi doar acea parte a documentului sursă. Notă că poți alege intervalul de pagini în funcție de numărul maxim și minim al paginilor unui document.

Exemplul de cod următor arată cum să împarți un document în părți mai mici prin intervale de pagini cu indicii specifice de început și sfârșit:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Opțiunea de callback pentru a salva un document {#callback-option-for-saving-a-document}

Puteți folosi proprietatea [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) pentru a controla cum Aspose.Words salvează părțile documentului atunci când acest document este exportat în formatul HTML. Această proprietate vă permite să redenumiți fișierele de ieșire sau chiar să le redirecționați către fluxuri personalizate.

Vă rugăm să rețineți că acest callback nu este util atunci când se salvează în format EPUB, deoarece toate părțile de ieșire trebuie să fie salvate într-un singur recipient - fișierul .epub. Deci, redirecționarea fluxului nu este suportată, iar efectul redenumirii nu este vizibil deoarece fișierele sunt redenumite în interiorul containerului.

## Combina documentul împărțit cu alt document {#merge-the-split-document-with-another-file}

Aspose.Words vă permite să uniți documentul împărțit cu alt document pentru a forma un nou document. Acest lucru se poate numi ca și fuziune a documentelor.

Exemplul de cod următor arată cum să combinați un document împărțit cu alt document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
