---
title: Specificați opțiunile de salvare în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Specificați Opțiunile De Salvare
linktitle: Specificați Opțiunile De Salvare
description: "Controlați mai precis procesul de salvare folosind Python."
type: docs
weight: 10
url: /ro/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Când salvați un document, puteți seta câteva proprietăți avansate. Aspose.Words vă oferă clasa [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), care permite un control mai precis al procesului de salvare. Există supraîncărcări ale metodei [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) care acceptă un obiect [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) - ar trebui să fie un obiect al unei clase derivate din clasa [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Fiecare format de salvare are o clasă corespunzătoare care conține opțiuni de salvare pentru acest format de salvare, de exemplu, există [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) pentru salvarea în format PDF sau [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) pentru salvarea într-o imagine. Acest articol oferă exemple de lucru cu unele clase de opțiuni derivate din [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Următorul exemplu de cod arată cum să setați opțiunile de salvare înainte de a salva documentul în HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Articolul descrie câteva proprietăți pe care le puteți controla atunci când salvați un document.

## Criptați un Document cu o parolă

Utilizați proprietatea **password** pentru a obține sau a seta o parolă pentru un document criptat. Utilizați proprietatea **password** a clasei corespunzătoare pentru a lucra cu formatul de document selectat.

De exemplu, când salvați un document în format DOC sau DOT, utilizați proprietatea [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) a clasei [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

Următorul exemplu de cod arată cum să setați o parolă pentru a cripta un document folosind metoda de criptare RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Când salvați un document în format Docx, utilizați proprietatea [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) a clasei [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

Următorul exemplu de cod arată cum să încărcați și să salvați Docx criptat cu o parolă:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Nu toate formatele acceptă criptarea și utilizarea proprietății **password**.

## Actualizați timpul de creare a documentului

Aspose.Words oferă posibilitatea de a utiliza proprietatea [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) pentru a obține sau seta data creării documentului în UTC. De asemenea, puteți actualiza această valoare înainte de a salva folosind opțiunea [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

Următorul exemplu de cod arată cum să actualizați timpul de creare a documentului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Actualizați Ultima Proprietate Salvată

Aspose.Words oferă posibilitatea de a utiliza proprietatea [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) pentru a obține sau a seta o valoare care determină dacă proprietatea [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) este actualizată înainte de salvare.

Următorul exemplu de cod arată cum să setați această proprietate și să salvați documentul:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Salvați imaginea alb-negru cu un Bit PE format Pixel

Pentru a controla opțiunile de salvare a imaginii, se utilizează clasa [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/). De exemplu, puteți utiliza proprietatea [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) pentru a seta formatul pixelilor pentru imaginile generate. Vă rugăm să rețineți că formatul pixelilor imaginii de ieșire poate diferi de valoarea setată din cauza activității skia.

Următorul exemplu de cod arată cum să salvați o imagine alb-negru cu un bit PE format pixel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
