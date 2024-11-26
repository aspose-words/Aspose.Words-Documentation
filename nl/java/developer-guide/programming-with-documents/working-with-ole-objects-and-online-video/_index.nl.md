---
title: Werken met Ole Objecten
second_title: Aspose.Words voor Java
articleTitle: Werken met Ole Objecten
linktitle: Werken met Ole Objecten
description: "OLE-inbedding in uw document aanmaken en wijzigen met Java."
type: docs
weight: 360
url: /nl/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE staat voor "Object Linking and Embedding." Dit is de technologie waarmee gebruikers kunnen werken met documenten met "objecten" gemaakt of bewerkt door toepassingen van derden. Dat wil zeggen, OLE staat een applicatie toe om deze "objecten" te exporteren naar een andere applicatie voor het bewerken, en ze vervolgens terug te importeren met wat extra inhoud.

In dit artikel zullen we het hebben over het invoegen van een OLE object en het instellen van zijn eigenschappen in een document.

## Ole-object invoegen

Als u OLE Object wilt, bel dan de [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) methode en geef het **ProgId** expliciet met andere parameters.

Het volgende voorbeeld van code laat zien hoe OLE in te voegen Object in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Bestandsnaam en -extensie instellen bij het invoegen van OLE-object

OLE pakket is een legacy en "undocumented" manier om ingebedde objecten op te slaan als een OLE handler is onbekend.

Vroeg Windows versies zoals Windows 3.1, 95 en 98 hadden een Packager. exe-toepassing die kan worden gebruikt om elk type gegevens in het document in te sluiten. Deze aanvraag is nu uitgesloten van Windows, maar Microsoft Word en andere toepassingen gebruiken het nog steeds om gegevens in te sluiten als de OLE handler ontbreekt of onbekend is. De `OlePackage` klasse geeft gebruikers toegang tot de OLE Package eigenschappen.

Het volgende voorbeeld van code laat zien hoe u de bestandsnaam, extensie en weergavenaam voor OLE Package kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Toegang krijgen tot OLE-object ruwe gegevens

Gebruikers kunnen toegang krijgen tot OLE object gegevens met behulp van verschillende eigenschappen en methoden van de `OleFormat` Klasse. Het is bijvoorbeeld mogelijk om de `OLE` object ruwe gegevens of het pad en de naam van een bronbestand voor het gekoppelde OLE-object.

Het volgende voorbeeld van code laat zien hoe OLE te krijgen Object ruwe gegevens met behulp van de [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) methode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### OLE invoegen Object als pictogram

OLE-objecten kunnen ook als afbeelding in documenten worden geplaatst.

Het volgende voorbeeld van code laat zien hoe je OLE Object als pictogram invoegt. Met dit doel beoogt de **DocumentBuilder** klasse stelt de [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) methode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Het volgende voorbeeld van code laat zien hoe je een ingebed OLE-object invoegt als pictogram vanuit een stroom naar het document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Online video invoegen

Online video kan worden ingevoegd in Word-document van de *"Insert" > "Online Video"* tab. U kunt een online video in een document op de huidige locatie door het bellen van de [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) methode:

De [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klasse introduceert vier overbelastingen van deze methode. De eerste werkt met de meest populaire video middelen en neemt de `URL` van de video als parameter. Bijvoorbeeld, de eerste overbelasting ondersteunt eenvoudige invoeging van online video's van [YouTube](https://www.youtube.com/) en [Vimeo](https://vimeo.com/) middelen.

Het volgende voorbeeld van code laat zien hoe je een online video van *Vimeo* in een document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

De tweede overbelasting werkt met alle andere videobronnen en neemt embedded HTML-code als parameter. De HTML-code voor het insluiten van een video kan variëren afhankelijk van de provider, dus neem contact op met de betreffende provider voor details.

{{% alert color="primary" %}}

Houd er rekening mee dat het document automatisch wordt geoptimaliseerd voor MS Word 2013 om video te tonen.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een online video in een document invoegt met behulp van een dergelijke HTML-code:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
