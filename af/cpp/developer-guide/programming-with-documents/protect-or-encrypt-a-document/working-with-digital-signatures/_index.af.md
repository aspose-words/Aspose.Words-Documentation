---
title: Werk Met Digitale Handtekeninge in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Digitale Handtekeninge
linktitle: Werk Met Digitale Handtekeninge
description: "Teken dokumente digitaal en ontdek, tel, verifieer en verwyder bestaande digitale handtekeninge."
type: docs
weight: 160
url: /af/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

'n digitale handtekening is'n tegnologiese implementering van elektroniese handtekeninge om dokumente te onderteken en die ondertekenaar te verifieer om te verseker dat'n dokument nie verander is sedert dit onderteken is nie. Elke digitale handtekening is uniek vir elke ondertekenaar as gevolg van die volg van die PKI protokol om beide openbare en private sleutels te genereer. Om'n dokument digitaal te onderteken beteken om'n handtekening te skep met behulp van die private sleutel van die ondertekenaar waar'n wiskundige algoritme gebruik word om die gegenereerde hash te enkripteer.

Aspose.Words laat jou toe om bestaande digitale handtekeninge op te spoor, te tel of te verifieer, en voeg ook'n nuwe handtekening by jou dokument om enige manipulasie daarin uit te vind. U kan ook alle digitale handtekeninge uit'n dokument verwyder. Gebruik die [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) klas om met digitale handtekeninge te werk.

Hierdie artikel verduidelik hoe om al die bogenoemde te doen om die egtheid en integriteit van'n digitale dokument te bekragtig.

{{% alert color="primary" %}}

**Probeer online**

Jy kan hierdie funksie probeer met ons [Gratis aanlyn handtekening](https://products.aspose.app/words/signature).

{{% /alert %}}

## Ondersteunde Formate

Aspose.Words laat jou toe om met digitale handtekeninge op DOC, OOXML en ODT dokumente te werk en om die gegenereerde dokument in PDF of XPS formaat te onderteken.

## Beperkings Van Digitale Handtekeninge

Die tabel hieronder beskryf'n paar beperkings wat jy kan ondervind terwyl jy met digitale handtekeninge deur Aspose.Words werk, asook'n paar alternatiewe opsies.

| Beperking | Alternatiewe opsie |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Verlies van digitale handtekeninge op'n dokument nadat dit gelaai en gestoor is. Daarom kan die verwerking van'n dokument na'n bediener die verlies van alle digitale handtekeninge sonder'n kennisgewing veroorsaak. | Kyk of'n dokument digitale handtekeninge het en neem die toepaslike stappe indien enige gevind word. Stuur byvoorbeeld'n waarskuwing aan die kliënte wat hulle inlig dat die dokument wat hulle oplaai digitale handtekeninge bevat wat verlore gaan as dit verwerk word. |
| Aspose.Words ondersteun werk met makros in'n dokument. Maar Aspose.Words ondersteun nog nie digitale handtekeninge op makros nie. | Voer die dokument terug na Enige Word-formaat, en gebruik Microsoft Word om'n digitale handtekening by makros te voeg. |

## Ontdek, Tel En Verifieer Digitale Handtekeninge

Aspose.Words laat jou toe om digitale handtekening in'n dokument op te spoor met behulp van die die [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) metode en die [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/) eienskap. Dit is opmerklik dat so'n tjek slegs die feit van die handtekening sal opspoor, maar nie die geldigheid daarvan nie.

'n dokument kan meer as een keer onderteken word, en dit kan deur verskeie gebruikers gedoen word. Om die geldigheid van digitale handtekeninge te kontroleer, moet u dit vanaf die dokument laai met behulp van die [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) - metode en die [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/) - eienskap gebruik. Ook Aspose.Words laat jou toe om'n stel van alle digitale handtekeninge binne'n dokument te tel met behulp van die [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/) eienskap.

Dit alles bied'n doeltreffende en veilige manier om'n dokument op handtekeninge te kontroleer voordat dit verwerk word.

Die volgende kode voorbeeld toon hoe om die teenwoordigheid van digitale handtekeninge te bespeur en te verifieer hulle:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Skep'n Digitale Handtekening {#create-a-digital-signature}

Om'n digitale handtekening te skep, sal jy'n ondertekeningsertifikaat moet laai wat identiteit bevestig. Wanneer jy'n digitaal ondertekende dokument stuur, stuur jy ook jou sertifikaat en publieke sleutel.

Aspose.Words laat jou Toe Om X. 509 sertifikaat te skep, 'n digitale sertifikaat wat die internasionaal aanvaarde X. 509 PKI standaard gebruik om te verifieer dat'n openbare sleutel behoort aan die ondertekenaar wat in die sertifikaat ingesluit is. Om dit te doen, gebruik die [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) metode binne die [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder) klas.

Die volgende afdelings verduidelik hoe om'n digitale handtekening, handtekeninglyn by te voeg, en hoe om'n gegenereerde PDF dokument te onderteken.

### Teken'n Dokument

Aspose.Words laat jou toe om'n DOC, DOCX, of ODT dokument digitaal te teken deur die [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) metode en [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/) eienskappe te gebruik.

Die volgende kode voorbeeld toon hoe om dokumente te onderteken met behulp van'n sertifikaat houer en teken opsies:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Voeg'n Handtekeninglyn by

'n handtekeninglyn is'n visuele voorstelling van'n digitale handtekening in'n dokument. Aspose.Words laat jou toe om'n handtekeninglyn in te voeg deur die [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/) metode te gebruik. U kan ook die parameters vir hierdie voorstelling stel deur die [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/) klas te gebruik.

Die onderstaande prent toon byvoorbeeld hoe geldige en ongeldige handtekeninge vertoon kan word.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

As'n dokument ook'n handtekeninglyn en geen digitale handtekening bevat nie, is daar'n funksie om die gebruiker te vra om'n handtekening by te voeg.

Die volgende kode voorbeeld toon hoe om'n dokument met'n persoonlike sertifikaat en'n spesifieke handtekening lyn te onderteken:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Teken'n Gegenereerde PDF Dokument {#sign-a-generated-pdf-document}

Aspose.Words laat jou toe om te teken en kry al die besonderhede van'n PDF dokument met behulp van die [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/) eienskappe.

Die volgende kode voorbeeld toon hoe om'n gegenereerde PDFte teken:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Kry Die Digitale Handtekening Waarde

Aspose.Words bied ook die vermoë om die digitale handtekening waarde van'n digitaal onderteken dokument as'n byte skikking met behulp van die [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/) eiendom te haal.

Die volgende kode voorbeeld toon hoe om die digitale handtekening waarde as'n byte skikking van'n dokument te verkry:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Verwyder Digitale Handtekeninge

Aspose.Words laat jou toe om alle digitale handtekeninge van'n getekende dokument te verwyder deur die [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) metode te gebruik.

Die volgende kode voorbeeld toon hoe om te laai en te verwyder digitale handtekeninge van'n dokument:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Let daarop dat u nie slegs een digitale handtekening in u dokument kan verwyder nie.

{{% /alert %}}
