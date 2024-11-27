---
title: Detecteer bestandsindeling en controleer Formaatcompatibiliteit
second_title: Aspose.Words voor C++
articleTitle: Detecteer bestandsindeling en controleer Formaatcompatibiliteit
linktitle: Detecteer bestandsindeling en controleer Formaatcompatibiliteit
description: "Bepaal de bestandsindeling in C++ als u niet zeker weet wat de werkelijke inhoud van het bestand is, of om de compatibiliteit van de indeling te controleren."
type: docs
weight: 20
url: /nl/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Soms is het noodzakelijk om het formaat van een document te bepalen voordat u het opent, omdat de bestandsextensie niet garandeert dat de inhoud van het bestand geschikt is. Het is bijvoorbeeld bekend dat Crystal Reports vaak documenten in RTF - indeling uitvoert, maar ze de .doc extensie.

Aspose.Words biedt de mogelijkheid om informatie over het bestandstype te verkrijgen om een uitzondering te voorkomen als u niet zeker weet wat de werkelijke inhoud van het bestand is.

## Bestandsindeling detecteren zonder uitzondering

Wanneer u te maken hebt met meerdere documenten in verschillende bestandsindelingen, moet u mogelijk de bestanden die kunnen worden verwerkt door Aspose.Words scheiden van de bestanden die dat niet kunnen. Misschien wilt u ook weten waarom sommige documenten niet kunnen worden verwerkt.

Als u probeert een bestand in een [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) object te laden en Aspose.Words de bestandsindeling niet herkent of de indeling niet wordt ondersteund, zal Aspose.Words een uitzondering maken. U kunt deze uitzonderingen opvangen en analyseren, maar Aspose.Words biedt ook de [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) - methode waarmee we snel de bestandsindeling kunnen bepalen zonder een document met mogelijke uitzonderingen te laden. Deze methode retourneert een [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) object dat de gedetecteerde informatie over het bestandstype bevat.

{{% alert color="primary" %}}

DetectFileFormat controleert alleen de bestandsindeling, maar valideert de bestandsindeling niet. Er is geen garantie dat het bestand met succes zal worden geopend, zelfs als **DetectFileFormat** retourneert dat het een van de ondersteunde indelingen is. Dit komt omdat de **DetectFileFormat** - methode alleen gedeeltelijke bestandsindelinggegevens leest, voldoende voor het controleren van de bestandsindeling, maar niet genoeg voor volledige validatie.

{{% /alert %}}

## Compatibiliteit Van Bestandsindeling Controleren

We kunnen de compatibiliteit van alle bestanden in de geselecteerde map controleren en ze sorteren op formaat in overeenkomstige submappen.

Aangezien we te maken hebben met inhoud in een map, is het eerste wat we moeten doen een verzameling van alle bestanden in deze map met behulp van de **GetFiles** methode van de `Directory` klasse (uit de `System.IO` naamruimte).

Het volgende codevoorbeeld laat zien hoe u een lijst met alle bestanden in de map kunt krijgen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Wanneer alle bestanden zijn verzameld, wordt de rest van het werk gedaan met de methode **DetectFileFormat**, die de bestandsindeling controleert.

Het volgende codevoorbeeld laat zien hoe u over de verzamelde lijst met bestanden kunt itereren, de indeling van elk bestand kunt controleren en elk bestand naar de juiste map kunt verplaatsen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

De bestanden worden verplaatst naar de juiste submappen met behulp van de `Move` methode van de `File` klasse, vanuit dezelfde `System.IO` naamruimte.

De volgende bestanden worden gebruikt in het bovenstaande voorbeeld. De bestandsnaam staat links en de beschrijving rechts:

| Groep bestanden | Invoerdocument | Type |
| :- | :- | :- |
| Ondersteunde bestandsformaten | Test File (DOC).doc | Microsoft Word 95/6.0 of Microsoft Word 97 – 2003 document. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 of Microsoft Word 97 – 2003 template. |
|  | Test File (DOCX).docx | Office XML WordprocessingML document openen zonder macro ' s. |
|  | Test File (DOCM).docm | Office XML WordprocessingML document openen met macro ' s. |
|  | Test File (DOTX).dotx | Office Open XML WordprocessingML sjabloon. |
|  | Test File (DOTM).dotm | Office XML WordprocessingML sjabloon openen met macro ' s. |
|  | Test File (XML).xml | FlatOPC OOXML Document. |
|  | Test File (RTF).rtf | Document met Rich Text-indeling. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML document. |
|  | Test File (HTML).html | HTML document. |
|  | Test File (MHTML).mhtml | MHTML (Webarchief) document. |
|  | Test File (ODT).odt | OpenDocument Tekst (OpenOffice Schrijver). |
|  | Test File (OTT).ott | OpenDocument Documentsjabloon. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 document. |
| Versleutelde documenten | Test File (Enc).doc | Versleuteld Microsoft Word 95/6.0 of Microsoft Word 97 – 2003 document. |
|  | Test File (Enc).docx | Versleuteld Office XML WordprocessingML document openen. |
| Niet-ondersteunde bestandsformaten | Test File (JPG).jpg | JPEG afbeeldingsbestand. |

