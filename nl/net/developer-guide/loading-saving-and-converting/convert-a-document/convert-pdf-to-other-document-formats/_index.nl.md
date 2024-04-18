---
title: PDF omzetten naar andere documentformaten in C#
second_title: Aspose.Words voor .NET
articleTitle: PDF omzetten naar andere documentformaten
linktitle: PDF omzetten naar andere documentformaten
type: docs
description: "PDF converteren naar Word-formaten zoals DOCX, DOC, afbeeldingsformaten zoals JPG of PNG, of andere formaten ondersteund door Aspose.Words gebruik C#."
keywords: convert pdf to other formats c#
weight: 45
url: /nl/net/convert-pdf-to-other-document-formats/
---

Aspose.Words kan zelfs zo'n complex formaat als PDF laden. Dit opent nieuwe mogelijkheden: het is mogelijk om PDF te converteren naar Word of andere formaten die gebruikers ver vooruit brengen in het oplossen van veel toegepaste problemen.

## Vereisten

* Toegevoegde verwijzing naar Aspose.Words pakket ***OR*** tot Aspose.WordsPdf2Word.dll.
* Tenminste .NET Framework 4.6.1 of .NET Standard 2.0. Doelen zoals .NET Core 2,x of 3,0, .NET 5, en Xamarin worden ook ondersteund door compatibiliteit met .NET Standard.

## PDF converteren naar verschillende formaten {#convert-pdf-to-other-formats}

De meest populaire conversie van PDF is conversie naar Microsoft Word formaten zoals DOCX, DOC, evenals afbeeldingsformaten zoals JPG of PNG. Met dat gezegd, het omzetten van een document van het ene formaat naar het andere voert op een vertrouwde manier.

Het volgende voorbeeld van code laat zien hoe u een document van PDF naar DOCX kunt converteren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Specificeer laadopties bij het importeren van PDF {#specify-load-options-when-importing-pdf}

Aspose.Words geeft u de [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) klasse, waardoor nauwkeurigere controle mogelijk is over hoe PDF-documenten worden geladen.

De meeste eigenschappen erven of overbelasting eigenschappen die al bestaan in de `LoadOptions` Klasse. Naast hen, een aantal eigenschappen zijn gespecificeerd voor PDF-formaat. U kunt bijvoorbeeld de [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) en [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) eigenschappen om het te laden paginabereik van een PDF-document te definiëren, en de [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) eigenschappen om te bepalen of afbeeldingen moeten worden overgeslagen bij het laden van PDF. Een andere ondersteunde parameter is de [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), waarin moet worden voorzien [wachtwoord beveiligde documenten](/words/net/protect-documents-and-parts-of-documents/).

## Ondersteunde PDF Inhoud {#supported-pdf-content}

PDF2Word plugin ondersteunt momenteel de volgende data types:

* Tekst paragrafen
* Afbeeldingen
* Tabellen
* Lijsten
* Headers en voetteksten
* Voetnoten
* Paginanummers
* Rechts-naar-links tekst (met enkele beperkingen)
* Doorzoekbare PDF's (voorkant afbeeldingen worden verwijderd ten gunste van de achtergrond tekst)

## Toekomstige functies {#planned-features}

Sommige functies bevinden zich nog in de vroege ontwikkeling of zijn opgenomen in het ontwikkelingsmap:

* Inhoudsopgave
* OCR voor doorzoekbare en niet-zoekbare PDF's
* Voortgangsverslag
* Multikolomtekst
* Wiskunde formules
* Meer automatische velden (naast `PAGE` En numpages)

## PDF Uitzonderingen bij laden

Tijdens een PDF-documentconversie kan een van de volgende uitzonderingen worden gemaakt:

|  Vrijstelling |  Omschrijving |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  Een PDF-bestand kan om een of andere reden niet worden verwerkt.<br/>{{% alert color="primary" %}}U kunt het probleem melden aan het ontwikkelingsteam voor een gedetailleerd onderzoek met behulp van de [Technische ondersteuning](/words/nl/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  Een PDF-bestand wordt beschermd door Adobe DRM en kan niet worden gedecodeerd door Pdf2Word |
|  `PasswordProtectedFileException`  |  Het juiste wachtwoord moet worden opgegeven voor een wachtwoord beveiligde PDF |

## Zie ook

* [Nuget verwijzing naar Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

