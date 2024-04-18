---
title: PDF omzetten naar andere documentformaten
second_title: Aspose.Words voor Python via .NET
articleTitle: PDF omzetten naar andere documentformaten
linktitle: PDF omzetten naar andere documentformaten
type: docs
description: "PDF converteren naar Word-formaten zoals DOCX, DOC, afbeeldingsformaten zoals JPG of PNG, of andere formaten ondersteund door Aspose met behulp van `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /nl/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words kan zelfs zo'n complex formaat als PDF laden. Dit opent nieuwe mogelijkheden: het is mogelijk om PDF te converteren naar Word of andere formaten die gebruikers ver vooruit brengen in het oplossen van veel toegepaste problemen.

## PDF omzetten naar andere formaten {#convert-pdf-to-other-formats}

De meest populaire conversie van PDF is conversie naar Microsoft Word formaten zoals DOCX, DOC, evenals afbeeldingsformaten zoals JPG of PNG. Met dat gezegd, het omzetten van een document van het ene formaat naar het andere voert op een vertrouwde manier.

Het volgende voorbeeld van code laat zien hoe u een document van PDF naar DOCX kunt converteren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Specificeer laadopties bij het importeren van PDF {#specify-load-options-when-importing-pdf}

Aspose.Words geeft u de [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) klasse, waardoor nauwkeurigere controle mogelijk is over hoe PDF-documenten worden geladen.

De meeste eigenschappen erven of overbelasting eigenschappen die al bestaan in de [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) Klasse. Naast hen, een aantal eigenschappen zijn gespecificeerd voor PDF-formaat. U kunt bijvoorbeeld de [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) en [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) eigenschappen om het te laden paginabereik van een PDF-document te definiëren, en de [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) eigenschappen om te bepalen of afbeeldingen moeten worden overgeslagen bij het laden van PDF. Een andere ondersteunde parameter is de [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), die moeten worden verstrekt voor wachtwoord beveiligde documenten.

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

## Geplande functies {#planned-features}

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
|   *FileLoadException*               |  Een PDF-bestand kan om een of andere reden niet worden verwerkt.<br/>{{% alert color="primary" %}}U kunt het probleem melden aan het ontwikkelingsteam voor een gedetailleerd onderzoek met behulp van de [Technische ondersteuning](/words/nl/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  Een PDF-bestand wordt beschermd door Adobe DRM en kan niet worden gedecodeerd door Pdf2Word |
|   *PasswordProtectedFileException*  |  Het juiste wachtwoord moet worden opgegeven voor een wachtwoord beveiligde PDF |


