---
title: Werken met digitale handtekeningen in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met digitale handtekeningen
linktitle: Werken met digitale handtekeningen
description: "Documenten digitaal ondertekenen en bestaande digitale handtekeningen detecteren, tellen, verifiëren en verwijderen met behulp van Java."
type: docs
weight: 30
url: /nl/java/working-with-digital-signatures/
---

Een digitale handtekening is een technologische implementatie van elektronische handtekeningen om documenten te ondertekenen en de ondertekening te authenticeren om te garanderen dat een document sinds de ondertekening niet is gewijzigd. Elke digitale handtekening is uniek voor elke tekenaar vanwege het volgen van het PKI protocol om zowel publieke als private sleutels te genereren. Het digitaal ondertekenen van een document betekent een handtekening maken met behulp van de private sleutel van de ondertekening waar een wiskundig algoritme wordt gebruikt om de gegenereerde hash te versleutelen.

Aspose.Words Hiermee kunt u bestaande digitale handtekeningen detecteren, tellen of verifiëren en ook een nieuwe handtekening toevoegen aan uw document om erachter te komen of er geknoeid wordt. U kunt ook alle digitale handtekeningen uit een document verwijderen. Gebruik de [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) klas om te werken met digitale handtekeningen.

Dit artikel legt uit hoe je al het bovenstaande kunt doen om de authenticiteit en integriteit van een digitaal document te valideren.

{{% alert color="primary" %}}

Merk op dat u alleen toegang hebt tot digitale handtekeningen van uw document wanneer u de Java 6 versie en hoger.

{{% /alert %}}

{{% alert color="primary" %}}

**Probeer online**

U kunt deze functionaliteit proberen met onze [Gratis online tekst](https://products.aspose.app/words/signature).

{{% /alert %}}

## Ondersteunde formaten

Aspose.Words kunt u werken met digitale handtekeningen op DOC-, OOXML- en ODT-documenten en om het gegenereerde document in PDF of XPS formaat.

## Beperkingen van digitale handtekeningen

De tabel hieronder beschrijft een paar beperkingen die u kunt ondervinden tijdens het werken met digitale handtekeningen door Aspose.Words, evenals enkele alternatieve opties.

|  Beperking |  Alternatieve optie |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Verlies van digitale handtekeningen op een document na het laden en opslaan. Daarom kan het verwerken van een document naar een server het verlies van alle digitale handtekeningen veroorzaken zonder een kennisgeving |  Controleer of een document digitale handtekeningen heeft en neem de passende actie als er iets gevonden wordt. Stuur bijvoorbeeld een waarschuwing naar de klanten die hen informeren dat het document dat zij uploaden digitale handtekeningen bevat die verloren gaan als het wordt verwerkt |
|  Aspose.Words ondersteunt het werken met macro's in een document. Maar Aspose.Words ondersteunt nog geen digitale handtekeningen op macro's |  Exporteer het document terug naar een Word-formaat, en gebruik Microsoft Word om een digitale handtekening toe te voegen aan macro's |

## Digitale handtekeningen detecteren, tellen en verifiëren

Aspose.Words kunt u digitale handtekening te detecteren in een document met behulp van de [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) methode en de [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) eigendom. Het is vermeldenswaard dat een dergelijke controle alleen het feit van de handtekening zal detecteren, maar niet de geldigheid ervan.

Een document kan meerdere keren worden ondertekend, en dit kan door verschillende gebruikers worden gedaan. Om de geldigheid van digitale handtekeningen te controleren, moet u ze laden van het document met behulp van de [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) methode en gebruik de [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) eigendom. Ook Aspose.Words kunt u een set van alle digitale handtekeningen te tellen in een document met behulp van de [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) eigendom.

Dit alles biedt een efficiënte en veilige manier om een document te controleren op handtekeningen voordat het wordt verwerkt.

Het volgende voorbeeld van code laat zien hoe u de aanwezigheid van digitale handtekeningen kunt detecteren en verifiëren:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Een digitale handtekening aanmaken {#create-a-digital-signature}

Om een digitale handtekening te maken, moet u een ondertekeningscertificaat laden dat identiteit bevestigt. Wanneer u een digitaal ondertekend document verzendt, stuurt u ook uw certificaat en publieke sleutel.

Aspose.Words Hiermee kunt u X.509-certificaat maken, een digitaal certificaat dat gebruik maakt van de internationaal geaccepteerde X.509 PKI-standaard om te controleren of een publieke sleutel behoort tot de ondertekening opgenomen in het certificaat. Om dit te doen, gebruik de [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) methode binnen de [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) Klasse.

In de volgende secties wordt uitgelegd hoe een digitale handtekening, handtekeningregel en hoe een gegenereerd PDF-document te ondertekenen.

### Een document ondertekenen

Aspose.Words kunt u een DOC, DOCX of ODT-document digitaal te ondertekenen met behulp van de [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) methode en [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) eigenschappen.

Het volgende voorbeeld van code laat zien hoe documenten te ondertekenen met behulp van een certificaathouder en tekenopties:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Een ondertekeningsregel toevoegen

Een handtekeninglijn is een visuele weergave van een digitale handtekening in een document. Aspose.Words kunt u een handtekening regel met behulp van de [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) methode. U kunt ook de parameters voor deze weergave instellen met behulp van de [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) Klasse.

Zo laat de onderstaande foto zien hoe geldige en ongeldige handtekeningen kunnen worden weergegeven.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Ook als een document een handtekeningregel bevat en geen digitale handtekening, is er een functie om de gebruiker te vragen een handtekening toe te voegen.

Het volgende voorbeeld van code laat zien hoe je een document met een persoonlijk certificaat en een specifieke handtekeninglijn kunt ondertekenen:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Een aangemaakt PDF-document ondertekenen {#sign-a-generated-pdf-document}

Aspose.Words kunt u alle details van een PDF-document met behulp van de [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) eigenschappen.

Het volgende voorbeeld van code laat zien hoe je een gegenereerde PDF tekent:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

De afbeelding hieronder laat zien dat het gegenereerde PDF-document wordt geopend in Adobe Acrobat en de digitale handtekening wordt geverifieerd als aanwezig en geldig.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## De digitale ondertekeningswaarde ophalen

Aspose.Words biedt ook de mogelijkheid om de digitale handtekening waarde van een digitaal ondertekend document als een byte array met behulp van de [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) eigendom.

Het volgende voorbeeld van code laat zien hoe je de digitale handtekeningwaarde als bytearray kunt verkrijgen uit een document:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Digitale handtekeningen verwijderen

Aspose.Words kunt u alle digitale handtekeningen verwijderen van een ondertekend document met behulp van de [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) methode.

Het volgende voorbeeld van code laat zien hoe digitale handtekeningen uit een document worden geladen en verwijderd:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Merk op dat u niet slechts één digitale handtekening in uw document kunt verwijderen.

{{% /alert %}}
