---
title: Convertiți PDF în alte formate de documente
second_title: Aspose.Words pentru Python via .NET
articleTitle: Convertiți PDF în alte formate de documente
linktitle: Convertiți PDF în alte formate de documente
type: docs
description: "Convertiți PDF în formate Word precum DOCX, DOC, formate de imagine precum JPG sau PNG sau orice alte formate acceptate de Aspose folosind `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /ro/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words poate încărca chiar și un format atât de complex ca PDF. Acest lucru deschide noi oportunități: este posibil să convertiți PDF în Word sau în alte formate care aduc utilizatorii cu mult înainte în rezolvarea multor probleme aplicate.

## Conversia PDF în alte formate {#convert-pdf-to-other-formats}

Cea mai populară conversie din PDF este conversia în formate Microsoft Word precum DOCX, DOC, precum și formate de imagine precum JPG sau PNG. Acestea fiind spuse, conversia unui document dintr-un format în altul funcționează într-un mod familiar.

Următorul exemplu de cod arată cum se convertește un document din PDF în DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Specificați opțiunile de încărcare atunci când importați PDF {#specify-load-options-when-importing-pdf}

Aspose.Words vă oferă clasa [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), care permite un control mai precis asupra modului în care sunt încărcate documentele PDF.

Majoritatea proprietăților moștenesc sau supraîncărcă proprietăți care există deja în clasa [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). În plus față de acestea, un număr de proprietăți sunt specificate pentru formatul PDF. De exemplu, puteți utiliza proprietățile [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) și [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) pentru a defini intervalul de pagini care urmează să fie încărcat dintr-un document PDF și proprietățile [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) pentru a controla dacă imaginile trebuie omise la încărcarea PDF. Un alt parametru acceptat este [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), care trebuie furnizat pentru documentele protejate prin parolă.

## Suportat PDF Conținut {#supported-pdf-content}

PDF2Word pluginul acceptă în prezent următoarele tipuri de date:

* Paragrafe Text
* Imagini
* Tabele
* Liste
* Anteturi și subsoluri
* Notă de subsol
* Numere de pagină
* Text de la dreapta la stânga (cu unele limitări)
* Căutabil PDFs (imaginile frontale vor fi eliminate în favoarea textului de fundal)

## Caracteristici Planificate {#planned-features}

Unele caracteristici sunt încă în dezvoltare timpurie sau incluse în foaia de parcurs pentru dezvoltare:

* Cuprins
* OCR pentru căutare și Non-căutare PDFs
* Raport de progres
* Text cu mai multe coloane
* Formule matematice
* Mai multe câmpuri automate (în afară de `PAGE` și NUMPAGES)

## PDF Excepții De Încărcare

În timpul unei conversii de document PDF, se poate întâmpla una dintre următoarele excepții:

| Excepție | Descriere |
| -------------------------------- | ------------------------------------------------------------ |
| *FileLoadException* | Un fișier PDF nu poate fi procesat din anumite motive.<br />{{% alert color="primary" %}}puteți raporta problema echipei de dezvoltare pentru o investigație detaliată utilizând [suport tehnic](/words/python-net/technical-support/).{{% /alert %}} |
| *DrmProtectedFileException* | Un fișier PDF este protejat de Adobe DRM și nu poate fi decodat de Pdf2Word. |
| *PasswordProtectedFileException* | Parola corectă trebuie furnizată pentru un PDF protejat prin parolă. |


