---
title: Omskep PDF Na Ander Dokumentformate
second_title: Aspose.Words vir Python via .NET
articleTitle: Omskep PDF Na Ander Dokumentformate
linktitle: Omskep PDF Na Ander Dokumentformate
type: docs
description: "Skakel PDF om Na Woordformate soos DOCX, DOC, beeldformate soos JPG of PNG, of enige ander formate wat Deur Aspose ondersteun word met behulp van `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /af/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words kan selfs so'n komplekse formaat soos PDF laai. Dit bied nuwe geleenthede: dit is moontlik om PDF om te skakel na Word of ander formate wat gebruikers ver vooruit bring in die oplossing van baie toegepaste probleme.

## Omskep PDF Na Ander Formate {#convert-pdf-to-other-formats}

Die gewildste omskakeling van PDF is omskakeling na Microsoft Word formate soos DOCX, DOC, sowel as beeldformate soos JPG of PNG. Met dit gesê, die omskakeling van'n dokument van een formaat na'n ander presteer op'n bekende manier.

Die volgende kode voorbeeld toon hoe om'n dokument van PDF om te skakel na DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Spesifiseer Lasopsies wanneer PDF {#specify-load-options-when-importing-pdf}Ingevoer Word

Aspose.Words bied u die [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) klas, wat meer presiese beheer oor hoe PDF dokumente gelaai word, moontlik maak.

Die meeste eienskappe erf of oorlaai eienskappe wat reeds in die [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) klas bestaan. Benewens hulle, is'n aantal eienskappe gespesifiseer vir PDF formaat. Byvoorbeeld, jy kan die [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) en [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) eienskappe gebruik om die bladsy reeks te definieer wat gelaai moet word vanaf'n PDF dokument, en die [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) eienskappe om te beheer of beelde oorgeslaan moet word wanneer PDF gelaai word. Nog'n ondersteun parameter is die [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), wat verskaf moet word vir wagwoord-beskermde dokumente.

## Ondersteun PDF Inhoud {#supported-pdf-content}

PDF2Word plugin ondersteun tans die volgende datatipes:

* Teks paragrawe
* Beelde
* Tabelle
* Lyste
* Kop-en voetstukke
* Voetnotas
* Bladsynommers
* Regs-na-links teks (met'n paar beperkings)
* Soekbare PDFs (voorste beelde sal verwyder word ten gunste van agtergrond teks)

## Beplande Kenmerke {#planned-features}

Sommige kenmerke is nog in vroeë ontwikkeling of ingesluit in die ontwikkeling padkaart:

* Inhoudsopgawe
* OCR Vir Soekbare en Nie-Soekbare PDFs
* Vorderingsverslag
* Multikolomme teks
* Wiskundige formules
* Meer outomatiese velde (behalwe `PAGE` en NUMPAGES)

## PDF Laai Uitsonderings

Tydens'n PDF dokument omskakeling, kan een van die volgende uitsonderings gebeur:

| Uitsondering | Beskrywing |
| -------------------------------- | ------------------------------------------------------------ |
| *FileLoadException* | 'n PDF lêer kan nie verwerk word vir een of ander rede.<br />{{% alert color="primary" %}}u kan die kwessie aan die ontwikkelingspan rapporteer vir'n gedetailleerde ondersoek met behulp van die [tegniese ondersteuning](/words/python-net/technical-support/).{{% /alert %}} |
| *DrmProtectedFileException* | 'n PDF lêer word beskerm deur Adobe DRM en kan nie deur Pdf2Word ontkodeer word nie. |
| *PasswordProtectedFileException* | Die korrekte wagwoord moet voorsien word vir'n wagwoordbeskermde PDF. |


