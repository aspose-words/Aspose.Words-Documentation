---
title: OLE-objecten en online video
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met OLE-objecten en online video
linktitle: Werken met OLE-objecten en online video
description: "Ole objecten of onlin vodeo invoegen in een document met behulp van Python."
type: docs
weight: 360
url: /nl/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) is een technologie waarmee gebruikers kunnen werken met documenten met "objecten" gemaakt of bewerkt door toepassingen van derden. Dat wil zeggen, OLE staat een bewerkingstoepassing toe om deze "objecten" naar een andere bewerkingsapplicatie te exporteren en ze vervolgens te importeren met extra inhoud.

In dit artikel zullen we het hebben over het invoegen van een OLE object en het instellen van zijn eigenschappen, evenals het invoegen van een online video in een document.

## OLE invoegen Doel

Als u OLE Object wilt, bel dan de [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) methode en geef het **ProgId** expliciet met andere parameters.

Het volgende codevoorbeeld laat zien hoe OLE in te voegen Object in een document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Bestandsnaam en -extensie instellen bij het invoegen van OLE-object

OLE pakket is een legacy en "undocumented" manier om embedded objecten op te slaan als een OLE handler is onbekend.

Vroeg Windows versies zoals Windows 3.1, 95 en 98 hadden een Packager. exe-toepassing die kan worden gebruikt om elk type gegevens in het document in te sluiten. Deze aanvraag is nu uitgesloten van Windows, maar Microsoft Word en andere toepassingen gebruiken het nog steeds om gegevens in te sluiten als de OLE handler ontbreekt of onbekend is. De `OlePackage` klasse geeft gebruikers toegang tot de OLE Package eigenschappen.

Het volgende voorbeeld van code laat zien hoe u de bestandsnaam, extensie en weergavenaam voor OLE Package kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Toegang krijgen tot OLE-object ruwe gegevens

Gebruikers kunnen toegang krijgen tot OLE object gegevens met behulp van verschillende eigenschappen en methoden van de `OleFormat` Klasse. Het is bijvoorbeeld mogelijk om de `OLE` object ruwe gegevens of het pad en de naam van een bronbestand voor het gekoppelde OLE-object.

Het volgende voorbeeld van code laat zien hoe je OLE krijgt Object ruwe gegevens met behulp van de [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) methode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### OLE invoegen Object als pictogram

OLE objecten kunnen ook als afbeelding in documenten worden geplaatst.

Het volgende voorbeeld van code laat zien hoe OLE Object als pictogram in te voegen. Met dit doel beoogt de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klasse stelt de [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) methode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Het volgende voorbeeld van code laat zien hoe je een ingebed OLE-object invoegt als pictogram vanuit een stroom in het document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Online video invoegen

Online video kan worden ingevoegd in Word document van de *"Insert" > "Online Video"* tab. U kunt een online video in een document op de huidige locatie door te bellen naar de [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) methode.

De [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klasse introduceert vier overbelastingen van deze methode. De eerste werkt met de meest populaire videobronnen en neemt de `URL` van de video als parameter. Bijvoorbeeld, de eerste overbelasting ondersteunt eenvoudige inbrenging van online video's van [YouTube](https://www.youtube.com/) en [Vimeo](https://vimeo.com/) middelen.

Het volgende voorbeeld van code laat zien hoe u een online video van *Vimeo* in een document:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

De tweede overbelasting werkt met alle andere videobronnen en neemt embedded HTML-code als parameter. De HTML-code voor het insluiten van een video kan variëren afhankelijk van de provider, dus neem contact op met de betreffende provider voor details.

{{% alert color="primary" %}}

Houd er rekening mee dat het document automatisch wordt geoptimaliseerd voor MS Word 2013 om video te tonen.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je een online video in een document plaatst met behulp van een dergelijke HTML-code:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}
