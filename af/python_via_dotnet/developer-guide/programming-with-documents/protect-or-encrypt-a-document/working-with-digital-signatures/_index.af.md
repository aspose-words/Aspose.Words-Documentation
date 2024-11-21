---
title: Werk Met Digitale Handtekeninge
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Digitale Handtekeninge
linktitle: Werk Met Digitale Handtekeninge
description: "Teken dokumente digitaal en ontdek, tel, verifieer en verwyder bestaande digitale handtekeninge met behulp van Python."
type: docs
weight: 40
url: /af/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

'n digitale handtekening word gebruik om'n dokument te verifieer om vas te stel dat die sender van die dokument is wie hulle sê hulle is en dat die inhoud van die dokument nie gemanipuleer is nie.

Aspose.Words ondersteun dokumente met digitale handtekeninge en bied toegang tot hulle sodat jy digitale handtekeninge op'n dokument kan opspoor en bekragtig en'n gegenereerde PDF dokument met'n verskafde sertifikaat kan onderteken. Op die oomblik word digitale handtekeninge ondersteun op DOC, OOXML en ODT dokumente. Ondertekening van gegenereerde dokumente word ondersteun in PDF formaat.

{{% alert color="primary" %}}

**Probeer online**

Jy kan hierdie funksie probeer met ons [Gratis aanlyn handtekening](https://products.aspose.app/words/signature).

{{% /alert %}}

## Digitale Handtekeninge Word Nie Op Open And Save Bewaar Nie

'n belangrike punt om op te let is dat'n dokument gelaai en dan gestoor met behulp van Aspose.Words enige digitale handtekeninge wat op die dokument onderteken is, sal verloor. Dit is ontwerp as'n digitale handtekening verseker dat die inhoud nie verander is nie en verder die identiteit van wie die dokument onderteken het, verifieer. Hierdie beginsels sou ongeldig verklaar word as die oorspronklike handtekeninge na die gevolglike dokument oorgedra word.

As gevolg hiervan, as jy dokumente wat na'n bediener opgelaai is verwerk, kan dit moontlik beteken dat jy'n dokument wat op hierdie manier na jou bediener opgelaai is, kan beskadig sonder om te weet. Daarom is dit die beste om na digitale handtekeninge op'n dokument te kyk en die toepaslike aksie te neem indien enige gevind word, byvoorbeeld'n waarskuwing kan aan die kliënt gestuur word om hulle in te lig dat die dokument wat hulle deurgee digitale handtekeninge bevat wat verlore sal gaan as dit verwerk word. Jy kan sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Die kode hierbo gebruik die [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) metode om te ontdek of'n dokument digitale handtekeninge bevat sonder om eers die dokument te laai. Dit bied'n doeltreffende en veilige manier om'n dokument vir handtekeninge te kontroleer voordat dit verwerk word. Wanneer uitgevoer, die metode gee'n [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) voorwerp wat die eiendom [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) verskaf. Hierdie eienskap gee waar as die dokument een of meer digitale handtekeninge bevat. Dit is belangrik om daarop te let dat hierdie metode nie die handtekeninge bekragtig nie, dit bepaal slegs of handtekeninge teenwoordig is. Die validering van digitale handtekeninge word in die volgende afdeling behandel.

{{% alert color="primary" %}}

Jy kan ook kyk of'n dokument digitale handtekeninge het nadat dit gelaai is deur die `Count` eienskap van die [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) versameling te kontroleer.

{{% /alert %}}

## Digitale Handtekeninge Op Makros (VBA Projekte)

Digitale handtekeninge op makros kan nie verkry of onderteken word nie. Dit is omdat Aspose.Words nie direk handel oor makros in'n dokument. Digitale handtekeninge op makros word egter bewaar wanneer die dokument terug na enige word-formaat uitgevoer word. Hierdie handtekeninge kan bewaar word op VBA kode omdat die binêre inhoud van die makros nie verander word nie, selfs al word die dokument self verander.

### Toegang Tot En Verifieer Digitale Handtekeninge

'n dokument kan verskeie digitale handtekeninge hê. Hierdie handtekeninge kan almal verkry word deur die [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) versameling. Elke voorwerp wat teruggestuur word is'n [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) wat'n enkele digitale handtekening verteenwoordig wat aan die dokument behoort. Dit bied lede wat jou toelaat om die geldigheid van die handtekening te kontroleer.

Die belangrikste eienskap om met digitale handtekeninge te kontroleer, is die geldigheid van elke handtekening in die dokument. Alle handtekeninge in die dokument kan gelyktydig gevalideer word deur die [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) eienskap te bel. Dit sal waar wees as al die handtekeninge in die dokument geldig is of as die dokument geen handtekeninge het nie en vals as ten minste een digitale handtekening nie geldig is nie.

Elke handtekening kan ook individueel gevalideer word deur [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/) te bel. 'n handtekening kan om verskeie redes nie geldig teruggestuur word nie, byvoorbeeld die dokument is sedert die ondertekening verander of die sertifikaat het verval. Daarbenewens kan ekstra besonderhede van die handtekening ook verkry word. Die kode voorbeeld hieronder toon hoe om elke handtekening in'n dokument te bekragtig en basiese inligting oor die handtekening te vertoon. Jy kan sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Ondertekening Van Word-Dokumente

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) klas bied metodes vir die ondertekening van dokument. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) metode teken bron dokument met behulp van gegewe [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) met digitale handtekening en skryf onderteken dokument na bestemming stroom.

Hieronder voorbeeld toon hoe om eenvoudige dokument te onderteken.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Hieronder voorbeeld toon hoe om te teken geïnkripteer dokument.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Ondertekening Van Word-dokument Met Handtekeninglyn

Jy kan brondokument teken met gegewe [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) en [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) met digitale handtekening en skryf getekende dokument na bestemmingslêer. Gebruik [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) klas jy kan opsies vir dokument ondertekening spesifiseer. Hieronder voorbeeld toon hoe om nuwe handtekening lyn en teken dokument te skep.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Hieronder voorbeeld toon hoe om bestaande handtekening lyn en teken dokument te verander.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Ondertekening Word-Dokument met Behulp Van Handtekening Verskaffer Identifiseerder

Hieronder voorbeeld toon hoe Om Word dokument te teken met behulp van handtekening verskaffer identifiseerder. Die kriptografiese diensverskaffer (CSP) is'n onafhanklike sagteware module wat eintlik kriptografie algoritmes vir verifikasie, kodering en kodering uitvoer. MS Kantoor behou Die waarde van {00000000-0000-0000-0000-000000000000} vir sy standaard handtekening verskaffer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Skep Nuwe Handtekening Lyn Teken Woord Dokument met Behulp Van Verskaffer Identifiseerder

Hieronder voorbeeld toon hoe om handtekening lyn en teken Woord dokument met behulp van handtekening verskaffer identifiseerder te skep.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Kry Die Digitale Handtekening Waarde

Aspose.Words bied ook die vermoë om die digitale handtekening waarde van'n digitaal onderteken dokument as'n byte skikking met behulp van die [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) eiendom te haal.

Die volgende kode voorbeeld toon hoe om die digitale handtekening waarde as'n byte skikking van'n dokument te verkry:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
