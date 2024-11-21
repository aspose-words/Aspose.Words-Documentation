---
title: Convertiți PDF în alte formate de documente în C#
second_title: Aspose.Words pentru .NET
articleTitle: Converteste PDF-ul în alte formate de documente
linktitle: Converteste PDF-ul în alte formate de documente
type: docs
description: "Convertaţi fişiere PDF în formate de tip Word, precum DOCX, DOC, şi formate de imagine precum JPG sau PNG, sau orice alte formate acceptate de Aspose.Words folosind C#."
keywords: convert pdf to other formats c#
weight: 45
url: /ro/net/convert-pdf-to-other-document-formats/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words poate încărca chiar și un astfel de format complex ca PDF. Aceasta deschide noi oportunități: este posibil să convertești PDF în Word sau alte formate, care îi aduc pe utilizatori departe în rezolvarea multor probleme aplicate.

## Pre-requisites

* Adăugată referință la Aspose.Words pachet *** OR*** pentru Aspose.Words.Pdf2Word.dll.
* Cel puțin .NET Framework 4.6.1 sau .NET Standard 2.0. "Țintele precum .NET Core 2.x sau 3.0, .NET 5 și Xamarin sunt, de asemenea, acceptate prin compatibilitate cu .NET Standard."

## Converteste PDF în Formate Diverse {#convert-pdf-to-other-formats}

Cea mai populară conversie de la PDF este conversia în Microsoft Word formate precum DOCX, DOC, precum și formate de imagini precum JPG sau PNG. Cu acest lucru spus, convertirea unui document dintr-un format în altul se face într-o manieră familiară.

Exemplul de cod următor arată cum să converţi un document din PDF în DOCX:

{{< gist "aspose-words-gists" "a0d52b62c1643faa76a465a41537edfc" "pdf-to-docx.cs" >}}

## Specificați opțiunile de încărcare atunci când importați PDF {#specify-load-options-when-importing-pdf}

Aspose.Words vă oferă clasa [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/), care permite un control mai precis al modului în care sunt încărcate documentele PDF.

Cele mai multe proprietăți moștenesc sau suprascriu proprietățile care deja există în clasa `LoadOptions`. În afară de acestea, un număr de proprietăți sunt specificate pentru formatul PDF. De exemplu, puteți utiliza proprietățile [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) și [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) pentru a defini intervalul de pagini care urmează să fie încărcate dintr-un document PDF, iar proprietățile [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) pentru a controla dacă imaginile ar trebui să fie omise atunci când se încarcă un fișier PDF. "Un alt parametru susținut este [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), care trebuie furnizat pentru [password-protected documents](/words/net/protect-documents-and-parts-of-documents/)."

## Conținutul PDF suportat {#supported-pdf-content}

PDF2Word plugin suportă în prezent următoarele tipuri de date:

* Paragrafe de text
* Imaginile
* Tabeluri
* Liste
* Anteturi și subsoluri
* Notele de subsol
:* Numerele paginilor
* Text dreapta la stânga (cu unele limitări)
* PDF-uri căutabile (imaginile din față vor fi eliminate în favoarea textului de fundal)

## Funcționalități viitoare {#planned-features}

Unele caracteristici sunt încă în stadiu incipient de dezvoltare sau incluse pe harta dezvoltării

* Cuprins
* OCR pentru PDF-uri căutabile și necăutabile
* Raport de progres
* Text cu coloane multiple
* Formule matematice
* Mai multe câmpuri automate (pe lângă `PAGE` și NUMPAGES)

## PDF excepții încărcare

În timpul conversiei unui document PDF, ar putea apărea una dintre următoarele excepții:

| Excepție | Descriere |
| -------------------------------- | ------------------------------------------------------------ |
| `FileLoadException` | Un fișier PDF nu poate fi procesat pentru un anumit motiv. <br /> {{% alert color="primary" %}}Puteți raporta problema echipei de dezvoltare pentru o anchetă detaliată folosind [technical support](/words/net/technical-support/). {{% /alert %}} |
| `DrmProtectedFileException` | Un fișier PDF este protejat de Adobe DRM și nu poate fi decodat de Pdf2Word. |
| `PasswordProtectedFileException` | Parola corectă trebuie furnizată pentru un fișier PDF protejat prin parolă. |

## Vezi și

* [Nuget reference to Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

