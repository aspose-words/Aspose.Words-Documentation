---
title: Werken met digitale handtekeningen
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met digitale handtekeningen
linktitle: Werken met digitale handtekeningen
description: "Documenten digitaal ondertekenen en bestaande digitale handtekeningen detecteren, tellen, verifiëren en verwijderen met behulp van Python."
type: docs
weight: 40
url: /nl/python-net/working-with-digital-signatures/
---

Een digitale handtekening wordt gebruikt om een document te authenticeren om vast te stellen dat de afzender van het document is wie ze zeggen te zijn en de inhoud van het document niet is geknoeid.

Aspose.Words ondersteunt documenten met digitale handtekeningen en biedt toegang tot deze documenten zodat u digitale handtekeningen kunt detecteren en valideren op een document en een gegenereerd PDF-document met een bijgeleverde certificaat kunt ondertekenen. Op dit moment worden digitale handtekeningen ondersteund op DOC-, OOXML- en ODT-documenten. Het ondertekenen van gegenereerde documenten wordt ondersteund in PDF-formaat.

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online handtekening](https://products.aspose.app/words/signature).

{{% /alert %}}

## Digitale handtekeningen worden niet bewaard bij Openen en Opslaan

Een belangrijk punt om op te merken is dat een document geladen en vervolgens opgeslagen met behulp van Aspose.Words zal verliezen alle digitale handtekeningen ondertekend op het document. Dit is door het ontwerp als een digitale handtekening ervoor zorgt dat de inhoud niet is gewijzigd en bevestigt bovendien wie het document heeft ondertekend. Deze beginselen zouden ongeldig worden verklaard indien de oorspronkelijke handtekeningen naar het resulterende document zouden worden overgebracht.

Als u documenten verwerkt die naar een server zijn geüpload, kan dit betekenen dat u een document dat naar uw server is geüpload op deze manier kunt beschadigen zonder het te weten. Daarom is het het beste om te controleren op digitale handtekeningen op een document en de passende actie te ondernemen als er iets wordt gevonden, bijvoorbeeld een waarschuwing kan worden verzonden aan de klant hen informeren dat het document dat ze passeren bevat digitale handtekeningen die verloren gaan als het wordt verwerkt. U kunt sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

De bovenstaande code maakt gebruik van de [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) methode om te detecteren of een document digitale handtekeningen bevat zonder het document eerst te laden. Dit biedt een efficiënte en veilige manier om een document te controleren op handtekeningen voordat ze worden verwerkt. Wanneer uitgevoerd, geeft de methode een [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) object dat de eigenschap levert [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Deze eigenschap keert terug true indien het document een of meer digitale handtekeningen bevat. Het is belangrijk om op te merken dat deze methode de handtekeningen niet valideert, het bepaalt alleen of handtekeningen aanwezig zijn. Het valideren van digitale handtekeningen valt onder het volgende hoofdstuk.

{{% alert color="primary" %}}

U kunt ook controleren of een document heeft digitale handtekeningen na het laden door het controleren van de `Count` eigendom van de [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) verzameling.

{{% /alert %}}

## Digitale handtekeningen over macro's (VBA-projecten)

Digitale handtekeningen op macro's kunnen niet worden geopend of ondertekend. Dit komt omdat Aspose.Words niet rechtstreeks over macro's in een document gaat. Digitale handtekeningen op macro's worden echter bewaard bij het exporteren van het document naar elk woordformaat. Deze handtekeningen kunnen worden bewaard op VBA code omdat de binaire inhoud van de macro's niet worden gewijzigd, zelfs als het document zelf wordt gewijzigd.

### Toegang tot en verificatie van digitale handtekeningen

Een document kan meerdere digitale handtekeningen hebben. Deze handtekeningen zijn allemaal toegankelijk via de [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) verzameling. Elk terugkerend object is een [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) die een enkele digitale handtekening vertegenwoordigt die tot het document behoort. Dit biedt leden die u toestaan om de geldigheid van de handtekening te controleren.

De belangrijkste eigenschap om te controleren met digitale handtekeningen is de geldigheid van elke handtekening in het document. Alle handtekeningen in het document kunnen onmiddellijk worden gevalideerd door de [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) eigendom. Dit zal terugkeren. true indien alle handtekeningen in het document geldig zijn of indien het document geen handtekeningen heeft en false indien ten minste één digitale handtekening niet geldig is.

Elke handtekening kan ook individueel worden gevalideerd door te bellen [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Een handtekening kan niet geldig zijn om verschillende redenen, bijvoorbeeld het document is gewijzigd sinds ondertekening of het certificaat is verlopen. Daarnaast zijn er ook extra details van de handtekening beschikbaar. De onderstaande codemonster toont hoe elke handtekening in een document te valideren en basisinformatie over de handtekening weer te geven. U kunt sjabloonbestand van dit voorbeeld downloaden van [Hier](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Worddocumenten ondertekenen

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) klasse biedt methoden voor ondertekening document. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) methode tekent bron document met behulp van gegeven [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) met digitale handtekening en schrijft ondertekend document naar bestemming stream

Onderstaand voorbeeld laat zien hoe eenvoudig document te ondertekenen

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Onderstaand voorbeeld toont hoe je versleuteld document kunt ondertekenen

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Word-document ondertekenen met ondertekeningsregel

U kunt het brondocument ondertekenen met behulp van gegeven [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) en [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) met digitale handtekening en schrijft ondertekend document naar bestemming bestand. Gebruik [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) klasse kunt u opties voor document ondertekening opgeven. Onderstaand voorbeeld laat zien hoe je een nieuwe ondertekeningsregel aanmaakt en document tekent

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Onderstaand voorbeeld laat zien hoe bestaande ondertekeningsregel te wijzigen en document te ondertekenen

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Word-document ondertekenen met handtekeningprovider-identificatie

Onderstaand voorbeeld toont hoe Word-document te ondertekenen met behulp van handtekening provider identifier. De cryptografische service provider (CSP) is een onafhankelijke software module die daadwerkelijk voert cryptografie algoritmen voor authenticatie, codering en encryptie. MS Office behoudt de waarde van {00000000-00000-00000-00000-000000000000} voor de leverancier van de standaardhandtekening.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Nieuwe ondertekening aanmaken Regel Teken Word-document met behulp van Provider Identifier

Onderstaand voorbeeld laat zien hoe handtekening regel en teken te maken Word document met behulp van handtekening provider identifier.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## De digitale ondertekeningswaarde ophalen

Aspose.Words biedt ook de mogelijkheid om de digitale handtekening waarde van een digitaal ondertekend document als een byte array met behulp van de [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) eigendom.

Het volgende voorbeeld van code laat zien hoe je de digitale handtekeningwaarde als bytearray van een document kunt verkrijgen:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}