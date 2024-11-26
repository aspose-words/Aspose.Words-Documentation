---
title: Werken met OLE objecten en online video in C#
second_title: Aspose.Words voor .NET
articleTitle: Werken met OLE-objecten en online video
linktitle: Werken met OLE-objecten en online video
description: "OLE-inbedding in uw document aanmaken en wijzigen met behulp van C#."
type: docs
weight: 360
url: /nl/net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) is een technologie waarmee gebruikers kunnen werken met documenten met "objecten" gemaakt of bewerkt door toepassingen van derden. Dat wil zeggen, OLE staat een bewerkingstoepassing toe om deze "objecten" naar een andere bewerkingsapplicatie te exporteren en ze vervolgens te importeren met extra inhoud.

In dit artikel zullen we het hebben over het invoegen van een OLE object en het instellen van zijn eigenschappen, evenals het invoegen van een online video in een document.

## OLE invoegen Doel

Als u OLE Object wilt, bel dan de [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) methode en geef het **ProgId** expliciet met andere parameters.

Het volgende codevoorbeeld laat zien hoe OLE in te voegen Object in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Bestandsnaam en -extensie instellen bij het invoegen van OLE-object

OLE pakket is een legacy en "undocumented" manier om embedded objecten op te slaan als een OLE handler is onbekend.

Vroeg Windows versies zoals Windows 3.1, 95 en 98 hadden een Packager. exe-toepassing die kan worden gebruikt om elk type gegevens in het document in te sluiten. Deze aanvraag is nu uitgesloten van Windows, maar Microsoft Word en andere toepassingen gebruiken het nog steeds om gegevens in te sluiten als de OLE handler ontbreekt of onbekend is. De `OlePackage` klasse geeft gebruikers toegang tot de OLE Package eigenschappen.

Het volgende voorbeeld van code laat zien hoe u de bestandsnaam, extensie en weergavenaam voor OLE Package kunt instellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Toegang krijgen tot OLE-object ruwe gegevens

Gebruikers kunnen toegang krijgen tot OLE object gegevens met behulp van verschillende eigenschappen en methoden van de `OleFormat` Klasse. Het is bijvoorbeeld mogelijk om de `OLE` object ruwe gegevens of het pad en de naam van een bronbestand voor het gekoppelde OLE-object.

Het volgende voorbeeld van code laat zien hoe je OLE krijgt Object ruwe gegevens met behulp van de [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) methode:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### OLE invoegen Object als pictogram

OLE objecten kunnen ook als afbeelding in documenten worden geplaatst.

Het volgende voorbeeld van code laat zien hoe OLE Object als pictogram in te voegen. Met dit doel beoogt de [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klasse stelt de [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) methode:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een ingebed OLE-object invoegt als pictogram vanuit een stroom in het document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Maximale grootte van het pictogram moet 32x32 zijn voor het juiste display.

{{% /alert %}}

## Online video invoegen

Online video kan worden ingevoegd in Word document van de *"Insert" > "Online Video"* tab. U kunt een online video in een document op de huidige locatie door te bellen naar de [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) methode.

De [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klasse introduceert vier overbelastingen van deze methode. De eerste werkt met de meest populaire videobronnen en neemt de `URL` van de video als parameter. Bijvoorbeeld, de eerste overbelasting ondersteunt eenvoudige inbrenging van online video's van [YouTube](https://www.youtube.com/) en [Vimeo](https://vimeo.com/) middelen.

Het volgende voorbeeld van code laat zien hoe u een online video van *Vimeo* in een document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

De tweede overbelasting werkt met alle andere videobronnen en neemt embedded HTML-code als parameter. De HTML-code voor het insluiten van een video kan variëren afhankelijk van de provider, dus neem contact op met de betreffende provider voor details.

{{% alert color="primary" %}}

Houd er rekening mee dat het document automatisch wordt geoptimaliseerd voor MS Word 2013 om video te tonen.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een online video in een document plaatst met behulp van een dergelijke HTML-code:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}
