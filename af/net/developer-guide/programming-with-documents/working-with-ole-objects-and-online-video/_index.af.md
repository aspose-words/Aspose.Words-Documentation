---
title: Werk met OLE Voorwerpe En Aanlyn Video in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk met OLE Voorwerpe En Aanlyn Video
linktitle: Werk met OLE Voorwerpe En Aanlyn Video
description: "Skep en verander OLE inbed in jou dokument met C#."
type: docs
weight: 360
url: /af/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) is'n tegnologie waardeur gebruikers kan werk met dokumente wat "voorwerpe" bevat wat deur derdeparty-toepassings geskep of geredigeer word. Dit wil sê, OLE laat'n redigering aansoek om hierdie "voorwerpe" uitvoer na'n ander redigering aansoek en dan invoer hulle met bykomende inhoud.

In hierdie artikel sal ons praat oor die invoeging van'n OLE voorwerp en die opstel van sy eienskappe, asook die invoeging van'n aanlyn video in'n dokument.

## Voeg OLE Voorwerp In

As jy wil OLE Voorwerp, bel die [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) metode en slaag dit die **ProgId** eksplisiet met ander parameters.

Die volgende kode voorbeeld toon hoe om OLE Voorwerp in'n dokument in te voeg:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Stel Lêernaam en Uitbreiding wanneer OLE Voorwerp Ingevoeg Word

OLE pakket is'n erfenis en "ongedokumenteerde" manier om ingebedde voorwerpe te stoor as'n OLE handelaar onbekend is.

Vroeë Windows weergawes soos Windows 3.1, 95, en 98 het'n Packager.exe aansoek wat gebruik kan word om enige tipe data in die dokument te insluit. Hierdie aansoek is nou uitgesluit van Windows, maar Microsoft Word en ander programme gebruik dit steeds om data in te bed as die OLE handelaar ontbreek of onbekend is. Die `OlePackage` klas laat gebruikers toegang tot die OLE Package eienskappe.

Die volgende kode voorbeeld toon hoe om die lêernaam, uitbreiding, en vertoon naam vir OLE Package:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Kry Toegang tot OLE Voorwerp Rou Data

Gebruikers kan toegang tot OLE voorwerp data met behulp van verskeie eienskappe en metodes van die `OleFormat` klas. Byvoorbeeld, dit is moontlik om die `OLE` voorwerp rou data of die pad en naam van'n bron lêer vir die gekoppelde OLE voorwerp te kry.

Die volgende kode voorbeeld toon hoe om OLE Voorwerp rou data te kry met behulp van die [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) metode:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Voeg OLE Voorwerp as'n Ikoon in

OLE voorwerpe kan ook in dokumente as beelde ingevoeg word.

Die volgende kode voorbeeld toon hoe om OLE Voorwerp as'n ikoon in te voeg. Vir hierdie doel, die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas blootstel die [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) metode:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Die volgende kode voorbeeld toon hoe om'n ingebedde OLE voorwerp as'n ikoon van'n stroom in die dokument te voeg:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Die maksimum grootte van die ikoon moet 32x32 wees vir die korrekte vertoning.

{{% /alert %}}

## Voeg By Aanlyn Video

Aanlyn video kan in Word-dokument ingevoeg word vanaf die *"Insert" > "Online Video"* - oortjie. U kan'n aanlynvideo in'n dokument op die huidige plek plaas deur die [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) - metode te skakel.

Die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas stel vier oorladings van hierdie metode. Die eerste een werk met die gewildste video hulpbronne en neem die `URL` van die video as'n parameter. Byvoorbeeld, die eerste oorlading ondersteun eenvoudige invoeging van aanlyn video's van [YouTube](https://www.youtube.com/) en [Vimeo](https://vimeo.com/) hulpbronne.

Die volgende kode voorbeeld toon hoe om'n aanlyn video van *Vimeo* in'n dokument in te voeg:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Die tweede oorlading werk met alle ander video hulpbronne en neem ingebedde HTML kode as'n parameter. Die HTML - kode vir die inbedding van'n video kan wissel afhangende van die verskaffer, dus kontak die onderskeie verskaffer vir besonderhede.

{{% alert color="primary" %}}

Neem asseblief kennis dat die dokument outomaties geoptimaliseer sal word vir MS Word 2013 om video te wys.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n aanlyn video in'n dokument te voeg met behulp van sodanige HTML kode:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}