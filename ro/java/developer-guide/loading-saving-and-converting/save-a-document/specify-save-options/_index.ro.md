---
title: Specificați opțiunile de salvare în Java
second_title: Aspose.Words pentru Java
articleTitle: Specificați Opțiunile De Salvare
linktitle: Specificați Opțiunile De Salvare
description: "Setați proprietăți avansate atunci când salvați un document folosind Java pentru a oferi un control mai precis asupra procesului."
type: docs
weight: 20
url: /ro/java/specify-save-options/
---

Când salvați un document, puteți seta câteva proprietăți avansate. Aspose.Words vă oferă clasa [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), care permite un control mai precis al procesului de salvare. Există supraîncărcări ale metodei **Save** care acceptă un obiect **SaveOptions** - ar trebui să fie un obiect al unei clase derivate din clasa **SaveOptions**. Fiecare format de salvare are o clasă corespunzătoare care conține opțiuni de salvare pentru acest format de salvare, de exemplu, există [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) pentru salvarea în format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) pentru salvarea în format Markdown sau [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) pentru salvarea într-o imagine. Acest articol oferă exemple de lucru cu unele clase de opțiuni derivate din **SaveOptions**.

Următorul exemplu de cod arată cum să setați opțiunile de salvare înainte de a salva documentul în HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Articolul descrie câteva proprietăți pe care le puteți controla atunci când salvați un document.

## Criptați un Document cu o parolă

Utilizați proprietatea **Password** pentru a obține sau a seta o parolă pentru un document criptat. Utilizați proprietatea **Password** a clasei corespunzătoare pentru a lucra cu formatul de document selectat.

De exemplu, când salvați un document în format DOC sau DOT, utilizați proprietatea [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) a clasei [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

Următorul exemplu de cod arată cum să setați o parolă pentru a cripta un document folosind metoda de criptare RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Când salvați un document în format ODT, utilizați proprietatea [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) a clasei [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

Următorul exemplu de cod arată cum să încărcați și să salvați OpenDocument criptat cu o parolă:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Nu toate formatele acceptă criptarea și utilizarea proprietății **Password**.

## Afișați Notificările De Progres Pentru Salvarea Documentelor

Aspose.Words oferă posibilitatea de a utiliza proprietatea [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) pentru a primi notificări despre progresul salvării documentelor.

Acum este disponibil la salvarea în DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, sau TXT formate.

## Actualizați timpul de creare a documentului

Aspose.Words oferă posibilitatea de a utiliza proprietatea [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) pentru a obține sau seta data creării documentului în UTC. De asemenea, puteți actualiza această valoare înainte de a salva folosind opțiunea [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

Următorul exemplu de cod arată cum să actualizați timpul de creare a documentului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Actualizați Ultima Proprietate Salvată

Aspose.Words oferă posibilitatea de a utiliza proprietatea [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) pentru a obține sau a seta o valoare care determină dacă proprietatea [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) este actualizată înainte de salvare.

Următorul exemplu de cod arată cum să setați această proprietate și să salvați documentul:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Salvați imaginea alb-negru cu un Bit PE format Pixel

Pentru a controla opțiunile de salvare a imaginii, se utilizează clasa **ImageSaveOptions**. De exemplu, puteți utiliza proprietatea [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) pentru a seta formatul pixelilor pentru imaginile generate. Vă rugăm să rețineți că formatul pixelilor imaginii de ieșire poate diferi de valoarea setată din cauza lucrării GDI+.

Următorul exemplu de cod arată cum să salvați o imagine alb-negru cu un bit PE format pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
