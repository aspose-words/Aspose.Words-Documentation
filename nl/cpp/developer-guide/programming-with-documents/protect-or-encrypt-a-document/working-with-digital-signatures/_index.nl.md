---
title: Werken met digitale handtekeningen in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met digitale handtekeningen
linktitle: Werken met digitale handtekeningen
description: "Documenten digitaal ondertekenen en bestaande digitale handtekeningen detecteren, tellen, verifiëren en verwijderen."
type: docs
weight: 160
url: /nl/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Een digitale handtekening is een technologische implementatie van elektronische handtekeningen om documenten te ondertekenen en de ondertekenaar te authenticeren om te garanderen dat een document niet is gewijzigd sinds het werd ondertekend. Elke digitale handtekening is uniek voor elke ondertekenaar vanwege het volgen van het PKI - protocol om zowel openbare als privésleutels te genereren. Een document digitaal ondertekenen betekent een handtekening maken met behulp van de privésleutel van de ondertekenaar, waarbij een wiskundig algoritme wordt gebruikt om de gegenereerde hash te versleutelen.

Met Aspose.Words kunt u bestaande digitale handtekeningen detecteren, tellen of verifiëren en ook een nieuwe handtekening aan uw document toevoegen om erachter te komen of er mee is geknoeid. U kunt ook alle digitale handtekeningen uit een document verwijderen. Gebruik de klasse [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) om met digitale handtekeningen te werken.

In dit artikel wordt uitgelegd hoe u al het bovenstaande kunt doen om de authenticiteit en integriteit van een digitaal document te valideren.

{{% alert color="primary" %}}

**Online proberen**

U kunt deze functionaliteit proberen met onze [Gratis online handtekening](https://products.aspose.app/words/signature).

{{% /alert %}}

## Ondersteunde Formaten

Met Aspose.Words kunt u werken met digitale handtekeningen op DOC, OOXML en ODT documenten en het gegenereerde document ondertekenen in PDF of XPS formaat.

## Beperkingen van digitale handtekeningen

In de onderstaande tabel worden enkele beperkingen beschreven die u kunt tegenkomen bij het werken met digitale handtekeningen via Aspose.Words, evenals enkele alternatieve opties.

| Beperking | Alternatief |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Verlies van digitale handtekeningen op een document na het laden en opslaan ervan. Daarom kan het verwerken van een document naar een server leiden tot het verlies van alle digitale handtekeningen zonder kennisgeving. | Controleer of een document digitale handtekeningen heeft en neem de juiste actie als er een wordt gevonden. Stuur bijvoorbeeld een waarschuwing naar de klanten om hen te informeren dat het document dat ze uploaden digitale handtekeningen bevat die verloren gaan als het wordt verwerkt. |
| Aspose.Words ondersteunt het werken met macro ' s in een document. Maar Aspose.Words ondersteunt nog geen digitale handtekeningen op macro ' s. | Exporteer het document terug naar een willekeurige Word - indeling en gebruik Microsoft Word om een digitale handtekening aan macro ' s toe te voegen. |

## Digitale handtekeningen detecteren, tellen en verifiëren

Met Aspose.Words kunt u digitale handtekening in een document detecteren met behulp van de methode [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) en de eigenschap [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Het is vermeldenswaard dat een dergelijke controle alleen het feit van de handtekening zal detecteren, maar niet de geldigheid ervan.

Een document kan meer dan één keer worden ondertekend, en dit kan door verschillende gebruikers worden gedaan. Als u de geldigheid van digitale handtekeningen wilt controleren, moet u ze uit het document laden met de methode [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) en de Eigenschap [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/) gebruiken. Met Aspose.Words kunt u ook een set van alle digitale handtekeningen in een document tellen met behulp van de eigenschap [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Dit alles biedt een efficiënte en veilige manier om een document te controleren op Handtekeningen voordat het wordt verwerkt.

Het volgende codevoorbeeld laat zien hoe u de aanwezigheid van digitale handtekeningen kunt detecteren en verifiëren:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Een digitale handtekening {#create-a-digital-signature}maken

Als u een digitale handtekening wilt maken, moet u een ondertekeningscertificaat laden dat de identiteit bevestigt. Wanneer u een digitaal ondertekend document verzendt, verzendt u ook uw certificaat en openbare sleutel.

Met Aspose.Words kunt u een X. 509-certificaat maken, een digitaal certificaat dat de internationaal aanvaarde X. 509 PKI - standaard gebruikt om te controleren of een openbare sleutel toebehoort aan de ondertekenaar die in het certificaat is opgenomen. Gebruik hiervoor de [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) methode binnen de [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder) klasse.

In de volgende secties wordt uitgelegd hoe u een digitale handtekening, een handtekeningregel toevoegt en hoe u een gegenereerd PDF - document ondertekent.

### Een Document ondertekenen

Met Aspose.Words kunt u een DOC, DOCX of ODT document digitaal ondertekenen met behulp van de [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) methode en [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/) eigenschappen.

Het volgende codevoorbeeld laat zien hoe u documenten kunt ondertekenen met een certificaathouder en opties kunt ondertekenen:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Een handtekeningregel toevoegen

Een handtekeningregel is een visuele weergave van een digitale handtekening in een document. Met Aspose.Words kunt u een handtekeningregel invoegen met de methode [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). U kunt ook de parameters voor deze weergave instellen met behulp van de klasse [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

De onderstaande afbeelding toont bijvoorbeeld hoe geldige en ongeldige handtekeningen kunnen worden weergegeven.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Als een document een handtekeningregel bevat en geen digitale handtekening, is er ook een functie om de gebruiker te vragen een handtekening toe te voegen.

Het volgende codevoorbeeld laat zien hoe u een document ondertekent met een persoonlijk certificaat en een specifieke handtekeningregel:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Teken een gegenereerd PDF Document {#sign-a-generated-pdf-document}

Met Aspose.Words kunt u alle details van een PDF document ondertekenen en ophalen met behulp van de [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/) eigenschappen.

Het volgende codevoorbeeld laat zien hoe u een gegenereerde PDFondertekent:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## De waarde van de digitale handtekening ophalen

Aspose.Words biedt ook de mogelijkheid om de waarde van de digitale handtekening uit een digitaal ondertekend document op te halen als een byte array met behulp van de eigenschap [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

Het volgende codevoorbeeld laat zien hoe u de waarde van de digitale handtekening als een byte-array uit een document kunt verkrijgen:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Digitale Handtekeningen Verwijderen

Met Aspose.Words kunt u alle digitale handtekeningen uit een ondertekend document verwijderen met de methode [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

Het volgende codevoorbeeld laat zien hoe u digitale handtekeningen uit een document kunt laden en verwijderen:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Houd er rekening mee dat u niet slechts één digitale handtekening in uw document kunt verwijderen.

{{% /alert %}}
