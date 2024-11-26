---
title: Bestandsformaat detecteren
second_title: Aspose.Words voor Java
articleTitle: Bestandsformaat detecteren en compatibiliteit controleren
linktitle: Bestandsformaat detecteren en compatibiliteit controleren
description: "Informatie verkrijgen over het documentformaat voordat u het opent om een uitzondering te voorkomen als u niet zeker weet wat de werkelijke inhoud van het bestand gebruikt Java."
type: docs
weight: 20
url: /nl/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Soms is het nodig om het formaat van een document te bepalen voordat u opent omdat de bestandsextensie niet garandeert dat de inhoud van het bestand geschikt is. Bijvoorbeeld, het is bekend dat Crystal Reports vaak uitvoert documenten in RTF-formaat, maar geeft hen de .doc extensie.

Aspose.Words biedt een mogelijkheid om informatie over het bestandstype te verkrijgen om een uitzondering te voorkomen als u niet zeker bent wat de werkelijke inhoud van het bestand is.

## Bestandsformaat detecteren zonder uitzondering

Wanneer u te maken hebt met meerdere documenten in verschillende bestandsformaten, kunt u nodig hebben om de bestanden die kunnen worden verwerkt door Aspose.Words Van degenen die dat niet kunnen. U wilt misschien ook weten waarom sommige documenten niet kunnen worden verwerkt.

Als u een bestand in een [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) object en Aspose.Words kan het bestandsformaat niet herkennen of het formaat wordt niet ondersteund; Aspose.Words Ik zal een uitzondering maken. Je kunt die uitzonderingen vangen en analyseren, maar Aspose.Words de [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) methode waarmee we snel het bestandsformaat kunnen bepalen zonder een document te laden met mogelijke uitzonderingen. Deze methode geeft een [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) object dat de gedetecteerde informatie over het bestandstype bevat.

{{% alert color="primary" %}}

DetectFile Format controleert alleen het bestandsformaat maar valideert het bestandsformaat niet. Er is geen garantie dat het bestand met succes zal worden geopend, zelfs als **DetectFileFormat** geeft terug dat het een van de ondersteunde formaten is. Dit komt door **DetectFileFormat** methode leest slechts gedeeltelijke bestandsformaat gegevens, voldoende voor het controleren van het bestandsformaat, maar niet genoeg voor volledige validatie.

{{% /alert %}}

## Controleer Bestanden Format Compatibiliteit

We kunnen de formaatcompatibiliteit van alle bestanden in de geselecteerde map controleren en sorteren op formaat in overeenkomstige submappen.

Aangezien we te maken hebben met inhoud in een map, het eerste wat we moeten doen is een verzameling van alle bestanden in deze map met behulp van de **GetFiles** methode van de `Directory` klasse (van `System.IO` naamruimte).

Het volgende voorbeeld van code laat zien hoe je een lijst van alle bestanden in de map krijgt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Wanneer alle bestanden worden verzameld, de rest van het werk wordt gedaan door de **DetectFileFormat** methode, die het bestandsformaat controleert.

Het volgende voorbeeld van code laat zien hoe je kunt itereren over de verzamelde lijst van bestanden, controleer het formaat van elk bestand en verplaatst elk bestand naar de juiste map:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

De bestanden worden verplaatst naar geschikte submappen met behulp van de `Move` methode van de `File` klasse, van dezelfde `System.IO` naamruimte.

De volgende bestanden worden in het voorbeeld hierboven gebruikt. De bestandsnaam staat links en de beschrijving is rechts:

| Group van bestanden | Invoerdocument | Type |
|  :-  |  :-  |  :-  |
| Ondersteunde bestandsformaten | Testbestand (doc.doc) | Microsoft Word 95/6 of Microsoft Word 97 Document 2003. |
|  | Testbestand (Dot).dot | Microsoft Word 95/6 of Microsoft Word 97 Model 2003. |
|  | Testbestand (Docx).docx | Office Open XML Wordprocessing ML-document zonder macros. |
|  | Testbestand (Docm).docm | Office Open XML Wordprocessing ML document met macro's. |
|  | Testbestand (Dotx).dotx | Office Open XML Wordprocessing ML template. |
|  | Testbestand (Dotm).dotm | Office Open XML Wordprocessing ML template met macro's. |
|  | Testbestand (XML).xml | FlatOPC OOXML Document. |
|  | Testbestand (RTF).rtf | Rich Tekst Format document. |
|  | Testbestand (WordML).xml | Microsoft Word 2003 tekstverwerking ML document. |
|  | Testbestand (HTML).html | HTML-document. |
|  | Testbestand (MHTML).mhtml | MHTML (Web archief) document. |
|  | Testbestand (Odt).odt | OpenDocument Tekst (OpenOffice Writer). |
|  | Testbestand (Ott).ott | OpenDocument Document Sjabloon. |
|  | Testbestand (DocPreWord60).doc | Microsoft Word 2.0 document. |
| Versleutelde documenten | Testbestand (Enc).doc | Versleuteld Microsoft Word 95/6 of Microsoft Word 97 Document 2003. |
|  | Testbestand (Enc).docx | Versleutelde Office Open XML Wordprocessing ML document. |
| Niet ondersteunde bestandsformaten | Testbestand (JPG). jpg | JPEG-imagebestand. |

