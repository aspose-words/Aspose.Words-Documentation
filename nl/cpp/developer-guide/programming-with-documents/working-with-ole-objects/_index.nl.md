---
title: Werken met OLE objecten in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met OLE objecten
linktitle: Werken met OLE objecten
description: "Maak en wijzig OLE insluiten in uw document met behulp van C++."
type: docs
weight: 360
url: /nl/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) is een technologie waarmee gebruikers kunnen werken met documenten die "objecten" bevatten die zijn gemaakt of bewerkt door toepassingen van derden. Dat wil zeggen, OLE staat een bewerkingstoepassing toe om deze "objecten" naar een andere bewerkingstoepassing te exporteren en ze vervolgens met extra inhoud te importeren.

In dit artikel zullen we het hebben over het invoegen van een OLE - object en het instellen van de eigenschappen ervan in een document.

## OLE Object Invoegen

Als u OLE Object wilt, roept u de [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) methode aan en geeft u de **ProgId** expliciet door met andere parameters.

Het volgende codevoorbeeld laat zien hoe u OLE Object invoegt in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Bestandsnaam en extensie instellen bij invoegen van OLE Object

OLE package is een oude en" ongedocumenteerde " manier om ingebedde objecten op te slaan als een OLE handler onbekend is.

Vroege Windows versies zoals Windows 3.1, 95 en 98 hadden een Packager.exe applicatie die kon worden gebruikt om elk type gegevens in het document in te sluiten. Deze toepassing is nu uitgesloten van Windows, maar Microsoft Word en andere toepassingen gebruiken het nog steeds om gegevens in te sluiten als de OLE handler ontbreekt of onbekend is. De `OlePackage` klasse geeft gebruikers toegang tot de OLE Package eigenschappen.

Het volgende codevoorbeeld laat zien hoe u de bestandsnaam, extensie en weergavenaam voor OLE Packageinstelt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Krijg toegang tot OLE ruwe objectgegevens

Gebruikers kunnen OLE - objectgegevens Openen met behulp van verschillende eigenschappen en methoden van de `OleFormat` - Klasse. Het is bijvoorbeeld mogelijk om de ruwe gegevens van het `OLE` object of het pad en de naam van een bronbestand voor het gekoppelde OLE object te verkrijgen.

Het volgende codevoorbeeld toont hoe u OLE object ruwe gegevens kunt verkrijgen met behulp van de [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/) methode:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Ole Object invoegen als pictogram

OLE objecten kunnen ook als afbeeldingen in documenten worden ingevoegd.

Het volgende codevoorbeeld laat zien hoe OLE Object als pictogram moet worden ingevoegd. Voor dit doel stelt de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) klasse de [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/) methode bloot:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Het volgende codevoorbeeld laat zien hoe u een ingesloten OLE - object als pictogram uit een stream in het document invoegt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Online Video Invoegen

Online video kan worden ingevoegd in Word document vanaf het tabblad *"Insert" > "Online Video"*. U kunt een online video invoegen in een document op de huidige locatie door de methode [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/) aan te roepen.

De klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) introduceert vier overbelastingen van deze methode. De eerste werkt met de meest populaire videobronnen en neemt de `URL` van de video als parameter. De eerste overbelasting ondersteunt bijvoorbeeld het eenvoudig invoegen van online video ' s van [YouTube](https://www.youtube.com/) en [Vimeo](https://vimeo.com/) bron.

Het volgende codevoorbeeld laat zien hoe u een online video van *Vimeo* invoegt in een document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

De tweede overbelasting werkt met alle andere videobronnen en neemt ingebedde HTML - code als parameter. De HTML - code voor het insluiten van een video kan variëren afhankelijk van de provider, dus neem contact op met de betreffende provider voor meer informatie.

{{% alert color="primary" %}}

Houd er rekening mee dat het document automatisch zal worden geoptimaliseerd voor MS Word 2013 om video weer te geven.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een online video in een document invoegt met behulp van een dergelijke HTML - code:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
