---
title: Sit PDF na Ander Dokument Formate in C#
second_title: Aspose.Words vir .NET
articleTitle: Sit PDF na Ander Dokument Formate
linktitle: Sit PDF na Ander Dokument Formate
type: docs
description: "Skakel PDF om Na Woordformate soos DOCX, DOC, beeldformate soos JPG of PNG, of enige ander formate wat ondersteun word deur Aspose.Words met behulp van C#."
keywords: convert pdf to other formats c#
weight: 45
url: /af/net/convert-pdf-to-other-document-formats/
---

Aspose.Words kan selfs so'n komplekse formaat soos PDF laai. Dit bied nuwe geleenthede: dit is moontlik om PDF om te skakel na Word of ander formate wat gebruikers ver vooruit bring in die oplossing van baie toegepaste probleme.

## Voorwaardes

* Bygevoeg verwysing na Aspose.Words pakket ***OR*** om Aspose.Words.Pdf2woord.dll.
* Ten minste .NET Framework 4.6.1 of .NET Standard 2.0. Doelwitte soos .NET Core 2.x of 3.0, .NET 5, en Xamarin word ook ondersteun deur verenigbaarheid met .NET Standard.

## Omskep PDF Na Verskillende Formate {#convert-pdf-to-other-formats}

Die gewildste omskakeling van PDF is omskakeling na Microsoft Word formate soos DOCX, DOC, sowel as beeldformate soos JPG of PNG. Met dit gesê, die omskakeling van'n dokument van een formaat na'n ander presteer op'n bekende manier.

Die volgende kode voorbeeld toon hoe om'n dokument van PDF om te skakel na DOCX:

{{< gist "aspose-words-gists" "a0d52b62c1643faa76a465a41537edfc" "pdf-to-docx.cs" >}}

## Spesifiseer Lasopsies wanneer PDF {#specify-load-options-when-importing-pdf}Ingevoer Word

Aspose.Words bied u die [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) klas, wat meer presiese beheer oor hoe PDF dokumente gelaai word, moontlik maak.

Die meeste eienskappe erf of oorlaai eienskappe wat reeds in die `LoadOptions` klas bestaan. Benewens hulle, is'n aantal eienskappe gespesifiseer vir PDF formaat. Byvoorbeeld, jy kan die [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) en [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) eienskappe gebruik om die bladsy reeks te definieer wat gelaai moet word vanaf'n PDF dokument, en die [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) eienskappe om te beheer of beelde oorgeslaan moet word wanneer PDF gelaai word. Nog'n ondersteun parameter is die [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), wat moet voorsien word vir [wagwoordbeskermde dokumente](/words/net/protect-documents-and-parts-of-documents/).

## Ondersteun PDF Inhoud {#supported-pdf-content}

PDF2word plugin ondersteun tans die volgende datatipes:

* Teks paragrawe
* Beelde
* Tabelle
* Lyste
* Kop-en voetstukke
* Voetnotas
* Bladsynommers
* Regs-na-links teks (met'n paar beperkings)
* Gesoek PDFs (voor beelde sal verwyder word in die guns van die agtergrond teks)

## Toekomstige Kenmerke {#planned-features}

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
| `FileLoadException` | 'n PDF lêer kan nie verwerk word vir een of ander rede.<br />{{% alert color="primary" %}}u kan die kwessie aan die ontwikkelingspan rapporteer vir'n gedetailleerde ondersoek met behulp van die [tegniese ondersteuning](/words/net/technical-support/).{{% /alert %}} |
| `DrmProtectedFileException` | 'n PDF lêer word beskerm deur Adobe DRM en kan nie deur Pdf2word ontkodeer word nie. |
| `PasswordProtectedFileException` | Die korrekte wagwoord moet voorsien word vir'n wagwoordbeskermde PDF. |

## Sien Ook

* [Nuget verwysing na Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

