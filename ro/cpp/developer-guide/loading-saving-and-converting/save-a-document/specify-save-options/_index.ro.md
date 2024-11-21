---
title: Specificați opțiunile de salvare în C++
second_title: Aspose.Words pentru C++
articleTitle: Specificați Opțiunile De Salvare
linktitle: Specificați Opțiunile De Salvare
description: "Controlați mai precis procesul de salvare."
type: docs
weight: 10
url: /ro/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Când salvați un document, puteți seta câteva proprietăți avansate. Aspose.Words vă oferă clasa [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), care permite un control mai precis al procesului de salvare. Există supraîncărcări ale metodei **Save** care acceptă un obiect **SaveOptions** - ar trebui să fie un obiect al unei clase derivate din clasa **SaveOptions**. Fiecare format de salvare are o clasă corespunzătoare care conține opțiuni de salvare pentru acest format de salvare, de exemplu, există [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) pentru salvarea în format PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) pentru salvarea în format Markdown sau [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) pentru salvarea într-o imagine. Acest articol oferă exemple de lucru cu unele clase de opțiuni derivate din **SaveOptions**.

Următorul exemplu de cod arată cum să setați opțiunile de salvare înainte de a salva documentul în HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Articolul descrie câteva proprietăți pe care le puteți controla atunci când salvați un document.

## Criptați un Document cu o parolă

Utilizați proprietatea **Password** pentru a obține sau a seta o parolă pentru un document criptat. Utilizați proprietatea **Password** a clasei corespunzătoare pentru a lucra cu formatul de document selectat.

De exemplu, când salvați un document în format DOC sau DOT, utilizați proprietatea [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) a clasei [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Următorul exemplu de cod arată cum să setați o parolă pentru a cripta un document folosind metoda de criptare RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Când salvați un document în format ODT, utilizați proprietatea [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) a clasei [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Următorul exemplu de cod arată cum să încărcați și să salvați OpenDocument criptat cu o parolă:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Nu toate formatele acceptă criptarea și utilizarea proprietății **Password**.

## Afișați Notificările De Progres Pentru Salvarea Documentelor

Aspose.Words oferă posibilitatea de a utiliza proprietatea [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) pentru a primi notificări despre progresul salvării documentelor.

Acum este disponibil la salvarea în DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, sau TXT formate.

## Actualizați timpul de creare a documentului

Aspose.Words oferă posibilitatea de a utiliza proprietatea [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) pentru a obține sau seta data creării documentului în UTC. De asemenea, puteți actualiza această valoare înainte de a salva folosind opțiunea [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Următorul exemplu de cod arată cum să actualizați timpul de creare a documentului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Actualizați Ultima Proprietate Salvată

Aspose.Words oferă posibilitatea de a utiliza proprietatea [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) pentru a obține sau a seta o valoare care determină dacă proprietatea [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) este actualizată înainte de salvare.

Următorul exemplu de cod arată cum să setați această proprietate și să salvați documentul:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Salvați imaginea alb-negru cu un Bit PE format Pixel

Pentru a controla opțiunile de salvare a imaginii, se utilizează clasa **ImageSaveOptions**. De exemplu, puteți utiliza proprietatea [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) pentru a seta formatul pixelilor pentru imaginile generate. Vă rugăm să rețineți că formatul pixelilor imaginii de ieșire poate diferi de valoarea setată din cauza lucrării GDI+.

Următorul exemplu de cod arată cum să salvați o imagine alb-negru cu un bit PE format pixel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
