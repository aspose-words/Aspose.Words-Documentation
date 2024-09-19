---
title: Specificaţi Opţiuni de Salvare în C#
second_title: Aspose.Words pentru .NET
articleTitle: Specificaţi Opţiunile de Salvare
linktitle: Specificaţi Opţiunile de Salvare
description: "Mai precis, controlaţi procesul de salvare folosind C#."
type: docs
weight: 10
url: /ro/net/specify-save-options/
---

Când salvezi un document poți seta niște proprietăți avansate. Aspose.Words îți oferă clasa [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), care permite controlul mai precis al procesului de salvare. Există suprascrieri ale metodei **Save** care acceptă un obiect **SaveOptions** – acesta ar trebui să fie un obiect de o clasă derivată din clasa **SaveOptions**. Fiecare format de salvare are o clasă corespunzătoare care deține opțiunile de salvare pentru acest format de salvare, de exemplu, există [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) pentru salvarea în formatul PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) pentru salvarea în formatul Markdown, sau [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) pentru salvarea într-un fișier imagine. Acest articol oferă exemple de lucru cu unele clase opționale derivate din **SaveOptions**.

Exemplul următor de cod arată cum să setați opțiunile de salvare înainte de a salva documentul în format HTML:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "export-text-input-form-field-as-text.cs" >}}

{{% alert color="primary" %}}

Puteţi descărca fişierul şablonului acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Articolul descrie câteva proprietăți pe care le puteți controla atunci când salvați un document.

## Criptați un document cu o parolă

Utilizați proprietatea **Password** pentru a obține sau seta o parolă pentru un document criptat. Utilizați proprietatea **Password** a clasei corespunzătoare pentru a lucra cu formatul de document selectat.

De exemplu, atunci când salvezi un document în formatul DOC sau DOT, foloseşte proprietatea [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) a clasei [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/).

Exemplul de cod următor arată cum se setează o parolă pentru a cripta un document folosind metoda de criptare RC4:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

Când salvezi un document în format .odt, foloseşte proprietatea [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) a clasei [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/).

Exemplul de cod de mai jos prezintă cum se încarcă și se salvează un document OpenDocument criptat cu o parolă:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}

Nu toate formaturile acceptă criptarea și utilizarea proprietății **Password**.

## Arată notificări de progres pentru salvarea documentelor

Aspose.Words oferă posibilitatea de a folosi proprietatea [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) pentru a primi notificări despre progresul salvării documentului.

Acum este disponibil pentru a salva în formate DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack sau TXT.

## Actualizați timpul de creare a documentului

Aspose.Words oferă posibilitatea de a utiliza proprietatea [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) pentru a obține sau seta data creării documentului în UTC. De asemenea, poți actualiza această valoare înainte de a salva folosind opțiunea [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

Exemplul următor de cod arată cum să actualizați ora creării documentului:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "update-last-printed.cs" >}}

## Actualizați ultima proprietate salvată

Aspose.Words oferă posibilitatea de a folosi proprietatea [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) pentru a obține sau seta o valoare determinând dacă proprietatea [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) este actualizată înainte de salvarea.

Exemplul următor de cod arată cum să setați această proprietate și să salvați documentul:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "update-last-saved-time.cs" >}}

## Control resurse externe atunci când salvăm un document în HTML sau SVG

Pentru a converti HTML sau SVG în PDF, pur şi simplu invocă metoda [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) şi specifică un nume de fişier cu extensia ".pdf". Dacă doriți să încărcați imagini, CSS, etc., din surse externe, puteți folosi [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

## Salvează imagine alb-negru cu un bit pe pixel format

Pentru a controla opțiunile de salvare a imaginilor, se folosește clasa **ImageSaveOptions**. De exemplu, puteți folosi proprietatea [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) pentru a seta formatul pixelilor pentru imaginile generate. Notați că formatul pixelilor imaginii generate poate diferi de valoarea stabilită datorită funcționării GDI+.

Exemplul de cod de mai jos arată cum se salvează o imagine alb-negru cu un format de un singur bit pe pixel:

{{< gist "aspose-words-gists" "83e5c469d0e72b5114fb8a05a1d01977" "format1-bpp-indexed.cs" >}}
