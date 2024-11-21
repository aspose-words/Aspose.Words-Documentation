---
title: OLE Voorwerpe En Aanlyn Video
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk met OLE Voorwerpe En Aanlyn Video
linktitle: Werk met OLE Voorwerpe En Aanlyn Video
description: "Voeg ole voorwerpe of onlin vodeo in'n dokument met behulp van Python."
type: docs
weight: 360
url: /af/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) is'n tegnologie waardeur gebruikers kan werk met dokumente wat "voorwerpe" bevat wat deur derdeparty-toepassings geskep of geredigeer word. Dit wil sê, OLE laat'n redigering aansoek om hierdie "voorwerpe" uitvoer na'n ander redigering aansoek en dan invoer hulle met bykomende inhoud.

In hierdie artikel sal ons praat oor die invoeging van'n OLE voorwerp en die opstel van sy eienskappe, asook die invoeging van'n aanlyn video in'n dokument.

## Voeg OLE Voorwerp In

As jy wil OLE Voorwerp, bel die [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) metode en slaag dit die **ProgId** eksplisiet met ander parameters.

Die volgende kode voorbeeld toon hoe om OLE Voorwerp in'n dokument in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Stel Lêernaam en Uitbreiding wanneer OLE Voorwerp Ingevoeg Word

OLE pakket is'n erfenis en "ongedokumenteerde" manier om ingebedde voorwerpe te stoor as'n OLE handelaar onbekend is.

Vroeë Windows weergawes soos Windows 3.1, 95, en 98 het'n Packager.exe aansoek wat gebruik kan word om enige tipe data in die dokument te insluit. Hierdie aansoek is nou uitgesluit van Windows, maar Microsoft Word en ander programme gebruik dit steeds om data in te bed as die OLE handelaar ontbreek of onbekend is. Die `OlePackage` klas laat gebruikers toegang tot die OLE Package eienskappe.

Die volgende kode voorbeeld toon hoe om die lêernaam, uitbreiding, en vertoon naam vir OLE Package:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Kry Toegang tot OLE Voorwerp Rou Data

Gebruikers kan toegang tot OLE voorwerp data met behulp van verskeie eienskappe en metodes van die `OleFormat` klas. Byvoorbeeld, dit is moontlik om die `OLE` voorwerp rou data of die pad en naam van'n bron lêer vir die gekoppelde OLE voorwerp te kry.

Die volgende kode voorbeeld toon hoe om OLE Voorwerp rou data te kry met behulp van die [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) metode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Voeg OLE Voorwerp as'n Ikoon in

OLE voorwerpe kan ook in dokumente as beelde ingevoeg word.

Die volgende kode voorbeeld toon hoe om OLE Voorwerp as'n ikoon in te voeg. Vir hierdie doel, die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klas blootstel die [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) metode:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Die volgende kode voorbeeld toon hoe om'n ingebedde OLE voorwerp as'n ikoon van'n stroom in die dokument te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Voeg By Aanlyn Video

Aanlyn video kan in Word-dokument ingevoeg word vanaf die *"Insert" > "Online Video"* - oortjie. U kan'n aanlynvideo in'n dokument op die huidige plek plaas deur die [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) - metode te skakel.

Die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klas stel vier oorladings van hierdie metode. Die eerste een werk met die gewildste video hulpbronne en neem die `URL` van die video as'n parameter. Byvoorbeeld, die eerste oorlading ondersteun eenvoudige invoeging van aanlyn video's van [YouTube](https://www.youtube.com/) en [Vimeo](https://vimeo.com/) hulpbronne.

Die volgende kode voorbeeld toon hoe om'n aanlyn video van *Vimeo* in'n dokument in te voeg:

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

Die tweede oorlading werk met alle ander video hulpbronne en neem ingebedde HTML kode as'n parameter. Die HTML - kode vir die inbedding van'n video kan wissel afhangende van die verskaffer, dus kontak die onderskeie verskaffer vir besonderhede.

{{% alert color="primary" %}}

Neem asseblief kennis dat die dokument outomaties geoptimaliseer sal word vir MS Word 2013 om video te wys.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n aanlyn video in'n dokument te voeg met behulp van sodanige HTML kode:

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
